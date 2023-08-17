.class Lorg/apache/poi/java/awt/GradientPaintContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/PaintContext;


# static fields
.field public static cached:Ljava/lang/ref/WeakReference;

.field public static cachedModel:Lorg/apache/poi/java/awt/image/ColorModel;

.field public static xbgrmodel:Lorg/apache/poi/java/awt/image/ColorModel;

.field public static xrgbmodel:Lorg/apache/poi/java/awt/image/ColorModel;


# instance fields
.field public cyclic:Z

.field public dx:D

.field public dy:D

.field public interp:[I

.field public model:Lorg/apache/poi/java/awt/image/ColorModel;

.field public saved:Lorg/apache/poi/java/awt/image/Raster;

.field public x1:D

.field public y1:D


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v1, 0x18

    const/high16 v2, 0xff0000

    const v3, 0xff00

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIII)V

    sput-object v0, Lorg/apache/poi/java/awt/GradientPaintContext;->xrgbmodel:Lorg/apache/poi/java/awt/image/ColorModel;

    new-instance v0, Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIII)V

    sput-object v0, Lorg/apache/poi/java/awt/GradientPaintContext;->xbgrmodel:Lorg/apache/poi/java/awt/image/ColorModel;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/Color;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    new-instance v8, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-direct {v8, v6, v7, v4, v5}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lorg/apache/poi/java/awt/geom/AffineTransform;->createInverse()Lorg/apache/poi/java/awt/geom/AffineTransform;

    move-result-object v9

    invoke-virtual {v9, v3, v3}, Lorg/apache/poi/java/awt/geom/AffineTransform;->deltaTransform(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;)Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v9, v8, v8}, Lorg/apache/poi/java/awt/geom/AffineTransform;->deltaTransform(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;)Lorg/apache/poi/java/awt/geom/Point2D;
    :try_end_0
    .catch Lorg/apache/poi/java/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v3, v6, v7, v6, v7}, Lorg/apache/poi/java/awt/geom/Point2D;->setLocation(DD)V

    invoke-virtual {v8, v6, v7, v6, v7}, Lorg/apache/poi/java/awt/geom/Point2D;->setLocation(DD)V

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v13

    sub-double/2addr v11, v13

    mul-double v13, v9, v9

    mul-double v15, v11, v11

    add-double/2addr v13, v15

    const-wide/16 v15, 0x1

    cmpg-double v15, v13, v15

    if-gtz v15, :cond_0

    iput-wide v6, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dx:D

    :goto_1
    iput-wide v6, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dy:D

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v15

    mul-double/2addr v15, v9

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v17

    mul-double v17, v17, v11

    add-double v15, v15, v17

    div-double v6, v15, v13

    iput-wide v6, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dx:D

    invoke-virtual {v8}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v6

    mul-double/2addr v6, v9

    invoke-virtual {v8}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v8

    mul-double/2addr v8, v11

    add-double/2addr v6, v8

    div-double/2addr v6, v13

    iput-wide v6, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dy:D

    if-eqz v2, :cond_1

    iget-wide v8, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dx:D

    rem-double/2addr v8, v4

    iput-wide v8, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dx:D

    rem-double/2addr v6, v4

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dx:D

    const-wide/16 v8, 0x0

    cmpg-double v5, v3, v8

    if-gez v5, :cond_2

    neg-double v3, v3

    iput-wide v3, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dx:D

    neg-double v3, v6

    iput-wide v3, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->dy:D

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v4, p6

    goto :goto_3

    :cond_2
    :goto_2
    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    :goto_3
    const/4 v6, 0x0

    move-object/from16 v7, p4

    invoke-virtual {v7, v3, v6}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;)Lorg/apache/poi/java/awt/geom/Point2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->x1:D

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->y1:D

    iput-boolean v2, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->cyclic:Z

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Color;->getRGB()I

    move-result v3

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Color;->getRGB()I

    move-result v4

    shr-int/lit8 v5, v3, 0x18

    const/16 v6, 0xff

    and-int/2addr v5, v6

    shr-int/lit8 v7, v3, 0x10

    and-int/2addr v7, v6

    shr-int/lit8 v8, v3, 0x8

    and-int/2addr v8, v6

    and-int/2addr v3, v6

    shr-int/lit8 v9, v4, 0x18

    and-int/2addr v9, v6

    sub-int/2addr v9, v5

    shr-int/lit8 v10, v4, 0x10

    and-int/2addr v10, v6

    sub-int/2addr v10, v7

    shr-int/lit8 v11, v4, 0x8

    and-int/2addr v11, v6

    sub-int/2addr v11, v8

    and-int/2addr v4, v6

    sub-int/2addr v4, v3

    if-ne v5, v6, :cond_4

    if-nez v9, :cond_4

    sget-object v12, Lorg/apache/poi/java/awt/GradientPaintContext;->xrgbmodel:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object v12, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    instance-of v12, v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    if-eqz v12, :cond_5

    check-cast v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v12

    if-eqz v12, :cond_3

    if-ne v12, v6, :cond_5

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getRedMask()I

    move-result v12

    if-ne v12, v6, :cond_5

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getGreenMask()I

    move-result v6

    const v12, 0xff00

    if-ne v6, v12, :cond_5

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getBlueMask()I

    move-result v1

    const/high16 v6, 0xff0000

    if-ne v1, v6, :cond_5

    sget-object v1, Lorg/apache/poi/java/awt/GradientPaintContext;->xbgrmodel:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object v1, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    move/from16 v19, v7

    move v7, v3

    move/from16 v3, v19

    move/from16 v20, v10

    move v10, v4

    move/from16 v4, v20

    goto :goto_4

    :cond_4
    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    const/16 v1, 0x201

    goto :goto_5

    :cond_6
    const/16 v1, 0x101

    :goto_5
    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->interp:[I

    const/4 v1, 0x0

    :goto_6
    const/16 v6, 0x100

    if-gt v1, v6, :cond_8

    int-to-float v6, v1

    const/high16 v12, 0x43800000    # 256.0f

    div-float/2addr v6, v12

    int-to-float v12, v5

    int-to-float v13, v9

    mul-float/2addr v13, v6

    add-float/2addr v12, v13

    float-to-int v12, v12

    shl-int/lit8 v12, v12, 0x18

    int-to-float v13, v7

    int-to-float v14, v10

    mul-float/2addr v14, v6

    add-float/2addr v13, v14

    float-to-int v13, v13

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    int-to-float v13, v8

    int-to-float v14, v11

    mul-float/2addr v14, v6

    add-float/2addr v13, v14

    float-to-int v13, v13

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    int-to-float v13, v3

    int-to-float v14, v4

    mul-float/2addr v14, v6

    add-float/2addr v13, v14

    float-to-int v6, v13

    or-int/2addr v6, v12

    iget-object v12, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->interp:[I

    aput v6, v12, v1

    if-eqz v2, :cond_7

    rsub-int v13, v1, 0x200

    aput v6, v12, v13

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public static declared-synchronized getCachedRaster(Lorg/apache/poi/java/awt/image/ColorModel;II)Lorg/apache/poi/java/awt/image/Raster;
    .locals 3

    const-class v0, Lorg/apache/poi/java/awt/GradientPaintContext;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/GradientPaintContext;->cachedModel:Lorg/apache/poi/java/awt/image/ColorModel;

    if-ne p0, v1, :cond_0

    sget-object v1, Lorg/apache/poi/java/awt/GradientPaintContext;->cached:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/Raster;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v2

    if-lt v2, p2, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lorg/apache/poi/java/awt/GradientPaintContext;->cached:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/image/ColorModel;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized putCachedRaster(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/Raster;)V
    .locals 5

    const-class v0, Lorg/apache/poi/java/awt/GradientPaintContext;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/GradientPaintContext;->cached:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/Raster;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    if-lt v1, v4, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    mul-int/2addr v2, v1

    mul-int/2addr v3, v4

    if-lt v2, v3, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    sput-object p0, Lorg/apache/poi/java/awt/GradientPaintContext;->cachedModel:Lorg/apache/poi/java/awt/image/ColorModel;

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lorg/apache/poi/java/awt/GradientPaintContext;->cached:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clipFillRaster([IIIIIDDD)V
    .locals 13

    move-object v0, p0

    move v1, p2

    move/from16 v2, p5

    move-wide/from16 v3, p6

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_2

    iget-object v7, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->interp:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move/from16 v10, p4

    move-wide v8, v3

    :goto_1
    add-int/lit8 v11, v1, 0x1

    aput v7, p1, v1

    add-double v8, v8, p8

    add-int/lit8 v10, v10, -0x1

    if-lez v10, :cond_1

    cmpg-double v1, v8, v5

    if-lez v1, :cond_0

    goto :goto_2

    :cond_0
    move v1, v11

    goto :goto_1

    :cond_1
    :goto_2
    move v1, v11

    goto :goto_3

    :cond_2
    move/from16 v10, p4

    move-wide v8, v3

    :goto_3
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v8, v5

    if-gez v5, :cond_3

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_3

    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->interp:[I

    const-wide/high16 v11, 0x4070000000000000L    # 256.0

    mul-double/2addr v11, v8

    double-to-int v7, v11

    aget v6, v6, v7

    aput v6, p1, v1

    add-double v8, v8, p8

    move v1, v5

    goto :goto_3

    :cond_3
    if-lez v10, :cond_5

    iget-object v5, v0, Lorg/apache/poi/java/awt/GradientPaintContext;->interp:[I

    const/16 v6, 0x100

    aget v5, v5, v6

    :cond_4
    add-int/lit8 v6, v1, 0x1

    aput v5, p1, v1

    add-int/lit8 v10, v10, -0x1

    move v1, v6

    if-gtz v10, :cond_4

    :cond_5
    add-int v1, v1, p3

    add-double v3, v3, p10

    goto :goto_0

    :cond_6
    return-void
.end method

.method public cycleFillRaster([IIIIIDDD)V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    rem-double/2addr p6, v0

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr p6, v0

    double-to-int p6, p6

    shl-int/lit8 p6, p6, 0x1

    neg-double p7, p8

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    mul-double/2addr p7, v0

    double-to-int p7, p7

    neg-double p8, p10

    mul-double/2addr p8, v0

    double-to-int p8, p8

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    move p9, p4

    move p10, p6

    :goto_1
    if-lez p9, :cond_0

    add-int/lit8 p11, p2, 0x1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GradientPaintContext;->interp:[I

    ushr-int/lit8 v1, p10, 0x17

    aget v0, v0, v1

    aput v0, p1, p2

    add-int/2addr p10, p7

    add-int/lit8 p9, p9, -0x1

    move p2, p11

    goto :goto_1

    :cond_0
    add-int/2addr p2, p3

    add-int/2addr p6, p8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/GradientPaintContext;->saved:Lorg/apache/poi/java/awt/image/Raster;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/GradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-static {v1, v0}, Lorg/apache/poi/java/awt/GradientPaintContext;->putCachedRaster(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/Raster;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/GradientPaintContext;->saved:Lorg/apache/poi/java/awt/image/Raster;

    :cond_0
    return-void
.end method

.method public getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    return-object v0
.end method

.method public getRaster(IIII)Lorg/apache/poi/java/awt/image/Raster;
    .locals 15

    move-object v12, p0

    move/from16 v4, p3

    move/from16 v0, p1

    move/from16 v5, p4

    int-to-double v0, v0

    iget-wide v2, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->x1:D

    sub-double/2addr v0, v2

    iget-wide v2, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->dx:D

    mul-double/2addr v0, v2

    move/from16 v2, p2

    int-to-double v2, v2

    iget-wide v6, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->y1:D

    sub-double/2addr v2, v6

    iget-wide v6, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->dy:D

    mul-double/2addr v2, v6

    add-double v6, v0, v2

    iget-object v0, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->saved:Lorg/apache/poi/java/awt/image/Raster;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v1

    if-lt v1, v4, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v1

    if-ge v1, v5, :cond_1

    :cond_0
    iget-object v0, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-static {v0, v4, v5}, Lorg/apache/poi/java/awt/GradientPaintContext;->getCachedRaster(Lorg/apache/poi/java/awt/image/ColorModel;II)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->saved:Lorg/apache/poi/java/awt/image/Raster;

    :cond_1
    move-object v13, v0

    move-object v14, v13

    check-cast v14, Lorg/apache/poi/sun/awt/image/IntegerComponentRaster;

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lorg/apache/poi/sun/awt/image/IntegerComponentRaster;->getDataOffset(I)I

    move-result v2

    invoke-virtual {v14}, Lorg/apache/poi/sun/awt/image/IntegerComponentRaster;->getScanlineStride()I

    move-result v0

    sub-int v3, v0, v4

    invoke-virtual {v14}, Lorg/apache/poi/sun/awt/image/IntegerComponentRaster;->getDataStorage()[I

    move-result-object v1

    iget-boolean v0, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->cyclic:Z

    iget-wide v8, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->dx:D

    iget-wide v10, v12, Lorg/apache/poi/java/awt/GradientPaintContext;->dy:D

    if-eqz v0, :cond_2

    move-object v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v11}, Lorg/apache/poi/java/awt/GradientPaintContext;->cycleFillRaster([IIIIIDDD)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v11}, Lorg/apache/poi/java/awt/GradientPaintContext;->clipFillRaster([IIIIIDDD)V

    :goto_0
    invoke-virtual {v14}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-object v13
.end method
