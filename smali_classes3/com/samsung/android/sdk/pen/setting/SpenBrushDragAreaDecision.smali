.class public Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AREA_POINT_SIZE:I = 0x4


# instance fields
.field private mEnd:[Landroid/graphics/Point;

.field private mIsRTL:Z

.field private mParent:Landroid/view/View;

.field private mStart:[Landroid/graphics/Point;

.field private mTop:[Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    new-array v2, v0, [Landroid/graphics/Point;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->initPoints([Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->initPoints([Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->initPoints([Landroid/graphics/Point;)V

    return-void
.end method

.method private getParentRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private initPoints([Landroid/graphics/Point;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeLandscapeArea(Landroid/graphics/Rect;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v1

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    aget-object v8, v8, v5

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v2, v2, v3

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v7, v2, v5

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v7, v2, v6

    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v1

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v2, v2, v3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v3, v7

    sub-int/2addr v3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v0, p1, v6

    aget-object v1, p1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object p1, p1, v5

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private makePortraitArea(Landroid/graphics/Rect;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e6147ae    # 0.22f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    const/4 v5, 0x3

    aget-object v6, v1, v5

    aget-object v7, v1, v3

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v1, v1, v2

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v0

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v6, v1, v4

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v1, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    aget-object v6, v1, v5

    aget-object v7, v1, v3

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v1, v1, v2

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v4

    add-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v0

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v0, v0, v3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v1, v6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v1, v0, v4

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    aget-object v0, p1, v5

    aget-object v1, p1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object p1, p1, v4

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mParent:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    return-void
.end method

.method public getArea(I)[Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mTop:[Landroid/graphics/Point;

    return-object p1

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mIsRTL:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    :goto_0
    return-object p1

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mIsRTL:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mStart:[Landroid/graphics/Point;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mEnd:[Landroid/graphics/Point;

    :goto_1
    return-object p1
.end method

.method public makeDecision()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mIsRTL:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mParent:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->getParentRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->makePortraitArea(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->makeLandscapeArea(Landroid/graphics/Rect;)V

    :goto_0
    return v2
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaDecision;->mParent:Landroid/view/View;

    return-void
.end method
