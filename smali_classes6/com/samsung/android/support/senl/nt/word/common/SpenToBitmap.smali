.class public Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenToBitmap"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertSegment(Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;FF)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget p2, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    return-void
.end method

.method public static drawArrowHead(Landroid/graphics/Canvas;FFIFF)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p5, p1, p2}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p4, 0x40a00000    # 5.0f

    add-float v0, p1, p4

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr p2, v1

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr p1, p4

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p0, p3, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static drawLine(Lcom/samsung/android/sdk/pen/document/SpenObjectLine;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->TAG:Ljava/lang/String;

    const-string v1, "drawLine() rectF is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    float-to-int v5, v5

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v11, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLine;->getPath()Lcom/samsung/android/sdk/pen/document/SpenPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenPath;->getSegment()[Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    move-result-object v13

    invoke-static {v6, v13, v3, v4}, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->segmentToPath(Landroid/graphics/Path;[Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;FF)Landroid/graphics/Path;

    new-instance v3, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;-><init>()V

    new-instance v4, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getLineColorEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getLineStyleEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->getWidth()F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;->getSolidColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v6, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->getBeginArrowType()I

    move-result v0

    const/16 v2, 0xb4

    const/high16 v14, 0x42b40000    # 90.0f

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v17, 0x4076800000000000L    # 360.0

    const/16 v19, 0x1

    if-eqz v0, :cond_2

    aget-object v0, v13, v12

    iget v6, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    aget-object v0, v13, v12

    iget v7, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    aget-object v0, v13, v19

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    aget-object v5, v13, v19

    iget v5, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    sub-float/2addr v5, v7

    sub-float v8, v0, v6

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double v8, v8, v17

    div-double/2addr v8, v15

    double-to-float v5, v8

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;->getSolidColor()I

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->getWidth()F

    move-result v9

    sub-float/2addr v5, v14

    cmpl-float v0, v6, v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v12

    :goto_0
    int-to-float v0, v0

    add-float v10, v5, v0

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->drawArrowHead(Landroid/graphics/Canvas;FFIFF)V

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->getEndArrowType()I

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, v13

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v13, v0

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    array-length v5, v13

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v13, v5

    iget v5, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    array-length v6, v13

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v13, v6

    iget v6, v6, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    array-length v7, v13

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v13, v7

    iget v7, v7, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    sub-float v5, v7, v5

    sub-float v8, v6, v0

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double v8, v8, v17

    div-double/2addr v8, v15

    double-to-float v5, v8

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;->getSolidColor()I

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->getWidth()F

    move-result v9

    add-float/2addr v5, v14

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    move v12, v2

    :cond_3
    int-to-float v0, v12

    add-float v10, v5, v0

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->drawArrowHead(Landroid/graphics/Canvas;FFIFF)V

    :cond_4
    return-object v1
.end method

.method public static drawShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->TAG:Ljava/lang/String;

    const-string v0, "drawShape() rect shape is null"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance v7, Lcom/samsung/android/sdk/pen/document/SpenPath;

    invoke-direct {v7}, Lcom/samsung/android/sdk/pen/document/SpenPath;-><init>()V

    invoke-virtual {p0, v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getPath(Lcom/samsung/android/sdk/pen/document/SpenPath;)V

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenPath;->getSegment()[Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    move-result-object v7

    invoke-static {v6, v7, v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->segmentToPath(Landroid/graphics/Path;[Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;FF)Landroid/graphics/Path;

    new-instance v2, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;-><init>()V

    new-instance v3, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getLineColorEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getLineStyleEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->getWidth()F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;->getSolidColor()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v2, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getFillEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->getSolidColor()I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static segmentToPath(Landroid/graphics/Path;[Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;FF)Landroid/graphics/Path;
    .locals 14

    move-object v7, p0

    move-object v8, p1

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    array-length v10, v8

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v0, v8, v11

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-static {v0, v12, v13}, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->convertSegment(Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;FF)V

    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    invoke-virtual {v9, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v9, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    goto :goto_1

    :pswitch_2
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iget v4, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    const/4 v2, 0x1

    invoke-virtual {p0, v9, v1, v0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto :goto_1

    :pswitch_3
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iget v4, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iget v5, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget v6, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    :pswitch_4
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :pswitch_5
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :pswitch_6
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
