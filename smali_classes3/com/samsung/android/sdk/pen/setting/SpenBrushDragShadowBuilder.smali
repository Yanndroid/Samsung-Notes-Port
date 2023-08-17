.class Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushDragShadowBuilder"


# instance fields
.field private mHeight:I

.field private mOffset:Landroid/graphics/Point;

.field private mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Point;I)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    int-to-double v6, v2

    mul-double v8, v6, v0

    int-to-double v2, v3

    mul-double v10, v2, v4

    add-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    mul-double/2addr v6, v4

    mul-double/2addr v2, v0

    add-double/2addr v6, v2

    double-to-int v0, v6

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mOffset:Landroid/graphics/Point;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->setCorner(F)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " SIZE["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] OFFSET="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ROTATE="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRotation()F

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " PIVOT["

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "] SCALE["

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenBrushDragShadowBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getOffset(Landroid/graphics/Point;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    int-to-float v4, v3

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    cmpl-float v8, v0, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    sub-float v8, v2, v7

    goto :goto_1

    :cond_1
    :goto_0
    sub-float v8, v1, v7

    :goto_1
    mul-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    int-to-float v10, v9

    if-eqz v5, :cond_3

    cmpl-float v5, v0, v6

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    sub-float/2addr v1, v7

    goto :goto_3

    :cond_3
    :goto_2
    sub-float v1, v2, v7

    :goto_3
    mul-float/2addr v10, v1

    div-float/2addr v10, v8

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v0

    int-to-float v0, v9

    sub-float/2addr v0, v10

    :goto_4
    float-to-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_5

    :cond_4
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    int-to-float v0, v3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mOffset:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v10

    goto :goto_4

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOffset() [AFTER] pointOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushDragShadowBuilder"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mRoundClipHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->applyRoundClip(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDrawShadow() canvas.rotate("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SpenBrushDragShadowBuilder"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDrawShadow() canvas.translate("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mWidth:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragShadowBuilder;->getOffset(Landroid/graphics/Point;)V

    return-void
.end method
