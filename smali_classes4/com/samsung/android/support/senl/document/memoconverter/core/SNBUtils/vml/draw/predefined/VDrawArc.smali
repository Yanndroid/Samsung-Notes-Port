.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawArc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;
    .locals 13

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getStyle()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v4, v2

    float-to-int v5, v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;->getWidth()F

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;->getHeight()F

    move-result v1

    const/high16 v9, 0x42a00000    # 80.0f

    add-float/2addr v6, v9

    add-float/2addr v1, v9

    div-float/2addr v2, v6

    div-float/2addr v3, v1

    const/high16 v9, 0x42200000    # 40.0f

    mul-float v10, v2, v9

    mul-float v11, v3, v9

    sub-float/2addr v6, v9

    mul-float/2addr v6, v2

    sub-float/2addr v1, v9

    mul-float/2addr v1, v3

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v9

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v10, v11, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;->getStartAngle()F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v10, v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;->getEndAngle()F

    move-result v11

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getFillColor()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getFill()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "#00000000"

    :goto_2
    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    float-to-int v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move v4, v11

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_4
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStrokeWeight()F

    move-result v1

    goto :goto_3

    :cond_5
    move v1, p2

    :goto_3
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v2, p3

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStrokeColor()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStroke()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_8

    cmpl-float v3, v1, v4

    if-ltz v3, :cond_9

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    float-to-int v1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move v4, v11

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method
