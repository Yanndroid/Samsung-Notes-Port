.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawRoundRect;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;
    .locals 11

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getStyle()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int v5, v4

    float-to-int v6, p1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;->getWidth()F

    move-result v7

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;->getHeight()F

    move-result v2

    const/high16 v8, 0x42a00000    # 80.0f

    add-float/2addr v7, v8

    add-float/2addr v2, v8

    div-float/2addr v4, v7

    div-float/2addr p1, v2

    const/high16 v8, 0x42200000    # 40.0f

    mul-float v9, v4, v8

    mul-float v10, p1, v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    sub-float/2addr v2, v8

    mul-float/2addr v2, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9, v10, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;->getArcUnit()C

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;->getArcSize()F

    move-result p0

    const/16 v5, 0x66

    if-ne v2, v5, :cond_0

    const/high16 v2, 0x47800000    # 65536.0f

    :goto_0
    div-float/2addr p0, v2

    goto :goto_1

    :cond_0
    const/16 v5, 0x25

    if-ne v2, v5, :cond_1

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_1
    :goto_1
    iget v2, v4, Landroid/graphics/RectF;->right:F

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    cmpl-float v6, v2, v5

    const/high16 v7, 0x40000000    # 2.0f

    if-lez v6, :cond_2

    div-float/2addr v5, v7

    mul-float/2addr v5, p0

    goto :goto_2

    :cond_2
    div-float/2addr v2, v7

    mul-float v5, v2, p0

    :goto_2
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, p4

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getFillColor()Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getFill()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_7

    :cond_5
    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    const-string p0, "#00000000"

    :goto_5
    invoke-static {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v4, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    const/4 p0, 0x0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStrokeWeight()F

    move-result p2

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStrokeColor()Ljava/lang/String;

    move-result-object p3

    :cond_a
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStroke()Z

    move-result p0

    const/high16 p4, 0x3f800000    # 1.0f

    if-nez p0, :cond_b

    cmpl-float p0, p2, p4

    if-ltz p0, :cond_c

    :cond_b
    if-eqz p3, :cond_c

    invoke-static {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v4, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method
