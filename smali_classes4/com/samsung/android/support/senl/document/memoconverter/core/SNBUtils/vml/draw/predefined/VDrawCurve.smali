.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawCurve;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;
    .locals 17

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getStyle()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v6, v4

    float-to-int v7, v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;->getWidth()F

    move-result v8

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonStyle;->getHeight()F

    move-result v2

    const/high16 v9, 0x42a00000    # 80.0f

    add-float/2addr v8, v9

    add-float/2addr v2, v9

    div-float/2addr v4, v8

    div-float/2addr v5, v2

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->getFrom()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v6

    const/high16 v7, 0x42200000    # 40.0f

    add-float/2addr v6, v7

    mul-float/2addr v6, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->getFrom()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v8

    add-float/2addr v8, v7

    mul-float/2addr v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->getTo()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v9

    add-float/2addr v9, v7

    mul-float v15, v9, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->getTo()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v9

    add-float/2addr v9, v7

    mul-float v16, v9, v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v9

    add-float/2addr v9, v7

    mul-float v11, v9, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v9

    add-float/2addr v9, v7

    mul-float v12, v9, v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v9

    add-float/2addr v9, v7

    mul-float v13, v9, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v4

    add-float/2addr v4, v7

    mul-float v14, v4, v5

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v10, v4

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getFillColor()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getFill()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "#00000000"

    :goto_2
    invoke-static {v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    float-to-int v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStrokeWeight()F

    move-result v5

    goto :goto_3

    :cond_5
    move/from16 v5, p2

    :goto_3
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v6, p3

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStrokeColor()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStroke()Z

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v3, :cond_8

    cmpl-float v3, v5, v7

    if-ltz v3, :cond_9

    :cond_8
    if-eqz v6, :cond_9

    invoke-static {v6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method
