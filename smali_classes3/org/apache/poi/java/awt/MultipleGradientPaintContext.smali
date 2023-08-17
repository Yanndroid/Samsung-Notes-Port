.class abstract Lorg/apache/poi/java/awt/MultipleGradientPaintContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/PaintContext;


# static fields
.field public static final GRADIENT_SIZE:I = 0x100

.field public static final GRADIENT_SIZE_INDEX:I = 0xff

.field private static final LinearRGBtoSRGB:[I

.field private static final MAX_GRADIENT_ARRAY_SIZE:I = 0x1388

.field private static final SRGBtoLinearRGB:[I

.field public static cached:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/java/awt/image/Raster;",
            ">;"
        }
    .end annotation
.end field

.field public static cachedModel:Lorg/apache/poi/java/awt/image/ColorModel;

.field private static xrgbmodel:Lorg/apache/poi/java/awt/image/ColorModel;


# instance fields
.field public a00:F

.field public a01:F

.field public a02:F

.field public a10:F

.field public a11:F

.field public a12:F

.field public colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

.field public cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

.field public fastGradientArraySize:I

.field private fractions:[F

.field public gradient:[I

.field private gradients:[[I

.field public isSimpleLookup:Z

.field public model:Lorg/apache/poi/java/awt/image/ColorModel;

.field private normalizedIntervals:[F

.field public saved:Lorg/apache/poi/java/awt/image/Raster;

.field private transparencyTest:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v1, 0x18

    const/high16 v2, 0xff0000

    const v3, 0xff00

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIII)V

    sput-object v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->xrgbmodel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->SRGBtoLinearRGB:[I

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->LinearRGBtoSRGB:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->SRGBtoLinearRGB:[I

    invoke-static {v1}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->convertSRGBtoLinearRGB(I)I

    move-result v3

    aput v3, v2, v1

    sget-object v2, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->LinearRGBtoSRGB:[I

    invoke-static {v1}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->convertLinearRGBtoSRGB(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/MultipleGradientPaint;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "Device bounds cannot be null"

    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "User bounds cannot be null"

    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "Transform cannot be null"

    invoke-static {p5, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "RenderingHints cannot be null"

    invoke-static {p6, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p5}, Lorg/apache/poi/java/awt/geom/AffineTransform;->invert()V
    :try_end_0
    .catch Lorg/apache/poi/java/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p5, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {p5}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    :goto_0
    const/4 p2, 0x6

    new-array p2, p2, [D

    invoke-virtual {p5, p2}, Lorg/apache/poi/java/awt/geom/AffineTransform;->getMatrix([D)V

    const/4 p3, 0x0

    aget-wide p3, p2, p3

    double-to-float p3, p3

    iput p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a00:F

    const/4 p3, 0x1

    aget-wide p3, p2, p3

    double-to-float p3, p3

    iput p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a10:F

    const/4 p3, 0x2

    aget-wide p3, p2, p3

    double-to-float p3, p3

    iput p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a01:F

    const/4 p3, 0x3

    aget-wide p3, p2, p3

    double-to-float p3, p3

    iput p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a11:F

    const/4 p3, 0x4

    aget-wide p3, p2, p3

    double-to-float p3, p3

    iput p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a02:F

    const/4 p3, 0x5

    aget-wide p3, p2, p3

    double-to-float p2, p3

    iput p2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a12:F

    iput-object p9, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    iput-object p10, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    iput-object p7, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fractions:[F

    iget-object p2, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->gradient:Ljava/lang/ref/SoftReference;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    goto :goto_1

    :cond_0
    move-object p2, p3

    :goto_1
    iget-object p4, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->gradients:Ljava/lang/ref/SoftReference;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[I

    :cond_1
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    invoke-direct {p0, p8}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->calculateLookupData([Lorg/apache/poi/java/awt/Color;)V

    iget-object p2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object p2, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object p2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->normalizedIntervals:[F

    iput-object p2, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->normalizedIntervals:[F

    iget-boolean p2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->isSimpleLookup:Z

    iput-boolean p2, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->isSimpleLookup:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fastGradientArraySize:I

    iput p2, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->fastGradientArraySize:I

    new-instance p2, Ljava/lang/ref/SoftReference;

    iget-object p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    invoke-direct {p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->gradient:Ljava/lang/ref/SoftReference;

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/ref/SoftReference;

    iget-object p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    invoke-direct {p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->gradients:Ljava/lang/ref/SoftReference;

    goto :goto_2

    :cond_3
    iget-object p4, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object p4, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object p4, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->normalizedIntervals:[F

    iput-object p4, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->normalizedIntervals:[F

    iget-boolean p4, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->isSimpleLookup:Z

    iput-boolean p4, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->isSimpleLookup:Z

    iput-object p2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    iget p1, p1, Lorg/apache/poi/java/awt/MultipleGradientPaint;->fastGradientArraySize:I

    iput p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fastGradientArraySize:I

    iput-object p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    :goto_2
    return-void
.end method

.method private calculateLookupData([Lorg/apache/poi/java/awt/Color;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->LINEAR_RGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/java/awt/Color;

    move v1, v3

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Color;->getRGB()I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    sget-object v6, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->SRGBtoLinearRGB:[I

    shr-int/lit8 v7, v4, 0x10

    and-int/2addr v7, v2

    aget v7, v6, v7

    shr-int/lit8 v8, v4, 0x8

    and-int/2addr v8, v2

    aget v8, v6, v8

    and-int/2addr v4, v2

    aget v4, v6, v4

    new-instance v6, Lorg/apache/poi/java/awt/Color;

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/apache/poi/java/awt/Color;-><init>(IIII)V

    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fractions:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->normalizedIntervals:[F

    move v0, v3

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->normalizedIntervals:[F

    array-length v4, v1

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fractions:[F

    add-int/lit8 v5, v0, 0x1

    aget v6, v4, v5

    aget v4, v4, v0

    sub-float/2addr v6, v4

    aput v6, v1, v0

    move v0, v5

    goto :goto_1

    :cond_2
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->transparencyTest:I

    array-length v0, v1

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v3

    :goto_2
    iget-object v4, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->normalizedIntervals:[F

    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget v5, v4, v1

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    aget v0, v4, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_3
    iget-object v4, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->normalizedIntervals:[F

    array-length v5, v4

    if-ge v3, v5, :cond_5

    int-to-float v1, v1

    aget v4, v4, v3

    div-float/2addr v4, v0

    const/high16 v5, 0x43800000    # 256.0f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/16 v3, 0x1388

    if-le v1, v3, :cond_6

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->calculateMultipleArrayGradient([Lorg/apache/poi/java/awt/Color;)V

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->calculateSingleArrayGradient([Lorg/apache/poi/java/awt/Color;F)V

    :goto_4
    iget p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->transparencyTest:I

    ushr-int/lit8 p1, p1, 0x18

    if-ne p1, v2, :cond_7

    sget-object p1, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->xrgbmodel:Lorg/apache/poi/java/awt/image/ColorModel;

    goto :goto_5

    :cond_7
    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    return-void
.end method

.method private calculateMultipleArrayGradient([Lorg/apache/poi/java/awt/Color;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->isSimpleLookup:Z

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/16 v3, 0x100

    new-array v3, v3, [I

    aput-object v3, v2, v1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Color;->getRGB()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Color;->getRGB()I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    aget-object v1, v5, v1

    invoke-direct {p0, v2, v4, v1}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->interpolate(II[I)V

    iget v1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->transparencyTest:I

    and-int/2addr v1, v2

    and-int/2addr v1, v4

    iput v1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->transparencyTest:I

    move v1, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->LINEAR_RGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    if-ne p1, v1, :cond_2

    move p1, v0

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    array-length v1, v1

    if-ge p1, v1, :cond_2

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    aget-object v3, v2, p1

    array-length v3, v3

    if-ge v1, v3, :cond_1

    aget-object v3, v2, p1

    aget-object v2, v2, p1

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->convertEntireColorLinearRGBtoSRGB(I)I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private calculateSingleArrayGradient([Lorg/apache/poi/java/awt/Color;F)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->isSimpleLookup:Z

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->normalizedIntervals:[F

    aget v5, v5, v2

    div-float/2addr v5, p2

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v3, v5

    new-array v5, v5, [I

    aput-object v5, v4, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Color;->getRGB()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    aget-object v6, p1, v5

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/Color;->getRGB()I

    move-result v6

    iget-object v7, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    aget-object v2, v7, v2

    invoke-direct {p0, v4, v6, v2}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->interpolate(II[I)V

    iget v2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->transparencyTest:I

    and-int/2addr v2, v4

    and-int/2addr v2, v6

    iput v2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->transparencyTest:I

    move v2, v5

    goto :goto_0

    :cond_0
    new-array p2, v3, [I

    iput-object p2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    move p2, v1

    move v2, p2

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    array-length v4, v3

    if-ge p2, v4, :cond_1

    aget-object v4, v3, p2

    iget-object v5, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    aget-object v3, v3, p2

    array-length v3, v3

    invoke-static {v4, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    aget-object v3, v3, p2

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    array-length v2, p2

    sub-int/2addr v2, v0

    array-length v3, p1

    sub-int/2addr v3, v0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getRGB()I

    move-result p1

    aput p1, p2, v2

    iget-object p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    sget-object p2, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->LINEAR_RGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    if-ne p1, p2, :cond_2

    :goto_2
    iget-object p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    array-length p2, p1

    if-ge v1, p2, :cond_2

    aget p2, p1, v1

    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->convertEntireColorLinearRGBtoSRGB(I)I

    move-result p2

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    array-length p1, p1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fastGradientArraySize:I

    return-void
.end method

.method private convertEntireColorLinearRGBtoSRGB(I)I
    .locals 4

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    sget-object v3, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->LinearRGBtoSRGB:[I

    aget v1, v3, v1

    aget v2, v3, v2

    aget p1, v3, p1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1
.end method

.method private static convertLinearRGBtoSRGB(I)I
    .locals 5

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    float-to-double v1, p0

    const-wide v3, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_0

    const v1, 0x414eb852    # 12.92f

    mul-float/2addr p0, v1

    goto :goto_0

    :cond_0
    const p0, 0x3f870a3d    # 1.055f

    const-wide v3, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p0

    const p0, 0x3d6147ae    # 0.055f

    sub-float p0, v1, p0

    :goto_0
    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static convertSRGBtoLinearRGB(I)I
    .locals 5

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    const v1, 0x3d25aee6    # 0.04045f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    const v1, 0x414eb852    # 12.92f

    div-float/2addr p0, v1

    goto :goto_0

    :cond_0
    float-to-double v1, p0

    const-wide v3, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v1, v3

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v1, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    :goto_0
    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static declared-synchronized getCachedRaster(Lorg/apache/poi/java/awt/image/ColorModel;II)Lorg/apache/poi/java/awt/image/Raster;
    .locals 3

    const-class v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->cachedModel:Lorg/apache/poi/java/awt/image/ColorModel;

    if-ne p0, v1, :cond_0

    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->cached:Ljava/lang/ref/WeakReference;

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

    sput-object p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->cached:Ljava/lang/ref/WeakReference;
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

.method private interpolate(II[I)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    array-length v3, v2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v7, v3

    shr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    sub-int/2addr v8, v5

    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    sub-int/2addr v9, v6

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, v0

    const/4 v10, 0x0

    :goto_0
    array-length v11, v2

    if-ge v10, v11, :cond_0

    int-to-float v11, v3

    mul-int v12, v10, v7

    int-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v11, v11

    shl-int/lit8 v11, v11, 0x18

    int-to-float v12, v5

    mul-int v15, v10, v8

    int-to-float v15, v15

    mul-float/2addr v15, v4

    add-float/2addr v12, v15

    move/from16 p1, v7

    move v15, v8

    float-to-double v7, v12

    add-double/2addr v7, v13

    double-to-int v7, v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v11

    int-to-float v8, v6

    mul-int v11, v10, v9

    int-to-float v11, v11

    mul-float/2addr v11, v4

    add-float/2addr v8, v11

    float-to-double v11, v8

    add-double/2addr v11, v13

    double-to-int v8, v11

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-float v8, v0

    mul-int v11, v10, v1

    int-to-float v11, v11

    mul-float/2addr v11, v4

    add-float/2addr v8, v11

    float-to-double v11, v8

    add-double/2addr v11, v13

    double-to-int v8, v11

    or-int/2addr v7, v8

    aput v7, v2, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p1

    move v8, v15

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static declared-synchronized putCachedRaster(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/Raster;)V
    .locals 5

    const-class v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->cached:Ljava/lang/ref/WeakReference;

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
    sput-object p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->cachedModel:Lorg/apache/poi/java/awt/image/ColorModel;

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->cached:Ljava/lang/ref/WeakReference;
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
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->saved:Lorg/apache/poi/java/awt/image/Raster;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-static {v1, v0}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->putCachedRaster(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/Raster;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->saved:Lorg/apache/poi/java/awt/image/Raster;

    :cond_0
    return-void
.end method

.method public abstract fillRaster([IIIIIII)V
.end method

.method public final getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    return-object v0
.end method

.method public final getRaster(IIII)Lorg/apache/poi/java/awt/image/Raster;
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->saved:Lorg/apache/poi/java/awt/image/Raster;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v1

    if-lt v1, p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v1

    if-ge v1, p4, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-static {v0, p3, p4}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->getCachedRaster(Lorg/apache/poi/java/awt/image/ColorModel;II)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->saved:Lorg/apache/poi/java/awt/image/Raster;

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferInt;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData(I)[I

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getOffset()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v1

    sub-int v6, v1, p3

    move-object v3, p0

    move v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v3 .. v10}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fillRaster([IIIIIII)V

    return-object v0
.end method

.method public final indexIntoGradientsArrays(F)I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    cmpl-float v0, p1, v4

    if-lez v0, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v3

    if-gez v0, :cond_4

    move p1, v3

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->REPEAT:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    if-ne v0, v1, :cond_2

    float-to-int v0, p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_4

    add-float/2addr p1, v4

    goto :goto_0

    :cond_2
    cmpg-float v0, p1, v3

    if-gez v0, :cond_3

    neg-float p1, p1

    :cond_3
    float-to-int v0, p1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    sub-float p1, v4, p1

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->isSimpleLookup:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    iget v1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fastGradientArraySize:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    aget p1, v0, p1

    return p1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradients:[[I

    array-length v3, v1

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fractions:[F

    add-int/lit8 v4, v0, 0x1

    aget v5, v3, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_6

    aget v2, v3, v0

    sub-float/2addr p1, v2

    iget-object v2, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->normalizedIntervals:[F

    aget v2, v2, v0

    div-float/2addr p1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    aget-object v0, v1, v0

    aget p1, v0, p1

    return p1

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    array-length p1, v1

    sub-int/2addr p1, v2

    aget-object p1, v1, p1

    const/16 v0, 0xff

    aget p1, p1, v0

    return p1
.end method
