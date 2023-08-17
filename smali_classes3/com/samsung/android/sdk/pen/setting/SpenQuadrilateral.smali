.class public final Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLeftAlpha:F

.field private mLeftSlope:F

.field private mRect:Landroid/graphics/Rect;

.field private mRightAlpha:F

.field private mRightSlope:F


# direct methods
.method public varargs constructor <init>([Landroid/graphics/Point;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object p1, p1, v3

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->getSlope(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mLeftSlope:F

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->getAlpha(FLandroid/graphics/Point;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mLeftAlpha:F

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->getSlope(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mRightSlope:F

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->getAlpha(FLandroid/graphics/Point;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mRightAlpha:F

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method private comparePosition(FFLandroid/graphics/Point;)I
    .locals 1

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    iget p2, p3, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getAlpha(FLandroid/graphics/Point;)F
    .locals 1

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    neg-float p1, p1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getSlope(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 2

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    sub-int/2addr v1, v0

    int-to-float p2, v1

    div-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public getOverlapArea(Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->isRectangle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    return p1
.end method

.method public isContains(Landroid/graphics/Point;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->isRectangle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mLeftSlope:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mLeftAlpha:F

    invoke-direct {p0, v0, v2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->comparePosition(FFLandroid/graphics/Point;)I

    move-result v0

    if-gez v0, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mRightSlope:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mRightAlpha:F

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->comparePosition(FFLandroid/graphics/Point;)I

    move-result p1

    if-lez p1, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isRectangle()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mLeftSlope:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->mRightSlope:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
