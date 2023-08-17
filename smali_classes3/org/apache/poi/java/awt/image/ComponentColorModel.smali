.class public Lorg/apache/poi/java/awt/image/ComponentColorModel;
.super Lorg/apache/poi/java/awt/image/ColorModel;
.source "SourceFile"


# instance fields
.field private compOffset:[F

.field private compScale:[F

.field private diffMinMax:[F

.field private fromLinearGray16ToOtherGray16LUT:[S

.field private fromLinearGray16ToOtherGray8LUT:[B

.field private fromsRGB8LUT16:[S

.field private fromsRGB8LUT8:[B

.field private is_ICCGray_stdScale:Z

.field private is_LinearGray_stdScale:Z

.field private is_LinearRGB_stdScale:Z

.field private is_sRGB_stdScale:Z

.field private min:[F

.field private needScaleInit:Z

.field private noUnnorm:Z

.field private nonStdScale:Z

.field private signed:Z

.field private tosRGB8LUT:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;ZZII)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V
    .locals 8

    invoke-static {p6, p1, p3}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->bitsHelper(ILorg/apache/poi/java/awt/color/ColorSpace;Z)I

    move-result v1

    invoke-static {p2, p6, p1, p3}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->bitsArrayHelper([IILorg/apache/poi/java/awt/color/ColorSpace;Z)[I

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p6, :cond_3

    if-eq p6, p2, :cond_3

    const/4 p3, 0x2

    if-eq p6, p3, :cond_2

    const/4 p3, 0x3

    if-eq p6, p3, :cond_3

    const/4 p3, 0x4

    if-eq p6, p3, :cond_1

    const/4 p3, 0x5

    if-ne p6, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This constructor is not compatible with transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    iput-boolean p2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    goto :goto_2

    :cond_2
    iput-boolean p2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    goto :goto_1

    :cond_3
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    :goto_1
    iput-boolean p2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    :goto_2
    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->setupLUTs()V

    return-void
.end method

.method private static bitsArrayHelper([IILorg/apache/poi/java/awt/color/ColorSpace;Z)[I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result p0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result p1

    if-eqz p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    new-array p2, p1, [I

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_3

    aput p0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method private static bitsHelper(ILorg/apache/poi/java/awt/color/ColorSpace;Z)I
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result p1

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    mul-int/2addr p0, p1

    return p0
.end method

.method private extractComponent(Ljava/lang/Object;II)I
    .locals 10

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v3, p2

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    iget v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v5, :cond_c

    if-eq v5, v2, :cond_b

    const/4 v7, 0x2

    if-eq v5, v7, :cond_8

    const/4 v7, 0x3

    if-eq v5, v7, :cond_7

    const/4 v3, 0x4

    if-eq v5, v3, :cond_4

    const/4 v3, 0x5

    if-ne v5, v3, :cond_3

    check-cast p1, [D

    shl-int p3, v2, p3

    sub-int/2addr p3, v2

    int-to-double v2, p3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_2

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    aget-wide v6, p1, p3

    const-wide/16 v8, 0x0

    cmpl-double p3, v6, v8

    if-eqz p3, :cond_1

    aget-wide p2, p1, p2

    div-double/2addr p2, v6

    mul-double/2addr p2, v2

    add-double/2addr p2, v4

    double-to-int p1, p2

    return p1

    :cond_1
    return v1

    :cond_2
    aget-wide p2, p1, p2

    mul-double/2addr p2, v2

    add-double/2addr p2, v4

    double-to-int p1, p2

    return p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This method has not been implemented for transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p1, [F

    shl-int p3, v2, p3

    sub-int/2addr p3, v2

    int-to-float p3, p3

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    aget v0, p1, v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_5

    aget p1, p1, p2

    div-float/2addr p1, v0

    mul-float/2addr p1, p3

    add-float/2addr p1, v6

    float-to-int p1, p1

    return p1

    :cond_5
    return v1

    :cond_6
    aget p1, p1, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, v6

    float-to-int p1, p1

    return p1

    :cond_7
    check-cast p1, [I

    aget v5, p1, p2

    if-eqz v0, :cond_d

    iget v7, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    aget p1, p1, v7

    goto :goto_2

    :cond_8
    check-cast p1, [S

    shl-int p3, v2, p3

    sub-int/2addr p3, v2

    int-to-float p3, p3

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    aget-short v0, p1, v0

    if-eqz v0, :cond_9

    aget-short p1, p1, p2

    int-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, v6

    float-to-int p1, p1

    return p1

    :cond_9
    return v1

    :cond_a
    aget-short p1, p1, p2

    int-to-float p1, p1

    const p2, 0x46fffe00    # 32767.0f

    div-float/2addr p1, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, v6

    float-to-int p1, p1

    return p1

    :cond_b
    check-cast p1, [S

    aget-short v5, p1, p2

    and-int/2addr v5, v4

    if-eqz v0, :cond_d

    iget v7, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    aget-short p1, p1, v7

    goto :goto_1

    :cond_c
    check-cast p1, [B

    aget-byte p3, p1, p2

    and-int v5, p3, v4

    const/16 p3, 0x8

    if-eqz v0, :cond_d

    iget v7, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    aget-byte p1, p1, v7

    :goto_1
    and-int/2addr p1, v4

    goto :goto_2

    :cond_d
    move p1, v1

    :goto_2
    if-eqz v0, :cond_f

    if-eqz p1, :cond_e

    shl-int p2, v2, p3

    sub-int/2addr p2, v2

    int-to-float p2, p2

    int-to-float p3, v5

    int-to-float v0, v4

    div-float/2addr p3, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    aget v0, v3, v0

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    mul-float/2addr p3, v0

    mul-float/2addr p3, p2

    add-float/2addr p3, v6

    float-to-int p1, p3

    return p1

    :cond_e
    return v1

    :cond_f
    aget p1, v3, p2

    if-eq p1, p3, :cond_10

    shl-int p1, v2, p3

    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float p2, v5

    int-to-float p3, v4

    div-float/2addr p2, p3

    mul-float/2addr p2, p1

    add-float/2addr p2, v6

    float-to-int p1, p2

    return p1

    :cond_10
    return v5
.end method

.method private getRGBComponent(II)I
    .locals 5

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    aput p1, v0, v3

    goto :goto_0

    :cond_2
    new-array v0, v1, [S

    int-to-short p1, p1

    aput-short p1, v0, v3

    goto :goto_0

    :cond_3
    new-array v0, v1, [B

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/color/ColorSpace;->toRGB([F)[F

    move-result-object p1

    aget p1, p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Component value is signed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "More than one component per pixel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRGBComponent(Ljava/lang/Object;I)I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_sRGB_stdScale:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->extractComponent(Ljava/lang/Object;II)I

    move-result p1

    return p1

    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->extractComponent(Ljava/lang/Object;II)I

    move-result p1

    iget-object p2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->tosRGB8LUT:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_2
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_ICCGray_stdScale:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->extractComponent(Ljava/lang/Object;II)I

    move-result p1

    iget-object p2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->tosRGB8LUT:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/color/ColorSpace;->toRGB([F)[F

    move-result-object p1

    aget p1, p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private initScale()V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    :goto_1
    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    if-eq v1, v2, :cond_a

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    move-object v1, v3

    goto/16 :goto_b

    :cond_2
    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v1, v1, [I

    move v4, v0

    :goto_2
    iget v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v4, v5, :cond_3

    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-boolean v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v5

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    aput v4, v1, v5

    :cond_4
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v4

    move v5, v0

    :goto_3
    iget v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v6, v6, v5

    shl-int v6, v2, v6

    sub-int/2addr v6, v2

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v3

    goto/16 :goto_a

    :cond_6
    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v1, v1, [S

    move v4, v0

    :goto_4
    iget v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v4, v5, :cond_7

    aput-short v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    iget-boolean v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/16 v6, 0x7fff

    if-eqz v4, :cond_8

    aput-short v6, v1, v5

    :cond_8
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v4

    move v5, v0

    :goto_5
    iget v7, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v5, v7, :cond_9

    aput-short v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v3

    goto/16 :goto_a

    :cond_a
    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v1, v1, [S

    move v4, v0

    :goto_6
    iget v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v4, v5, :cond_b

    aput-short v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    iget-boolean v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v5

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    int-to-short v4, v4

    aput-short v4, v1, v5

    :cond_c
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v4

    move v5, v0

    :goto_7
    iget v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v5, v6, :cond_d

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v6, v6, v5

    shl-int v6, v2, v6

    sub-int/2addr v6, v2

    int-to-short v6, v6

    aput-short v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v3

    goto :goto_a

    :cond_e
    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v1, v1, [B

    move v4, v0

    :goto_8
    iget v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v4, v5, :cond_f

    aput-byte v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    iget-boolean v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v5

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    :cond_10
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v4

    move v5, v0

    :goto_9
    iget v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v5, v6, :cond_11

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v6, v6, v5

    shl-int v6, v2, v6

    sub-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v3

    :goto_a
    move-object v1, v3

    move-object v3, v4

    :goto_b
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    move v4, v0

    :goto_c
    iget v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_14

    aget v7, v3, v4

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_13

    aget v7, v1, v4

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_12

    goto :goto_d

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_13
    :goto_d
    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    :cond_14
    iget-boolean v4, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    if-eqz v4, :cond_15

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_sRGB_stdScale:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearGray_stdScale:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_ICCGray_stdScale:Z

    new-array v2, v5, [F

    iput-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compOffset:[F

    new-array v2, v5, [F

    iput-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compScale:[F

    :goto_e
    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compOffset:[F

    aget v4, v3, v0

    aput v4, v2, v0

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compScale:[F

    aget v4, v1, v0

    aget v5, v3, v0

    sub-float/2addr v4, v5

    div-float v4, v6, v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_15
    return-void
.end method

.method private setupLUTs()V
    .locals 6

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->is_sRGB:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_sRGB_stdScale:Z

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->isLinearRGBspace(Lorg/apache/poi/java/awt/color/ColorSpace;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getLinearRGB8TosRGB8LUT()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->tosRGB8LUT:[B

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getsRGB8ToLinearRGB8LUT()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT8:[B

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getLinearRGB16TosRGB8LUT()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->tosRGB8LUT:[B

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getsRGB8ToLinearRGB16LUT()[S

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    goto/16 :goto_3

    :cond_2
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpaceType:I

    const/4 v3, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    instance-of v3, v0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMinValue(I)F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v0, v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    check-cast v0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_ICCGray_stdScale:Z

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getsRGB8ToLinearRGB16LUT()[S

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->isLinearGRAYspace(Lorg/apache/poi/java/awt/color/ColorSpace;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearGray_stdScale:Z

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getGray8TosRGB8LUT(Lorg/apache/poi/java/awt/color/ICC_ColorSpace;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->tosRGB8LUT:[B

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getGray16TosRGB8LUT(Lorg/apache/poi/java/awt/color/ICC_ColorSpace;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->tosRGB8LUT:[B

    goto/16 :goto_3

    :cond_4
    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-nez v1, :cond_5

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getGray8TosRGB8LUT(Lorg/apache/poi/java/awt/color/ICC_ColorSpace;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->tosRGB8LUT:[B

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getLinearGray16ToOtherGray8LUT(Lorg/apache/poi/java/awt/color/ICC_ColorSpace;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromLinearGray16ToOtherGray8LUT:[B

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getGray16TosRGB8LUT(Lorg/apache/poi/java/awt/color/ICC_ColorSpace;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->tosRGB8LUT:[B

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getLinearGray16ToOtherGray16LUT(Lorg/apache/poi/java/awt/color/ICC_ColorSpace;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromLinearGray16ToOtherGray16LUT:[S

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_a

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    move v0, v2

    :goto_0
    iget v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v3, v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMinValue(I)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_8

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v3, v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    :cond_9
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->min:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->diffMinMax:[F

    :goto_2
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->min:[F

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMinValue(I)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->diffMinMax:[F

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v1

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->min:[F

    aget v3, v3, v2

    sub-float/2addr v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public coerceData(Lorg/apache/poi/java/awt/image/WritableRaster;Z)Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    iget-boolean v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v2, :cond_3a

    iget-boolean v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-ne v2, v5, :cond_0

    goto/16 :goto_2b

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v8

    const-string v9, "This method has not been implemented for transferType "

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const-wide/16 v10, 0x0

    const v17, 0xffff

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    if-eqz v5, :cond_1f

    iget v15, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-eqz v15, :cond_1a

    if-eq v15, v6, :cond_15

    if-eq v15, v14, :cond_10

    if-eq v15, v13, :cond_b

    if-eq v15, v12, :cond_6

    const/4 v6, 0x5

    if-ne v15, v6, :cond_5

    move-object/from16 v6, v21

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_38

    move v14, v7

    move-object/from16 v12, v21

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v2, :cond_4

    invoke-virtual {v1, v14, v8, v12}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    aget-wide v15, v12, v4

    cmpl-double v17, v15, v10

    if-eqz v17, :cond_2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_1

    aget-wide v17, v12, v10

    mul-double v17, v17, v15

    aput-wide v17, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v14, v8, v12}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-nez v6, :cond_3

    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v6, v6, [D

    const-wide/16 v10, 0x0

    invoke-static {v6, v10, v11}, Ljava/util/Arrays;->fill([DD)V

    :cond_3
    invoke-virtual {v1, v14, v8, v6}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v12

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object/from16 v6, v21

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v3, :cond_38

    move v12, v7

    move-object/from16 v10, v21

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v2, :cond_a

    invoke-virtual {v1, v12, v8, v10}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v13, v10, v4

    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_8

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v4, :cond_7

    aget v15, v10, v14

    mul-float/2addr v15, v13

    aput v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v1, v12, v8, v10}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    goto :goto_7

    :cond_8
    if-nez v6, :cond_9

    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v6, v6, [F

    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([FF)V

    :cond_9
    invoke-virtual {v1, v12, v8, v6}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :goto_7
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v10

    goto :goto_4

    :cond_b
    iget-object v9, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v9, v9, v4

    shl-int v9, v6, v9

    sub-int/2addr v9, v6

    int-to-float v6, v9

    div-float v20, v20, v6

    move-object/from16 v6, v21

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v3, :cond_38

    move v12, v7

    move-object/from16 v10, v21

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v2, :cond_f

    invoke-virtual {v1, v12, v8, v10}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v13, v10, v4

    int-to-float v13, v13

    mul-float v13, v13, v20

    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_d

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v4, :cond_c

    aget v15, v10, v14

    int-to-float v15, v15

    mul-float/2addr v15, v13

    add-float v15, v15, v18

    float-to-int v15, v15

    aput v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v1, v12, v8, v10}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    goto :goto_b

    :cond_d
    if-nez v6, :cond_e

    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v6, v6, [I

    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([II)V

    :cond_e
    invoke-virtual {v1, v12, v8, v6}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :goto_b
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v10

    goto :goto_8

    :cond_10
    move-object/from16 v6, v21

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v3, :cond_38

    move v12, v7

    move-object/from16 v10, v21

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v2, :cond_14

    invoke-virtual {v1, v12, v8, v10}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [S

    aget-short v13, v10, v4

    int-to-float v13, v13

    const v14, 0x38000100

    mul-float/2addr v13, v14

    const/4 v14, 0x0

    cmpl-float v16, v13, v14

    if-eqz v16, :cond_12

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v4, :cond_11

    aget-short v15, v10, v14

    int-to-float v15, v15

    mul-float/2addr v15, v13

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    aput-short v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_11
    invoke-virtual {v1, v12, v8, v10}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    goto :goto_f

    :cond_12
    if-nez v6, :cond_13

    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v6, v6, [S

    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([SS)V

    :cond_13
    invoke-virtual {v1, v12, v8, v6}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :goto_f
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_14
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v10

    goto :goto_c

    :cond_15
    iget-object v9, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v9, v9, v4

    shl-int v9, v6, v9

    sub-int/2addr v9, v6

    int-to-float v6, v9

    div-float v20, v20, v6

    move-object/from16 v6, v21

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v3, :cond_38

    move v11, v7

    move-object/from16 v10, v21

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v2, :cond_19

    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [S

    aget-short v12, v10, v4

    and-int v12, v12, v17

    int-to-float v12, v12

    mul-float v12, v12, v20

    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-eqz v15, :cond_17

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v4, :cond_16

    aget-short v15, v10, v14

    and-int v15, v15, v17

    int-to-float v15, v15

    mul-float/2addr v15, v12

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    aput-short v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_16
    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    goto :goto_13

    :cond_17
    if-nez v6, :cond_18

    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v6, v6, [S

    const/4 v12, 0x0

    invoke-static {v6, v12}, Ljava/util/Arrays;->fill([SS)V

    :cond_18
    invoke-virtual {v1, v11, v8, v6}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :goto_13
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_19
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v10

    goto :goto_10

    :cond_1a
    iget-object v9, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v9, v9, v4

    shl-int v9, v6, v9

    sub-int/2addr v9, v6

    int-to-float v6, v9

    div-float v20, v20, v6

    move-object/from16 v6, v21

    const/4 v13, 0x0

    :goto_14
    if-ge v13, v3, :cond_38

    move v11, v7

    move-object/from16 v10, v21

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v2, :cond_1e

    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    aget-byte v12, v10, v4

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    mul-float v12, v12, v20

    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-eqz v15, :cond_1c

    const/4 v14, 0x0

    :goto_16
    if-ge v14, v4, :cond_1b

    aget-byte v15, v10, v14

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v12

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-byte v15, v15

    aput-byte v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    :cond_1b
    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    const/4 v15, 0x0

    goto :goto_18

    :cond_1c
    if-nez v6, :cond_1d

    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v6, v6, [B

    const/4 v15, 0x0

    invoke-static {v6, v15}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_17

    :cond_1d
    const/4 v15, 0x0

    :goto_17
    invoke-virtual {v1, v11, v8, v6}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :goto_18
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_1e
    const/4 v15, 0x0

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v10

    goto :goto_14

    :cond_1f
    const/4 v15, 0x0

    iget v10, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-eqz v10, :cond_34

    if-eq v10, v6, :cond_30

    if-eq v10, v14, :cond_2c

    if-eq v10, v13, :cond_28

    if-eq v10, v12, :cond_24

    const/4 v6, 0x5

    if-ne v10, v6, :cond_23

    move v13, v15

    :goto_19
    if-ge v13, v3, :cond_38

    move v10, v7

    move v6, v15

    move-object/from16 v9, v21

    :goto_1a
    if-ge v6, v2, :cond_22

    invoke-virtual {v1, v10, v8, v9}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    aget-wide v11, v9, v4

    const-wide/16 v16, 0x0

    cmpl-double v14, v11, v16

    if-eqz v14, :cond_21

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v18, v18, v11

    move v11, v15

    :goto_1b
    if-ge v11, v4, :cond_20

    aget-wide v20, v9, v11

    mul-double v20, v20, v18

    aput-wide v20, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    :cond_20
    invoke-virtual {v1, v10, v8, v9}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :cond_21
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_22
    const-wide/16 v16, 0x0

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v9

    goto :goto_19

    :cond_23
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    move v13, v15

    :goto_1c
    if-ge v13, v3, :cond_38

    move v10, v7

    move v6, v15

    move-object/from16 v9, v21

    :goto_1d
    if-ge v6, v2, :cond_27

    invoke-virtual {v1, v10, v8, v9}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    aget v11, v9, v4

    const/4 v12, 0x0

    cmpl-float v14, v11, v12

    if-eqz v14, :cond_26

    div-float v11, v20, v11

    move v12, v15

    :goto_1e
    if-ge v12, v4, :cond_25

    aget v14, v9, v12

    mul-float/2addr v14, v11

    aput v14, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    :cond_25
    invoke-virtual {v1, v10, v8, v9}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :cond_26
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_27
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v9

    goto :goto_1c

    :cond_28
    iget-object v9, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v9, v9, v4

    shl-int v9, v6, v9

    sub-int/2addr v9, v6

    int-to-float v6, v9

    div-float v6, v20, v6

    move v13, v15

    :goto_1f
    if-ge v13, v3, :cond_38

    move v11, v7

    move v9, v15

    move-object/from16 v10, v21

    :goto_20
    if-ge v9, v2, :cond_2b

    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v12, v10, v4

    int-to-float v12, v12

    mul-float/2addr v12, v6

    const/4 v14, 0x0

    cmpl-float v16, v12, v14

    if-eqz v16, :cond_2a

    div-float v12, v20, v12

    move v14, v15

    :goto_21
    if-ge v14, v4, :cond_29

    aget v15, v10, v14

    int-to-float v15, v15

    mul-float/2addr v15, v12

    add-float v15, v15, v18

    float-to-int v15, v15

    aput v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    goto :goto_21

    :cond_29
    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :cond_2a
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v15, 0x0

    goto :goto_20

    :cond_2b
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v10

    const/4 v15, 0x0

    goto :goto_1f

    :cond_2c
    const/4 v13, 0x0

    :goto_22
    if-ge v13, v3, :cond_38

    move v10, v7

    move-object/from16 v9, v21

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v2, :cond_2f

    invoke-virtual {v1, v10, v8, v9}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [S

    aget-short v11, v9, v4

    int-to-float v11, v11

    const v12, 0x38000100

    mul-float/2addr v11, v12

    const/4 v14, 0x0

    cmpl-float v15, v11, v14

    if-eqz v15, :cond_2e

    div-float v11, v20, v11

    const/4 v14, 0x0

    :goto_24
    if-ge v14, v4, :cond_2d

    aget-short v15, v9, v14

    int-to-float v15, v15

    mul-float/2addr v15, v11

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    aput-short v15, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    :cond_2d
    invoke-virtual {v1, v10, v8, v9}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_2f
    const v12, 0x38000100

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v9

    goto :goto_22

    :cond_30
    iget-object v9, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v9, v9, v4

    shl-int v9, v6, v9

    sub-int/2addr v9, v6

    int-to-float v6, v9

    div-float v6, v20, v6

    const/4 v13, 0x0

    :goto_25
    if-ge v13, v3, :cond_38

    move v11, v7

    move-object/from16 v10, v21

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v2, :cond_33

    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [S

    aget-short v12, v10, v4

    and-int v12, v12, v17

    int-to-float v12, v12

    mul-float/2addr v12, v6

    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-eqz v15, :cond_32

    div-float v12, v20, v12

    const/4 v14, 0x0

    :goto_27
    if-ge v14, v4, :cond_31

    aget-short v15, v10, v14

    and-int v15, v15, v17

    int-to-float v15, v15

    mul-float/2addr v15, v12

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    aput-short v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_27

    :cond_31
    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :cond_32
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    :cond_33
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v10

    goto :goto_25

    :cond_34
    iget-object v9, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v9, v9, v4

    shl-int v9, v6, v9

    sub-int/2addr v9, v6

    int-to-float v6, v9

    div-float v6, v20, v6

    const/4 v13, 0x0

    :goto_28
    if-ge v13, v3, :cond_38

    move v11, v7

    move-object/from16 v10, v21

    const/4 v9, 0x0

    :goto_29
    if-ge v9, v2, :cond_37

    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    aget-byte v12, v10, v4

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    mul-float/2addr v12, v6

    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-eqz v15, :cond_36

    div-float v12, v20, v12

    const/4 v15, 0x0

    :goto_2a
    if-ge v15, v4, :cond_35

    aget-byte v14, v10, v15

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    mul-float/2addr v14, v12

    add-float v14, v14, v18

    float-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v10, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_2a

    :cond_35
    invoke-virtual {v1, v11, v8, v10}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    :cond_36
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_29

    :cond_37
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v10

    goto :goto_28

    :cond_38
    iget-boolean v1, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    if-nez v1, :cond_39

    new-instance v8, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    iget-object v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    iget-boolean v4, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    iget v7, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    move-object v1, v8

    move/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    return-object v8

    :cond_39
    new-instance v7, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    iget-object v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    iget v8, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    move-object v1, v7

    move/from16 v4, p2

    move v5, v6

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    return-object v7

    :cond_3a
    :goto_2b
    return-object v0
.end method

.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 8

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v7, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v0, v1, :cond_0

    aput v0, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    iget v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    mul-int v6, p1, v5

    move-object v1, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    iget v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    mul-int v6, p1, v5

    move-object v1, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    return-object v0
.end method

.method public createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->createDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p2, v0, v2}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getAlpha(I)I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-nez v0, :cond_0

    const/16 p1, 0xff

    return p1

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    if-nez v0, :cond_1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Component value is signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "More than one component per pixel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlpha(Ljava/lang/Object;)I
    .locals 7

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-nez v0, :cond_0

    const/16 p1, 0xff

    return p1

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_5

    const/4 v2, 0x2

    if-eq v4, v2, :cond_4

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    const/4 v1, 0x4

    if-eq v4, v1, :cond_2

    const/4 v1, 0x5

    if-ne v4, v1, :cond_1

    check-cast p1, [D

    aget-wide v0, p1, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1

    :cond_1
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

    :cond_2
    check-cast p1, [F

    aget p1, p1, v0

    mul-float/2addr p1, v6

    add-float/2addr p1, v5

    float-to-int p1, p1

    return p1

    :cond_3
    check-cast p1, [I

    aget p1, p1, v0

    goto :goto_1

    :cond_4
    check-cast p1, [S

    aget-short p1, p1, v0

    int-to-float p1, p1

    const v0, 0x46fffe00    # 32767.0f

    div-float/2addr p1, v0

    mul-float/2addr p1, v6

    add-float/2addr p1, v5

    float-to-int p1, p1

    return p1

    :cond_5
    check-cast p1, [S

    aget-short p1, p1, v0

    goto :goto_0

    :cond_6
    check-cast p1, [B

    aget-byte p1, p1, v0

    :goto_0
    and-int/2addr p1, v2

    :goto_1
    aget v2, v1, v0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_7

    return p1

    :cond_7
    int-to-float p1, p1

    aget v0, v1, v0

    shl-int v0, v3, v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p1, v6

    add-float/2addr p1, v5

    float-to-int p1, p1

    return p1
.end method

.method public getAlphaRaster(Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v6

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v2

    sub-int/2addr v2, v0

    aput v2, v7, v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v4

    move-object v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1
.end method

.method public getBlue(I)I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRGBComponent(II)I

    move-result p1

    return p1
.end method

.method public getBlue(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRGBComponent(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getComponents(I[II)[I
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    add-int/lit8 p2, p3, 0x1

    new-array p2, p2, [I

    :cond_1
    const/4 v0, 0x0

    add-int/2addr p3, v0

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v0, v2, v0

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    and-int/2addr p1, v0

    aput p1, p2, p3

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This ColorModel does not support the unnormalized form"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "More than one component per pixel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getComponents(Ljava/lang/Object;[II)[I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    if-nez v0, :cond_6

    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->toIntArray(Ljava/lang/Object;)[I

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_0
    array-length v0, p1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-lt v0, v1, :cond_4

    if-nez p2, :cond_2

    add-int p2, p3, v1

    new-array p2, p2, [I

    goto :goto_1

    :cond_2
    array-length v0, p2

    sub-int/2addr v0, p3

    if-lt v0, v1, :cond_3

    :goto_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of components array < number of components in model"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of pixel array < number of components in model"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This method has not been implemented for transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This ColorModel does not support the unnormalized form"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElement([FI)I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getDataElements([FILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    check-cast p1, [I

    aget p1, p1, v0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This method has not been implemented for transferType "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, [S

    aget-short p1, p1, v0

    const p2, 0xffff

    and-int/2addr p1, p2

    return p1

    :cond_3
    check-cast p1, [B

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Component value is signed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "More than one component per pixel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElement([II)I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This ColorModel does not support the unnormalized form"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This model returns "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " elements in the pixel array."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElements(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v1, 0xff

    iget-boolean v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget-boolean v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    const/4 v8, 0x0

    const v9, 0x477fff00    # 65535.0f

    const v10, 0x3d93a92a    # 0.0721f

    const v11, 0x3f372474    # 0.7154f

    const v12, 0x3e59999a    # 0.2125f

    const/4 v13, 0x2

    const/4 v14, 0x3

    const v15, 0x3b808081

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x0

    const v18, 0xffff

    const/4 v6, 0x1

    if-eqz v5, :cond_24

    iget v5, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-eq v5, v13, :cond_15

    const/4 v7, 0x4

    if-eq v5, v7, :cond_b

    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    goto/16 :goto_12

    :cond_1
    if-nez p2, :cond_2

    iget v5, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v5, v5, [D

    goto :goto_0

    :cond_2
    move-object/from16 v5, p2

    check-cast v5, [D

    :goto_0
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_sRGB_stdScale:Z

    const-wide v8, 0x3f70101010101010L    # 0.00392156862745098

    if-nez v7, :cond_7

    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v7, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearGray_stdScale:Z

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v7, v2

    and-int v2, v2, v18

    aget-short v3, v7, v3

    and-int v3, v3, v18

    aget-short v4, v7, v4

    and-int v4, v4, v18

    const-wide v10, 0x3fcb333333333333L    # 0.2125

    int-to-double v12, v2

    mul-double/2addr v12, v10

    const-wide v10, 0x3fe6e48e8a71de6aL    # 0.7154

    int-to-double v2, v3

    mul-double/2addr v2, v10

    add-double/2addr v12, v2

    const-wide v2, 0x3fb27525460aa64cL    # 0.0721

    int-to-double v10, v4

    mul-double/2addr v10, v2

    add-double/2addr v12, v10

    const-wide v2, 0x40efffe000000000L    # 65535.0

    div-double/2addr v12, v2

    aput-wide v12, v5, v17

    iget-boolean v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v2, :cond_a

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-double v1, v1

    mul-double/2addr v1, v8

    aput-wide v1, v5, v6

    iget-boolean v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v1, :cond_a

    aget-wide v1, v5, v17

    aget-wide v3, v5, v6

    mul-double/2addr v1, v3

    aput-wide v1, v5, v17

    goto/16 :goto_5

    :cond_4
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_ICCGray_stdScale:Z

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v7, v2

    and-int v2, v2, v18

    aget-short v3, v7, v3

    and-int v3, v3, v18

    aget-short v4, v7, v4

    and-int v4, v4, v18

    int-to-float v2, v2

    mul-float/2addr v2, v12

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    int-to-float v3, v4

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    add-float v2, v2, v16

    float-to-int v2, v2

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromLinearGray16ToOtherGray16LUT:[S

    aget-short v2, v3, v2

    and-int v2, v2, v18

    int-to-double v2, v2

    const-wide v10, 0x40efffe000000000L    # 65535.0

    div-double/2addr v2, v10

    aput-wide v2, v5, v17

    iget-boolean v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v2, :cond_a

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-double v1, v1

    mul-double/2addr v1, v8

    aput-wide v1, v5, v6

    iget-boolean v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v1, :cond_a

    aget-wide v1, v5, v17

    aget-wide v3, v5, v6

    mul-double/2addr v1, v3

    aput-wide v1, v5, v17

    goto/16 :goto_5

    :cond_5
    new-array v7, v14, [F

    int-to-float v2, v2

    mul-float/2addr v2, v15

    aput v2, v7, v17

    int-to-float v2, v3

    mul-float/2addr v2, v15

    aput v2, v7, v6

    int-to-float v2, v4

    mul-float/2addr v2, v15

    aput v2, v7, v13

    iget-object v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v2, v7}, Lorg/apache/poi/java/awt/color/ColorSpace;->fromRGB([F)[F

    move-result-object v2

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v3, :cond_6

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    int-to-double v6, v1

    mul-double/2addr v6, v8

    aput-wide v6, v5, v3

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v3, :cond_6

    int-to-float v1, v1

    mul-float/2addr v1, v15

    move/from16 v3, v17

    :goto_1
    iget v4, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v3, v4, :cond_6

    aget v4, v2, v3

    mul-float/2addr v4, v1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move/from16 v1, v17

    :goto_2
    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v3, :cond_a

    aget v3, v2, v1

    float-to-double v3, v3

    aput-wide v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v7, :cond_8

    iget-object v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v7, v2

    and-int v2, v2, v18

    aget-short v3, v7, v3

    and-int v3, v3, v18

    aget-short v4, v7, v4

    and-int v4, v4, v18

    const-wide v10, 0x3ef0001000100010L

    goto :goto_4

    :cond_8
    move-wide v10, v8

    :goto_4
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v7, :cond_9

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-double v6, v1

    mul-double/2addr v6, v8

    aput-wide v6, v5, v14

    iget-boolean v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v1, :cond_9

    aget-wide v6, v5, v14

    mul-double/2addr v10, v6

    :cond_9
    int-to-double v1, v2

    mul-double/2addr v1, v10

    aput-wide v1, v5, v17

    int-to-double v1, v3

    mul-double/2addr v1, v10

    const/4 v3, 0x1

    aput-wide v1, v5, v3

    int-to-double v1, v4

    mul-double/2addr v1, v10

    aput-wide v1, v5, v13

    :cond_a
    :goto_5
    return-object v5

    :cond_b
    if-nez p2, :cond_c

    iget v5, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v5, v5, [F

    goto :goto_6

    :cond_c
    move-object/from16 v5, p2

    check-cast v5, [F

    :goto_6
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_sRGB_stdScale:Z

    if-nez v6, :cond_11

    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v6, :cond_d

    goto/16 :goto_9

    :cond_d
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearGray_stdScale:Z

    if-eqz v6, :cond_e

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v6, v2

    and-int v2, v2, v18

    aget-short v3, v6, v3

    and-int v3, v3, v18

    aget-short v4, v6, v4

    and-int v4, v4, v18

    int-to-float v2, v2

    mul-float/2addr v2, v12

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    int-to-float v3, v4

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    div-float/2addr v2, v9

    aput v2, v5, v17

    iget-boolean v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v2, :cond_14

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/4 v2, 0x1

    aput v1, v5, v2

    iget-boolean v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v1, :cond_14

    aget v1, v5, v17

    aget v2, v5, v2

    mul-float/2addr v1, v2

    aput v1, v5, v17

    goto/16 :goto_b

    :cond_e
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_ICCGray_stdScale:Z

    if-eqz v6, :cond_f

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v6, v2

    and-int v2, v2, v18

    aget-short v3, v6, v3

    and-int v3, v3, v18

    aget-short v4, v6, v4

    and-int v4, v4, v18

    int-to-float v2, v2

    mul-float/2addr v2, v12

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    int-to-float v3, v4

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    add-float v2, v2, v16

    float-to-int v2, v2

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromLinearGray16ToOtherGray16LUT:[S

    aget-short v2, v3, v2

    and-int v2, v2, v18

    int-to-float v2, v2

    div-float/2addr v2, v9

    aput v2, v5, v17

    iget-boolean v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v2, :cond_14

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v15

    const/4 v2, 0x1

    aput v1, v5, v2

    iget-boolean v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v1, :cond_14

    aget v1, v5, v17

    aget v2, v5, v2

    mul-float/2addr v1, v2

    aput v1, v5, v17

    goto/16 :goto_b

    :cond_f
    new-array v6, v14, [F

    int-to-float v2, v2

    mul-float/2addr v2, v15

    aput v2, v6, v17

    int-to-float v2, v3

    mul-float/2addr v2, v15

    const/4 v3, 0x1

    aput v2, v6, v3

    int-to-float v2, v4

    mul-float/2addr v2, v15

    aput v2, v6, v13

    iget-object v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v2, v6}, Lorg/apache/poi/java/awt/color/ColorSpace;->fromRGB([F)[F

    move-result-object v2

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v3, :cond_10

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    aput v1, v5, v3

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v3, :cond_10

    move/from16 v3, v17

    :goto_7
    iget v4, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v3, v4, :cond_10

    aget v4, v2, v3

    mul-float/2addr v4, v1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    move/from16 v1, v17

    :goto_8
    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v3, :cond_14

    aget v3, v2, v1

    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    :goto_9
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v6, :cond_12

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v6, v2

    and-int v2, v2, v18

    aget-short v3, v6, v3

    and-int v3, v3, v18

    aget-short v4, v6, v4

    and-int v4, v4, v18

    const v6, 0x37800080

    goto :goto_a

    :cond_12
    move v6, v15

    :goto_a
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v7, :cond_13

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v15

    aput v1, v5, v14

    iget-boolean v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v1, :cond_13

    aget v1, v5, v14

    mul-float/2addr v6, v1

    :cond_13
    int-to-float v1, v2

    mul-float/2addr v1, v6

    aput v1, v5, v17

    int-to-float v1, v3

    mul-float/2addr v1, v6

    const/4 v2, 0x1

    aput v1, v5, v2

    int-to-float v1, v4

    mul-float/2addr v1, v6

    aput v1, v5, v13

    :cond_14
    :goto_b
    return-object v5

    :cond_15
    if-nez p2, :cond_16

    iget v5, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v5, v5, [S

    goto :goto_c

    :cond_16
    move-object/from16 v5, p2

    check-cast v5, [S

    :goto_c
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_sRGB_stdScale:Z

    const v7, 0x3effff00    # 0.49999237f

    const v19, 0x43007f7f

    if-nez v6, :cond_20

    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v6, :cond_17

    goto/16 :goto_f

    :cond_17
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearGray_stdScale:Z

    const v20, 0x46fffe00    # 32767.0f

    if-eqz v6, :cond_19

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v6, v2

    and-int v2, v2, v18

    aget-short v3, v6, v3

    and-int v3, v3, v18

    aget-short v4, v6, v4

    and-int v4, v4, v18

    int-to-float v2, v2

    mul-float/2addr v2, v12

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    int-to-float v3, v4

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    div-float/2addr v2, v9

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v3, :cond_18

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v19, v19, v1

    add-float v3, v19, v16

    float-to-int v3, v3

    int-to-short v3, v3

    const/4 v4, 0x1

    aput-short v3, v5, v4

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v3, :cond_18

    mul-float v1, v1, v20

    mul-float v20, v1, v15

    :cond_18
    mul-float v2, v2, v20

    add-float v2, v2, v16

    float-to-int v1, v2

    int-to-short v1, v1

    aput-short v1, v5, v17

    goto/16 :goto_11

    :cond_19
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_ICCGray_stdScale:Z

    if-eqz v6, :cond_1b

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v6, v2

    and-int v2, v2, v18

    aget-short v3, v6, v3

    and-int v3, v3, v18

    aget-short v4, v6, v4

    and-int v4, v4, v18

    int-to-float v2, v2

    mul-float/2addr v2, v12

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    int-to-float v3, v4

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    add-float v2, v2, v16

    float-to-int v2, v2

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromLinearGray16ToOtherGray16LUT:[S

    aget-short v2, v3, v2

    and-int v2, v2, v18

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v3, :cond_1a

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v19, v19, v1

    add-float v3, v19, v16

    float-to-int v3, v3

    int-to-short v3, v3

    const/4 v4, 0x1

    aput-short v3, v5, v4

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v3, :cond_1a

    mul-float/2addr v1, v7

    mul-float v7, v1, v15

    :cond_1a
    int-to-float v1, v2

    mul-float/2addr v1, v7

    add-float v1, v1, v16

    float-to-int v1, v1

    int-to-short v1, v1

    aput-short v1, v5, v17

    goto/16 :goto_11

    :cond_1b
    new-array v6, v14, [F

    int-to-float v2, v2

    mul-float/2addr v2, v15

    aput v2, v6, v17

    int-to-float v2, v3

    mul-float/2addr v2, v15

    const/4 v3, 0x1

    aput v2, v6, v3

    int-to-float v2, v4

    mul-float/2addr v2, v15

    aput v2, v6, v13

    iget-object v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v2, v6}, Lorg/apache/poi/java/awt/color/ColorSpace;->fromRGB([F)[F

    move-result-object v2

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    if-eqz v3, :cond_1e

    move/from16 v3, v17

    :goto_d
    iget v4, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v3, v4, :cond_1e

    aget v4, v2, v3

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compOffset:[F

    aget v6, v6, v3

    sub-float/2addr v4, v6

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compScale:[F

    aget v6, v6, v3

    mul-float/2addr v4, v6

    aput v4, v2, v3

    aget v4, v2, v3

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1c

    aput v8, v2, v3

    :cond_1c
    aget v4, v2, v3

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1d

    aput v6, v2, v3

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v3, :cond_1f

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    int-to-float v1, v1

    mul-float v19, v19, v1

    add-float v4, v19, v16

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v5, v3

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v3, :cond_1f

    mul-float/2addr v1, v15

    mul-float v20, v20, v1

    :cond_1f
    move/from16 v1, v17

    :goto_e
    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v3, :cond_23

    aget v3, v2, v1

    mul-float v3, v3, v20

    add-float v3, v3, v16

    float-to-int v3, v3

    int-to-short v3, v3

    aput-short v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    :goto_f
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v6, :cond_21

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v6, v2

    and-int v2, v2, v18

    aget-short v3, v6, v3

    and-int v3, v3, v18

    aget-short v4, v6, v4

    and-int v4, v4, v18

    goto :goto_10

    :cond_21
    move/from16 v7, v19

    :goto_10
    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v6, :cond_22

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v19, v19, v1

    add-float v6, v19, v16

    float-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v5, v14

    iget-boolean v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v6, :cond_22

    mul-float/2addr v1, v7

    mul-float v7, v1, v15

    :cond_22
    int-to-float v1, v2

    mul-float/2addr v1, v7

    add-float v1, v1, v16

    float-to-int v1, v1

    int-to-short v1, v1

    aput-short v1, v5, v17

    int-to-float v1, v3

    mul-float/2addr v1, v7

    add-float v1, v1, v16

    float-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x1

    aput-short v1, v5, v2

    int-to-float v1, v4

    mul-float/2addr v1, v7

    add-float v1, v1, v16

    float-to-int v1, v1

    int-to-short v1, v1

    aput-short v1, v5, v13

    :cond_23
    :goto_11
    return-object v5

    :cond_24
    :goto_12
    iget v5, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-ne v5, v14, :cond_25

    if-eqz p2, :cond_25

    move-object/from16 v6, p2

    check-cast v6, [I

    goto :goto_13

    :cond_25
    iget v6, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v6, v6, [I

    :goto_13
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_sRGB_stdScale:Z

    const/16 v8, 0x8

    if-nez v7, :cond_33

    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v7, :cond_26

    goto/16 :goto_1b

    :cond_26
    iget-boolean v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearGray_stdScale:Z

    if-eqz v5, :cond_2a

    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v5, v2

    and-int v2, v2, v18

    aget-short v3, v5, v3

    and-int v3, v3, v18

    aget-short v4, v5, v4

    and-int v4, v4, v18

    int-to-float v2, v2

    mul-float/2addr v2, v12

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    int-to-float v3, v4

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    div-float/2addr v2, v9

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v3, :cond_28

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    if-ne v5, v8, :cond_27

    aput v1, v6, v4

    goto :goto_14

    :cond_27
    int-to-float v5, v1

    mul-float/2addr v5, v15

    aget v3, v3, v4

    shl-int v3, v4, v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v5, v3

    add-float v5, v5, v16

    float-to-int v3, v5

    aput v3, v6, v4

    :goto_14
    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v3, :cond_28

    int-to-float v1, v1

    mul-float/2addr v1, v15

    mul-float/2addr v2, v1

    :cond_28
    iget-object v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v1, v1, v17

    const/4 v3, 0x1

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    add-float v2, v2, v16

    float-to-int v1, v2

    aput v1, v6, v17

    :cond_29
    :goto_15
    const/4 v8, 0x1

    goto/16 :goto_21

    :cond_2a
    iget-boolean v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_ICCGray_stdScale:Z

    if-eqz v5, :cond_2d

    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v5, v2

    and-int v2, v2, v18

    aget-short v3, v5, v3

    and-int v3, v3, v18

    aget-short v4, v5, v4

    and-int v4, v4, v18

    int-to-float v2, v2

    mul-float/2addr v2, v12

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    int-to-float v3, v4

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    add-float v2, v2, v16

    float-to-int v2, v2

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromLinearGray16ToOtherGray16LUT:[S

    aget-short v2, v3, v2

    and-int v2, v2, v18

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v3, :cond_2c

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    if-ne v5, v8, :cond_2b

    aput v1, v6, v4

    goto :goto_16

    :cond_2b
    int-to-float v5, v1

    mul-float/2addr v5, v15

    aget v3, v3, v4

    shl-int v3, v4, v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v5, v3

    add-float v5, v5, v16

    float-to-int v3, v5

    aput v3, v6, v4

    :goto_16
    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v3, :cond_2c

    int-to-float v1, v1

    mul-float/2addr v1, v15

    mul-float/2addr v2, v1

    :cond_2c
    iget-object v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v1, v1, v17

    const/4 v3, 0x1

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    add-float v2, v2, v16

    float-to-int v1, v2

    aput v1, v6, v17

    goto :goto_15

    :cond_2d
    new-array v5, v14, [F

    int-to-float v2, v2

    mul-float/2addr v2, v15

    aput v2, v5, v17

    int-to-float v2, v3

    mul-float/2addr v2, v15

    const/4 v3, 0x1

    aput v2, v5, v3

    int-to-float v2, v4

    mul-float/2addr v2, v15

    aput v2, v5, v13

    iget-object v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v2, v5}, Lorg/apache/poi/java/awt/color/ColorSpace;->fromRGB([F)[F

    move-result-object v2

    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    if-eqz v3, :cond_30

    move/from16 v3, v17

    :goto_17
    iget v4, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v3, v4, :cond_30

    aget v4, v2, v3

    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compOffset:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compScale:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    aput v4, v2, v3

    aget v4, v2, v3

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2e

    aput v5, v2, v3

    :cond_2e
    aget v4, v2, v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2f

    aput v7, v2, v3

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_30
    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v3, :cond_32

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    iget v4, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    aget v5, v3, v4

    if-ne v5, v8, :cond_31

    aput v1, v6, v4

    goto :goto_18

    :cond_31
    int-to-float v5, v1

    mul-float/2addr v5, v15

    aget v3, v3, v4

    const/4 v7, 0x1

    shl-int v3, v7, v3

    sub-int/2addr v3, v7

    int-to-float v3, v3

    mul-float/2addr v5, v3

    add-float v5, v5, v16

    float-to-int v3, v5

    aput v3, v6, v4

    :goto_18
    iget-boolean v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v3, :cond_32

    int-to-float v1, v1

    mul-float/2addr v15, v1

    move/from16 v1, v17

    :goto_19
    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v3, :cond_32

    aget v3, v2, v1

    mul-float/2addr v3, v15

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_32
    move/from16 v1, v17

    :goto_1a
    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v3, :cond_29

    aget v3, v2, v1

    iget-object v4, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v1

    const/4 v5, 0x1

    shl-int v4, v5, v4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v3, v3, v16

    float-to-int v3, v3

    aput v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_33
    :goto_1b
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v7, :cond_35

    if-nez v5, :cond_34

    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT8:[B

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_1c

    :cond_34
    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->fromsRGB8LUT16:[S

    aget-short v2, v5, v2

    and-int v2, v2, v18

    aget-short v3, v5, v3

    and-int v3, v3, v18

    aget-short v4, v5, v4

    and-int v4, v4, v18

    const/16 v5, 0x10

    const v19, 0x37800080

    goto :goto_1d

    :cond_35
    :goto_1c
    move v5, v8

    move/from16 v19, v15

    :goto_1d
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v7, :cond_37

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    iget-object v7, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v9, v7, v14

    if-ne v9, v8, :cond_36

    aput v1, v6, v14

    goto :goto_1e

    :cond_36
    int-to-float v8, v1

    mul-float/2addr v8, v15

    aget v7, v7, v14

    const/4 v9, 0x1

    shl-int v7, v9, v7

    sub-int/2addr v7, v9

    int-to-float v7, v7

    mul-float/2addr v8, v7

    add-float v8, v8, v16

    float-to-int v7, v8

    aput v7, v6, v14

    :goto_1e
    iget-boolean v7, v0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v7, :cond_37

    int-to-float v1, v1

    mul-float/2addr v1, v15

    mul-float v19, v19, v1

    const/4 v5, -0x1

    :cond_37
    iget-object v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v7, v1, v17

    if-ne v7, v5, :cond_38

    aput v2, v6, v17

    const/4 v8, 0x1

    goto :goto_1f

    :cond_38
    int-to-float v2, v2

    mul-float v2, v2, v19

    aget v7, v1, v17

    const/4 v8, 0x1

    shl-int v7, v8, v7

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v2, v7

    add-float v2, v2, v16

    float-to-int v2, v2

    aput v2, v6, v17

    :goto_1f
    aget v2, v1, v8

    if-ne v2, v5, :cond_39

    aput v3, v6, v8

    goto :goto_20

    :cond_39
    int-to-float v2, v3

    mul-float v2, v2, v19

    aget v3, v1, v8

    shl-int v3, v8, v3

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v2, v2, v16

    float-to-int v2, v2

    aput v2, v6, v8

    :goto_20
    aget v2, v1, v13

    if-ne v2, v5, :cond_3a

    aput v4, v6, v13

    goto :goto_21

    :cond_3a
    int-to-float v2, v4

    mul-float v2, v2, v19

    aget v1, v1, v13

    shl-int v1, v8, v1

    sub-int/2addr v1, v8

    int-to-float v1, v1

    mul-float/2addr v2, v1

    add-float v2, v2, v16

    float-to-int v1, v2

    aput v1, v6, v13

    :goto_21
    iget v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-eqz v1, :cond_41

    if-eq v1, v8, :cond_3e

    if-ne v1, v14, :cond_3d

    iget v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->maxBits:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_3c

    move/from16 v1, v17

    :goto_22
    iget v2, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, v2, :cond_3c

    aget v2, v6, v1

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v3, v1

    shl-int v4, v8, v4

    sub-int/2addr v4, v8

    if-le v2, v4, :cond_3b

    aget v2, v3, v1

    shl-int v2, v8, v2

    sub-int/2addr v2, v8

    aput v2, v6, v1

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3c
    return-object v6

    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This method has not been implemented for transferType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    if-nez p2, :cond_3f

    iget v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v1, v1, [S

    goto :goto_23

    :cond_3f
    move-object/from16 v1, p2

    check-cast v1, [S

    :goto_23
    move/from16 v2, v17

    :goto_24
    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v2, v3, :cond_40

    aget v3, v6, v2

    and-int v3, v3, v18

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_40
    return-object v1

    :cond_41
    if-nez p2, :cond_42

    iget v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v1, v1, [B

    goto :goto_25

    :cond_42
    move-object/from16 v1, p2

    check-cast v1, [B

    :goto_25
    move/from16 v2, v17

    :goto_26
    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v2, v3, :cond_43

    aget v3, v6, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_43
    return-object v1
.end method

.method public getDataElements([FILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_1
    iget-boolean v3, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->nonStdScale:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v3, v3, [F

    move v5, p2

    move v4, v1

    :goto_1
    iget v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v4, v6, :cond_4

    aget v6, p1, v5

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compOffset:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->compScale:[F

    aget v7, v7, v4

    mul-float/2addr v6, v7

    aput v6, v3, v4

    aget v6, v3, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    aput v7, v3, v4

    :cond_2
    aget v6, v3, v4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    aput v7, v3, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v4, :cond_5

    add-int/2addr p2, v6

    aget p2, p1, p2

    aput p2, v3, v6

    :cond_5
    move p2, v1

    goto :goto_2

    :cond_6
    move-object v3, p1

    :goto_2
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_20

    if-eq v4, v2, :cond_1b

    const/4 v6, 0x2

    if-eq v4, v6, :cond_16

    const/4 v6, 0x3

    if-eq v4, v6, :cond_11

    const/4 v3, 0x4

    if-eq v4, v3, :cond_c

    const/4 v3, 0x5

    if-ne v4, v3, :cond_b

    if-nez p3, :cond_7

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array p3, p3, [D

    goto :goto_3

    :cond_7
    check-cast p3, [D

    :goto_3
    if-eqz v0, :cond_9

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr v0, p2

    aget v0, p1, v0

    float-to-double v3, v0

    :goto_4
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v0, :cond_8

    aget v0, p1, p2

    float-to-double v5, v0

    mul-double/2addr v5, v3

    aput-wide v5, p3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_4

    :cond_8
    aput-wide v3, p3, v0

    goto :goto_6

    :cond_9
    :goto_5
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, v0, :cond_a

    aget v0, p1, p2

    float-to-double v3, v0

    aput-wide v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_5

    :cond_a
    :goto_6
    return-object p3

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This method has not been implemented for transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    if-nez p3, :cond_d

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array p3, p3, [F

    goto :goto_7

    :cond_d
    check-cast p3, [F

    :goto_7
    if-eqz v0, :cond_f

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr v0, p2

    aget v0, p1, v0

    :goto_8
    iget v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v3, :cond_e

    aget v3, p1, p2

    mul-float/2addr v3, v0

    aput v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_8

    :cond_e
    aput v0, p3, v3

    goto :goto_a

    :cond_f
    :goto_9
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, v0, :cond_10

    aget v0, p1, p2

    aput v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_9

    :cond_10
    :goto_a
    return-object p3

    :cond_11
    if-nez p3, :cond_12

    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array p1, p1, [I

    goto :goto_b

    :cond_12
    move-object p1, p3

    check-cast p1, [I

    :goto_b
    if-eqz v0, :cond_14

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr p3, p2

    aget p3, v3, p3

    :goto_c
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v0, :cond_13

    aget v0, v3, p2

    mul-float/2addr v0, p3

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v1

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_c

    :cond_13
    iget-object p2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget p2, p2, v0

    shl-int p2, v2, p2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    add-float/2addr p3, v5

    float-to-int p2, p3

    aput p2, p1, v0

    goto :goto_e

    :cond_14
    :goto_d
    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, p3, :cond_15

    aget p3, v3, p2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v0, v0, v1

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr p3, v0

    add-float/2addr p3, v5

    float-to-int p3, p3

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_d

    :cond_15
    :goto_e
    return-object p1

    :cond_16
    if-nez p3, :cond_17

    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array p1, p1, [S

    goto :goto_f

    :cond_17
    move-object p1, p3

    check-cast p1, [S

    :goto_f
    const p3, 0x46fffe00    # 32767.0f

    if-eqz v0, :cond_19

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr v0, p2

    aget v0, v3, v0

    :goto_10
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v4, :cond_18

    aget v4, v3, p2

    mul-float/2addr v4, v0

    mul-float/2addr v4, p3

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_10

    :cond_18
    mul-float/2addr v0, p3

    add-float/2addr v0, v5

    float-to-int p2, v0

    int-to-short p2, p2

    aput-short p2, p1, v4

    goto :goto_12

    :cond_19
    :goto_11
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, v0, :cond_1a

    aget v0, v3, p2

    mul-float/2addr v0, p3

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-short v0, v0

    aput-short v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_11

    :cond_1a
    :goto_12
    return-object p1

    :cond_1b
    if-nez p3, :cond_1c

    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array p1, p1, [S

    goto :goto_13

    :cond_1c
    move-object p1, p3

    check-cast p1, [S

    :goto_13
    if-eqz v0, :cond_1e

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr p3, p2

    aget p3, v3, p3

    :goto_14
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v0, :cond_1d

    aget v0, v3, p2

    mul-float/2addr v0, p3

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v1

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-short v0, v0

    aput-short v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_14

    :cond_1d
    iget-object p2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget p2, p2, v0

    shl-int p2, v2, p2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    add-float/2addr p3, v5

    float-to-int p2, p3

    int-to-short p2, p2

    aput-short p2, p1, v0

    goto :goto_16

    :cond_1e
    :goto_15
    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, p3, :cond_1f

    aget p3, v3, p2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v0, v0, v1

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr p3, v0

    add-float/2addr p3, v5

    float-to-int p3, p3

    int-to-short p3, p3

    aput-short p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_15

    :cond_1f
    :goto_16
    return-object p1

    :cond_20
    if-nez p3, :cond_21

    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array p1, p1, [B

    goto :goto_17

    :cond_21
    move-object p1, p3

    check-cast p1, [B

    :goto_17
    if-eqz v0, :cond_23

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr p3, p2

    aget p3, v3, p3

    :goto_18
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, v0, :cond_22

    aget v0, v3, p2

    mul-float/2addr v0, p3

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v1

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_18

    :cond_22
    iget-object p2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget p2, p2, v0

    shl-int p2, v2, p2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    add-float/2addr p3, v5

    float-to-int p2, p3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    goto :goto_1a

    :cond_23
    :goto_19
    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v1, p3, :cond_24

    aget p3, v3, p2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v0, v0, v1

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr p3, v0

    add-float/2addr p3, v5

    float-to-int p3, p3

    int-to-byte p3, p3

    aput-byte p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v2

    goto :goto_19

    :cond_24
    :goto_1a
    return-object p1
.end method

.method public getDataElements([IILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    if-nez v0, :cond_a

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-lt v0, v1, :cond_9

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    if-nez p3, :cond_1

    new-array p3, v1, [I

    goto :goto_0

    :cond_1
    check-cast p3, [I

    :goto_0
    invoke-static {p1, p2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This method has not been implemented for transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p3, :cond_4

    new-array p3, v1, [S

    goto :goto_1

    :cond_4
    check-cast p3, [S

    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v2, v0, :cond_5

    add-int v0, p2, v2

    aget v0, p1, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object p3

    :cond_6
    if-nez p3, :cond_7

    new-array p3, v1, [B

    goto :goto_2

    :cond_7
    check-cast p3, [B

    :goto_2
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v2, v0, :cond_8

    add-int v0, p2, v2

    aget v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-object p3

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Component array too small (should be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This ColorModel does not support the unnormalized form"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGreen(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRGBComponent(II)I

    move-result p1

    return p1
.end method

.method public getGreen(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRGBComponent(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getNormalizedComponents(Ljava/lang/Object;[FI)[F
    .locals 6

    if-nez p2, :cond_0

    iget p2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    add-int/2addr p2, p3

    new-array p2, p2, [F

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    check-cast p1, [D

    move v3, p3

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v0, v4, :cond_7

    aget-wide v4, p1, v0

    double-to-float v4, v4

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This method has not been implemented for transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, [F

    move v3, p3

    move v0, v1

    :goto_1
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v0, v4, :cond_7

    aget v4, p1, v0

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v2

    goto :goto_1

    :cond_3
    check-cast p1, [I

    move v3, p3

    move v0, v1

    :goto_2
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v0, v4, :cond_7

    aget v4, p1, v0

    int-to-float v4, v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v5, v5, v0

    shl-int v5, v2, v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v2

    goto :goto_2

    :cond_4
    check-cast p1, [S

    move v3, p3

    move v0, v1

    :goto_3
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v0, v4, :cond_7

    aget-short v4, p1, v0

    int-to-float v4, v4

    const v5, 0x46fffe00    # 32767.0f

    div-float/2addr v4, v5

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v2

    goto :goto_3

    :cond_5
    check-cast p1, [S

    move v3, p3

    move v0, v1

    :goto_4
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v0, v4, :cond_7

    aget-short v4, p1, v0

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v5, v5, v0

    shl-int v5, v2, v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v2

    goto :goto_4

    :cond_6
    check-cast p1, [B

    move v3, p3

    move v0, v1

    :goto_5
    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-ge v0, v4, :cond_7

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v5, v5, v0

    shl-int v5, v2, v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v2

    goto :goto_5

    :cond_7
    iget-boolean p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr p1, p3

    aget p1, p2, p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    move p1, p3

    :goto_6
    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    add-int/2addr v2, p3

    if-ge p1, v2, :cond_8

    aget v2, p2, p1

    mul-float/2addr v2, v0

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->min:[F

    if-eqz p1, :cond_9

    :goto_7
    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v1, p1, :cond_9

    add-int p1, v1, p3

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->min:[F

    aget v0, v0, v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->diffMinMax:[F

    aget v2, v2, v1

    aget v3, p2, p1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    aput v0, p2, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    return-object p2
.end method

.method public getNormalizedComponents([II[FI)[F
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/image/ColorModel;->getNormalizedComponents([II[FI)[F

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This ColorModel does not support the unnormalized form"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRGB(I)I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->signed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getAlpha(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRed(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getGreen(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getBlue(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Component value is signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "More than one component per pixel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRGB(Ljava/lang/Object;)I
    .locals 5

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_sRGB_stdScale:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->is_LinearRGB_stdScale:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpaceType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRed(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getAlpha(Ljava/lang/Object;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 v1, v0, 0x10

    or-int/2addr p1, v1

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v2, v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->toRGB([F)[F

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getAlpha(Ljava/lang/Object;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    aget v2, v0, v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p1, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p1, v2

    const/4 v2, 0x2

    aget v0, v0, v2

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    shl-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getAlpha(Ljava/lang/Object;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRed(Ljava/lang/Object;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getGreen(Ljava/lang/Object;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getBlue(Ljava/lang/Object;)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getRed(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRGBComponent(II)I

    move-result p1

    return p1
.end method

.method public getRed(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->getRGBComponent(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getUnnormalizedComponents([FI[II)[I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentColorModel;->initScale()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ComponentColorModel;->noUnnorm:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/image/ColorModel;->getUnnormalizedComponents([FI[II)[I

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This ColorModel does not support the unnormalized form"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCompatibleRaster(Lorg/apache/poi/java/awt/image/Raster;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ColorModel;->getNumComponents()I

    move-result v3

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v4, v4, v1

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getTransferType()I

    move-result p1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-ne p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public isCompatibleSampleModel(Lorg/apache/poi/java/awt/image/SampleModel;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result p1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
