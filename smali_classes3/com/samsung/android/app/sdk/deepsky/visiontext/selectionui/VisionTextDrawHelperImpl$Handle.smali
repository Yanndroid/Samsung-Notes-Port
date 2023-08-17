.class Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# static fields
.field public static final drawableResizeRatio:I = 0x3


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public drawableLeft:Landroid/graphics/drawable/Drawable;

.field public drawableReverseLeft:Landroid/graphics/drawable/Drawable;

.field public drawableReverseRight:Landroid/graphics/drawable/Drawable;

.field public drawableRight:Landroid/graphics/drawable/Drawable;

.field public final isStartHandle:Z

.field public mDrawableHeight:I

.field public mDrawablePinPointOffset:I

.field public mDrawableWidth:I

.field public mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

.field public mImageHeight:I

.field public mImageRatio:F

.field public mImageWidth:I

.field public mPoly:[Landroid/graphics/Point;

.field public mTouchAreaMarginBottom:I

.field public mTouchAreaMarginEnd:I

.field public mTouchAreaMarginStart:I

.field public mTouchAreaMarginTop:I

.field public mView:Landroid/view/View;

.field public rect:Landroid/graphics/Rect;

.field public rectLeft:Landroid/graphics/Rect;

.field public rectRight:Landroid/graphics/Rect;

.field public touchableAreaRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->touchableAreaRect:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mImageRatio:F

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    return-void
.end method


# virtual methods
.method public applyScaledRect([Landroid/graphics/Point;)V
    .locals 14

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$000(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mDrawableWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-static {v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$000(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mDrawableHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-static {v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$000(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mDrawablePinPointOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-static {v3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$000(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mTouchAreaMarginTop:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-static {v4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$000(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mTouchAreaMarginBottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-static {v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$000(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mTouchAreaMarginStart:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-static {v6}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$000(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mTouchAreaMarginEnd:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-static {v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$000(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget-boolean v7, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectLeft:Landroid/graphics/Rect;

    aget-object v11, p1, v9

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v0

    add-int/2addr v11, v2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v0

    iput v11, v10, Landroid/graphics/Rect;->right:I

    aget-object v11, p1, v9

    iget v11, v11, Landroid/graphics/Point;->y:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    aget-object v12, p1, v9

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v1

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectRight:Landroid/graphics/Rect;

    aget-object v13, p1, v9

    iget v13, v13, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectRight:Landroid/graphics/Rect;

    aget-object v11, p1, v8

    iget v11, v11, Landroid/graphics/Point;->x:I

    mul-int/lit8 v12, v2, -0x1

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v0

    iput v11, v10, Landroid/graphics/Rect;->right:I

    aget-object v11, p1, v8

    iget v11, v11, Landroid/graphics/Point;->y:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    aget-object v12, p1, v8

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v1

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectLeft:Landroid/graphics/Rect;

    aget-object v13, p1, v8

    iget v13, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v0

    :goto_0
    add-int/2addr v13, v2

    iput v13, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v0

    iput v13, v10, Landroid/graphics/Rect;->right:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectLeft:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectRight:Landroid/graphics/Rect;

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableRight:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$100()Z

    move-result v2

    const-string v7, " rect.right:"

    const-string v10, "VisionTextDrawHelperImpl"

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Handle.updateRect() isStartHandle:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " rect.left:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rect.top:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rect.bottom:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mImageWidth:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mImageWidth:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mImageHeight:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mImageHeight:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mImageRatio:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mImageRatio:F

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " viewRect="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-ge v11, v12, :cond_4

    iget-boolean v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    if-nez v11, :cond_5

    :cond_4
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    if-le v2, v11, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    if-nez v2, :cond_8

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    if-nez v2, :cond_6

    iget-object v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectLeft:Landroid/graphics/Rect;

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rectRight:Landroid/graphics/Rect;

    :goto_3
    iput-object v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableRight:Landroid/graphics/drawable/Drawable;

    :goto_4
    iput-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$100()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "swapped left / right handle drawable rect.left:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-array v2, v8, [I

    iget-object v7, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v7, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x1

    aget v12, v2, v11

    add-int/2addr v8, v12

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v12, :cond_a

    aget-object v8, p1, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v1

    iput v8, v7, Landroid/graphics/Rect;->top:I

    aget-object p1, p1, v9

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v7, Landroid/graphics/Rect;->bottom:I

    iget-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableReverseRight:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableReverseLeft:Landroid/graphics/drawable/Drawable;

    :goto_5
    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$100()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "swapped top / bottom handle drawable rect.bottom:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " viewRect.bottom:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " offsetX="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " offsetY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v11

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->touchableAreaRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v6

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->touchableAreaRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v6

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    :goto_6
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_c
    return-void
.end method

.method public contains(II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->touchableAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mPoly:[Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->applyScaledRect([Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->touchableAreaRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)V
    .locals 2

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$drawable;->sem_text_select_handle_left_material:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableLeft:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$drawable;->sem_text_select_handle_right_material:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableRight:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$drawable;->sem_text_select_reverse_handle_left_material:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableReverseLeft:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$drawable;->sem_text_select_reverse_handle_right_material:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableReverseRight:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->isStartHandle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawableRight:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mDrawableWidth:I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mDrawableHeight:I

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p1, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mDrawablePinPointOffset:I

    sget p1, Lcom/samsung/android/app/sdk/deepsky/R$dimen;->visiontext_handle_touch_margin_top:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mTouchAreaMarginTop:I

    sget p1, Lcom/samsung/android/app/sdk/deepsky/R$dimen;->visiontext_handle_touch_margin_bottom:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mTouchAreaMarginBottom:I

    sget p1, Lcom/samsung/android/app/sdk/deepsky/R$dimen;->visiontext_handle_touch_margin_start:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mTouchAreaMarginStart:I

    sget p1, Lcom/samsung/android/app/sdk/deepsky/R$dimen;->visiontext_handle_touch_margin_end:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mTouchAreaMarginEnd:I

    return-void
.end method

.method public isNotEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setEmpty()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->touchableAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public setImageInfo(FIILandroid/view/View;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mImageRatio:F

    iput p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mImageWidth:I

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mImageHeight:I

    iput-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mView:Landroid/view/View;

    return-void
.end method

.method public updateRect([Landroid/graphics/Point;)V
    .locals 1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->mPoly:[Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$Handle;->applyScaledRect([Landroid/graphics/Point;)V

    return-void
.end method
