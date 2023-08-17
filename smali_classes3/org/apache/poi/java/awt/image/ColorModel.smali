.class public abstract Lorg/apache/poi/java/awt/image/ColorModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Transparency;


# static fields
.field private static RGBdefault:Lorg/apache/poi/java/awt/image/ColorModel; = null

.field public static g16Tos8Map:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/java/awt/color/ICC_ColorSpace;",
            "[B>;"
        }
    .end annotation
.end field

.field public static g8Tos8Map:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/java/awt/color/ICC_ColorSpace;",
            "[B>;"
        }
    .end annotation
.end field

.field public static l16Tos8:[B = null

.field public static l8Tos8:[B = null

.field public static lg16Toog16Map:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/java/awt/color/ICC_ColorSpace;",
            "[S>;"
        }
    .end annotation
.end field

.field public static lg16Toog8Map:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/java/awt/color/ICC_ColorSpace;",
            "[B>;"
        }
    .end annotation
.end field

.field private static loaded:Z = false

.field public static s8Tol16:[S

.field public static s8Tol8:[B


# instance fields
.field public colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

.field public colorSpaceType:I

.field public isAlphaPremultiplied:Z

.field public is_sRGB:Z

.field public maxBits:I

.field public nBits:[I

.field public numColorComponents:I

.field public numComponents:I

.field private pData:J

.field public pixel_bits:I

.field public supportsAlpha:Z

.field public transferType:I

.field public transparency:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->loadLibraries()V

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->l8Tos8:[B

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol8:[B

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->l16Tos8:[B

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol16:[S

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->g8Tos8Map:Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->lg16Toog8Map:Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->g16Tos8Map:Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->lg16Toog16Map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    iput v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    const/16 v2, 0x3e8

    invoke-static {v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/4 v2, 0x5

    iput v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpaceType:I

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->is_sRGB:Z

    iput p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    if-lt p1, v1, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    iput v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    iput p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->maxBits:I

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getDefaultTransferType(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of bits must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    iput v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    const/16 v3, 0x3e8

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    const/4 v4, 0x5

    iput v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpaceType:I

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->is_sRGB:Z

    iput-object p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpaceType:I

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr v4, p4

    iput v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    iput-boolean p4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    array-length v5, p2

    if-lt v5, v4, :cond_8

    if-lt p6, v1, :cond_7

    if-gt p6, v0, :cond_7

    if-nez p4, :cond_0

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    iput v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    goto :goto_0

    :cond_0
    iput-boolean p5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    iput p6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    :goto_0
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    iput-object p4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    iput p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    if-lez p1, :cond_6

    iput v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->maxBits:I

    move p1, v2

    :goto_1
    array-length p4, p2

    if-ge p1, p4, :cond_3

    aget p4, p2, p1

    if-ltz p4, :cond_2

    iget p4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->maxBits:I

    aget p5, p2, p1

    if-ge p4, p5, :cond_1

    aget p4, p2, p1

    iput p4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->maxBits:I

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->maxBits:I

    if-eqz p1, :cond_5

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object p1

    if-eq p3, p1, :cond_4

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->is_sRGB:Z

    :cond_4
    iput p7, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There must be at least one component with > 0 pixel bits."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of pixel bits must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown transparency: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Number of color/alpha components should be "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " but length of bits array is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getDefaultTransferType(I)I
    .locals 1

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x10

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x20

    if-gt p0, v0, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0
.end method

.method public static getLinearRGB16TosRGB8LUT()[B
    .locals 7

    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->l16Tos8:[B

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->l16Tos8:[B

    const/4 v0, 0x0

    :goto_0
    const v1, 0xffff

    if-gt v0, v1, :cond_1

    int-to-float v1, v0

    const v2, 0x477fff00    # 65535.0f

    div-float/2addr v1, v2

    const v2, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const v2, 0x414eb852    # 12.92f

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_0
    const v2, 0x3f870a3d    # 1.055f

    float-to-double v3, v1

    const-wide v5, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    const v2, 0x3d6147ae    # 0.055f

    sub-float/2addr v1, v2

    :goto_1
    sget-object v2, Lorg/apache/poi/java/awt/image/ColorModel;->l16Tos8:[B

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->l16Tos8:[B

    return-object v0
.end method

.method public static getLinearRGB8TosRGB8LUT()[B
    .locals 8

    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->l8Tos8:[B

    if-nez v0, :cond_1

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->l8Tos8:[B

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const v3, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const v3, 0x414eb852    # 12.92f

    mul-float/2addr v1, v3

    goto :goto_1

    :cond_0
    const v3, 0x3f870a3d    # 1.055f

    float-to-double v4, v1

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v3

    const v3, 0x3d6147ae    # 0.055f

    sub-float/2addr v1, v3

    :goto_1
    sget-object v3, Lorg/apache/poi/java/awt/image/ColorModel;->l8Tos8:[B

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->l8Tos8:[B

    return-object v0
.end method

.method public static getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 7

    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->RGBdefault:Lorg/apache/poi/java/awt/image/ColorModel;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v2, 0x20

    const/high16 v3, 0xff0000

    const v4, 0xff00

    const/16 v5, 0xff

    const/high16 v6, -0x1000000

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIIII)V

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->RGBdefault:Lorg/apache/poi/java/awt/image/ColorModel;

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->RGBdefault:Lorg/apache/poi/java/awt/image/ColorModel;

    return-object v0
.end method

.method public static getsRGB8ToLinearRGB16LUT()[S
    .locals 5

    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol16:[S

    if-nez v0, :cond_1

    const/16 v0, 0x100

    new-array v0, v0, [S

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol16:[S

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const v2, 0x3d25aee6    # 0.04045f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const v2, 0x414eb852    # 12.92f

    div-float/2addr v1, v2

    goto :goto_1

    :cond_0
    const v2, 0x3d6147ae    # 0.055f

    add-float/2addr v1, v2

    const v2, 0x3f870a3d    # 1.055f

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x4003333333333333L    # 2.4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    sget-object v2, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol16:[S

    const v3, 0x477fff00    # 65535.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol16:[S

    return-object v0
.end method

.method public static getsRGB8ToLinearRGB8LUT()[B
    .locals 7

    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol8:[B

    if-nez v0, :cond_1

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol8:[B

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const v3, 0x3d25aee6    # 0.04045f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const v3, 0x414eb852    # 12.92f

    div-float/2addr v1, v3

    goto :goto_1

    :cond_0
    const v3, 0x3d6147ae    # 0.055f

    add-float/2addr v1, v3

    const v3, 0x3f870a3d    # 1.055f

    div-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x4003333333333333L    # 2.4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    :goto_1
    sget-object v3, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol8:[B

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/image/ColorModel;->s8Tol8:[B

    return-object v0
.end method

.method public static loadLibraries()V
    .locals 1

    sget-boolean v0, Lorg/apache/poi/java/awt/image/ColorModel;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/poi/java/awt/image/ColorModel;->loaded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public coerceData(Lorg/apache/poi/java/awt/image/WritableRaster;Z)Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    iget-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v3

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getPixelSize()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getTransparency()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getNumComponents()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getComponentSize()[I

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v3, v3, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    if-nez v2, :cond_5

    if-nez p1, :cond_5

    move v1, v0

    :cond_5
    return v1
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public abstract getAlpha(I)I
.end method

.method public getAlpha(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    check-cast p1, [I

    aget v0, p1, v2

    array-length p1, p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, [S

    aget-short v0, p1, v2

    const v2, 0xffff

    and-int/2addr v0, v2

    array-length p1, p1

    goto :goto_0

    :cond_2
    check-cast p1, [B

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    array-length p1, p1

    :goto_0
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getAlpha(I)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by this color model"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlphaRaster(Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getBlue(I)I
.end method

.method public getBlue(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    check-cast p1, [I

    aget v0, p1, v2

    array-length p1, p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, [S

    aget-short v0, p1, v2

    const v2, 0xffff

    and-int/2addr v0, v2

    array-length p1, p1

    goto :goto_0

    :cond_2
    check-cast p1, [B

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    array-length p1, p1

    :goto_0
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getBlue(I)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by this color model"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getColorSpace()Lorg/apache/poi/java/awt/color/ColorSpace;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    return-object v0
.end method

.method public getComponentSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    const-string v1, "Number of bits array is null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    aget p1, v0, p1

    return p1
.end method

.method public getComponentSize()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getComponents(I[II)[I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getComponents(Ljava/lang/Object;[II)[I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElement([FI)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/poi/java/awt/image/ColorModel;->getUnnormalizedComponents([FI[II)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/java/awt/image/ColorModel;->getDataElement([II)I

    move-result p1

    return p1
.end method

.method public getDataElement([II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElements(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElements([FILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/poi/java/awt/image/ColorModel;->getUnnormalizedComponents([FI[II)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/poi/java/awt/image/ColorModel;->getDataElements([IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDataElements([IILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method has not been implemented for this color model."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getGreen(I)I
.end method

.method public getGreen(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    check-cast p1, [I

    aget v0, p1, v2

    array-length p1, p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, [S

    aget-short v0, p1, v2

    const v2, 0xffff

    and-int/2addr v0, v2

    array-length p1, p1

    goto :goto_0

    :cond_2
    check-cast p1, [B

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    array-length p1, p1

    :goto_0
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getGreen(I)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by this color model"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNormalizedComponents(Ljava/lang/Object;[FI)[F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/image/ColorModel;->getComponents(Ljava/lang/Object;[II)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/apache/poi/java/awt/image/ColorModel;->getNormalizedComponents([II[FI)[F

    move-result-object p1

    return-object p1
.end method

.method public getNormalizedComponents([II[FI)[F
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    if-eqz v0, :cond_6

    array-length v1, p1

    sub-int/2addr v1, p2

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-lt v1, v2, :cond_5

    if-nez p3, :cond_0

    add-int/2addr v2, p4

    new-array p3, v2, [F

    :cond_0
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int v4, p2, v1

    aget v4, p1, v4

    int-to-float v4, v4

    aget v0, v0, v1

    shl-int v0, v3, v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v4, v0

    const/4 v0, 0x0

    cmpl-float v1, v4, v0

    if-eqz v1, :cond_1

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v2, v0, :cond_2

    add-int v0, p4, v2

    add-int v1, p2, v2

    aget v1, p1, v1

    int-to-float v1, v1

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v5, v5, v2

    shl-int v5, v3, v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v1, v5

    aput v1, p3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v2, p1, :cond_2

    add-int p1, p4, v2

    aput v0, p3, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr p4, p1

    aput v4, p3, p4

    goto :goto_3

    :cond_3
    :goto_2
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v2, v0, :cond_4

    add-int v0, p4, v2

    add-int v1, p2, v2

    aget v1, p1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v2

    shl-int v4, v3, v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v1, v4

    aput v1, p3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object p3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect number of components.  Expecting "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported.  Unable to determine #bits per component."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNumColorComponents()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    return v0
.end method

.method public getNumComponents()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    return v0
.end method

.method public getPixelSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    return v0
.end method

.method public getRGB(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getAlpha(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getRed(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getGreen(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getBlue(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public getRGB(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getAlpha(Ljava/lang/Object;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getRed(Ljava/lang/Object;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getGreen(Ljava/lang/Object;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getBlue(Ljava/lang/Object;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public abstract getRed(I)I
.end method

.method public getRed(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    check-cast p1, [I

    aget v0, p1, v2

    array-length p1, p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, [S

    aget-short v0, p1, v2

    const v2, 0xffff

    and-int/2addr v0, v2

    array-length p1, p1

    goto :goto_0

    :cond_2
    check-cast p1, [B

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    array-length p1, p1

    :goto_0
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getRed(I)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by this color model"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTransferType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    return v0
.end method

.method public getTransparency()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    return v0
.end method

.method public getUnnormalizedComponents([FI[II)[I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    if-eqz v0, :cond_5

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-lt v0, v1, :cond_4

    if-nez p3, :cond_0

    add-int/2addr v1, p4

    new-array p3, v1, [I

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr v0, p2

    aget v0, p1, v0

    :goto_0
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v4, :cond_1

    add-int v4, p4, v1

    add-int v5, p2, v1

    aget v5, p1, v5

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v6, v6, v1

    shl-int v6, v3, v6

    sub-int/2addr v6, v3

    int-to-float v6, v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    float-to-int v5, v5

    aput v5, p3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p4, v4

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget p1, p1, v4

    shl-int p1, v3, p1

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    float-to-int p1, v0

    aput p1, p3, p4

    goto :goto_2

    :cond_2
    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, v0, :cond_3

    add-int v0, p4, v1

    add-int v4, p2, v1

    aget v4, p1, v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v5, v5, v1

    shl-int v5, v3, v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    float-to-int v4, v4

    aput v4, p3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object p3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect number of components.  Expecting "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported.  Unable to determine #bits per component."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by this color model."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hasAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v2, v2, v1

    add-int/lit8 v3, v1, 0x9

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return v0
.end method

.method public final isAlphaPremultiplied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    return v0
.end method

.method public isCompatibleRaster(Lorg/apache/poi/java/awt/image/Raster;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method has not been implemented for this ColorModel."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCompatibleSampleModel(Lorg/apache/poi/java/awt/image/SampleModel;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by this color model"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModel: #pixelBits = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " numComponents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color space = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transparency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAlphaPre = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
