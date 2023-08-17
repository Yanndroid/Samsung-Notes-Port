.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawLinePath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mEx:F

.field public static mEy:F

.field public static mSx:F

.field public static mSy:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPath(Landroid/graphics/RectF;FFZZ)Landroid/graphics/Path;
    .locals 10

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    sub-float v9, v0, p1

    sub-float/2addr p0, p1

    invoke-virtual {v8, p1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v8, v9, p0}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p3, :cond_0

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v7, 0x1

    move-object v0, v8

    move v1, v9

    move v2, p0

    move v3, p1

    move v4, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawLinePath;->drawFixedSizeArrow(Landroid/graphics/Path;FFFFFFZ)V

    :cond_0
    if-eqz p4, :cond_1

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p1

    move v3, v9

    move v4, p0

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawLinePath;->drawFixedSizeArrow(Landroid/graphics/Path;FFFFFFZ)V

    :cond_1
    return-object v8
.end method

.method public static drawFixedSizeArrow(Landroid/graphics/Path;FFFFFFZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, p6

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v4, v5

    sub-float v5, v1, p1

    sub-float v6, v2, p2

    float-to-double v6, v6

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    float-to-double v9, v1

    float-to-double v11, v4

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    sub-double v13, v9, v13

    double-to-float v4, v13

    float-to-double v13, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    sub-double v7, v13, v7

    double-to-float v7, v7

    neg-float v3, v3

    move v8, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v11

    sub-double/2addr v9, v3

    double-to-float v3, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v11, v4

    sub-double/2addr v13, v11

    double-to-float v4, v13

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v8

    invoke-virtual {p0, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public static drawVariableSizeArrow(Landroid/graphics/Path;FFFFFFZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    cmpl-float v3, p5, v3

    if-nez v3, :cond_1

    const/high16 v3, 0x41f00000    # 30.0f

    goto :goto_0

    :cond_1
    move/from16 v3, p5

    :goto_0
    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    double-to-float v3, v3

    sub-float v4, v1, p1

    float-to-double v4, v4

    const-wide v6, -0x4046666666666666L    # -0.1

    mul-double/2addr v4, v6

    double-to-float v4, v4

    sub-float v5, v2, p2

    float-to-double v8, v5

    mul-double/2addr v8, v6

    double-to-float v5, v8

    float-to-double v6, v1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v10, v2

    add-double/2addr v10, v8

    double-to-float v7, v10

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    float-to-double v3, v4

    mul-double/2addr v12, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    float-to-double v8, v5

    mul-double/2addr v14, v8

    sub-double/2addr v12, v14

    double-to-float v5, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float/2addr v5, v1

    float-to-double v13, v5

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    double-to-float v5, v13

    add-float/2addr v12, v2

    float-to-double v12, v12

    add-double/2addr v12, v15

    double-to-float v12, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v8

    add-double/2addr v13, v15

    double-to-float v13, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    mul-double/2addr v14, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    add-double/2addr v14, v3

    double-to-float v3, v14

    add-float/2addr v13, v1

    float-to-double v8, v13

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-float v1, v8

    add-float/2addr v3, v2

    float-to-double v2, v3

    add-double/2addr v2, v10

    double-to-float v2, v2

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v5, v12}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public static makeLineBitmap(FFFFFFIZZ)Landroid/graphics/Bitmap;
    .locals 15

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p4

    sub-float v1, p0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    sub-float v2, p1, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    cmpl-float v2, p0, p2

    if-nez v2, :cond_1

    cmpg-float v2, p1, p3

    if-gez v2, :cond_0

    int-to-float v2, v0

    sub-float v2, v2, p4

    move/from16 v3, p4

    move v4, v3

    move v13, v2

    move v2, v4

    goto :goto_2

    :cond_0
    int-to-float v2, v0

    sub-float v2, v2, p4

    move/from16 v3, p4

    move v13, v3

    move v4, v2

    :goto_0
    move v2, v13

    goto :goto_2

    :cond_1
    cmpl-float v2, p1, p3

    if-nez v2, :cond_3

    cmpg-float v2, p0, p2

    if-gez v2, :cond_2

    int-to-float v2, v1

    sub-float v2, v2, p4

    move/from16 v4, p4

    move v13, v4

    move v3, v2

    goto :goto_0

    :cond_2
    int-to-float v2, v1

    sub-float v2, v2, p4

    move/from16 v3, p4

    move v4, v3

    move v13, v4

    goto :goto_2

    :cond_3
    cmpg-float v2, p0, p2

    if-gez v2, :cond_4

    int-to-float v2, v1

    sub-float v2, v2, p4

    move v3, v2

    move/from16 v2, p4

    goto :goto_1

    :cond_4
    int-to-float v2, v1

    sub-float v2, v2, p4

    move/from16 v3, p4

    :goto_1
    cmpg-float v4, p1, p3

    if-gez v4, :cond_5

    int-to-float v4, v0

    sub-float v4, v4, p4

    move v13, v4

    move/from16 v4, p4

    goto :goto_2

    :cond_5
    int-to-float v4, v0

    sub-float v4, v4, p4

    move/from16 v13, p4

    :goto_2
    new-instance v14, Landroid/graphics/Picture;

    invoke-direct {v14}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1, v3, v13}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p7, :cond_6

    const/high16 v10, 0x41f00000    # 30.0f

    const/4 v12, 0x1

    move-object v5, v1

    move v6, v3

    move v7, v13

    move v8, v2

    move v9, v4

    move/from16 v11, p5

    invoke-static/range {v5 .. v12}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawLinePath;->drawFixedSizeArrow(Landroid/graphics/Path;FFFFFFZ)V

    :cond_6
    if-eqz p8, :cond_7

    const/high16 v10, 0x41f00000    # 30.0f

    const/4 v12, 0x0

    move-object v5, v1

    move v6, v2

    move v7, v4

    move v8, v3

    move v9, v13

    move/from16 v11, p5

    invoke-static/range {v5 .. v12}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawLinePath;->drawFixedSizeArrow(Landroid/graphics/Path;FFFFFFZ)V

    :cond_7
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    move/from16 v3, p6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v14}, Landroid/graphics/Picture;->endRecording()V

    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v0, v14}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilBitmap;->toBitmap(Landroid/graphics/drawable/PictureDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
