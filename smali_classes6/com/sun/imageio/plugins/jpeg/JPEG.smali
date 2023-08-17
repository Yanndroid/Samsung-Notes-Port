.class public Lcom/sun/imageio/plugins/jpeg/JPEG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;
    }
.end annotation


# static fields
.field public static final ADOBE_IMPOSSIBLE:I = -0x1

.field public static final ADOBE_UNKNOWN:I = 0x0

.field public static final ADOBE_YCC:I = 0x1

.field public static final ADOBE_YCCK:I = 0x2

.field public static final APP0:I = 0xe0

.field public static final APP1:I = 0xe1

.field public static final APP10:I = 0xea

.field public static final APP11:I = 0xeb

.field public static final APP12:I = 0xec

.field public static final APP13:I = 0xed

.field public static final APP14:I = 0xee

.field public static final APP15:I = 0xef

.field public static final APP2:I = 0xe2

.field public static final APP3:I = 0xe3

.field public static final APP4:I = 0xe4

.field public static final APP5:I = 0xe5

.field public static final APP6:I = 0xe6

.field public static final APP7:I = 0xe7

.field public static final APP8:I = 0xe8

.field public static final APP9:I = 0xe9

.field public static final COM:I = 0xfe

.field public static final DAC:I = 0xcc

.field public static final DEFAULT_QUALITY:F = 0.75f

.field public static final DENSITY_UNIT_ASPECT_RATIO:I = 0x0

.field public static final DENSITY_UNIT_DOTS_CM:I = 0x2

.field public static final DENSITY_UNIT_DOTS_INCH:I = 0x1

.field public static final DHP:I = 0xde

.field public static final DHT:I = 0xc4

.field public static final DNL:I = 0xdc

.field public static final DQT:I = 0xdb

.field public static final DRI:I = 0xdd

.field public static final EOI:I = 0xd9

.field public static final EXP:I = 0xdf

.field public static final JCS_CMYK:I = 0x4

.field public static final JCS_GRAYSCALE:I = 0x1

.field public static final JCS_RGB:I = 0x2

.field public static final JCS_RGBA:I = 0x6

.field public static final JCS_UNKNOWN:I = 0x0

.field public static final JCS_YCC:I = 0x5

.field public static final JCS_YCCA:I = 0xa

.field public static final JCS_YCCK:I = 0xb

.field public static final JCS_YCbCr:I = 0x3

.field public static final JCS_YCbCrA:I = 0x7

.field public static final JPG:I = 0xc8

.field public static final MIMETypes:[Ljava/lang/String;

.field public static final NUM_DENSITY_UNIT:I = 0x3

.field public static final NUM_JCS_CODES:I = 0xc

.field public static final RESTART_RANGE:I = 0x8

.field public static final RST0:I = 0xd0

.field public static final RST1:I = 0xd1

.field public static final RST2:I = 0xd2

.field public static final RST3:I = 0xd3

.field public static final RST4:I = 0xd4

.field public static final RST5:I = 0xd5

.field public static final RST6:I = 0xd6

.field public static final RST7:I = 0xd7

.field public static final SOF0:I = 0xc0

.field public static final SOF1:I = 0xc1

.field public static final SOF10:I = 0xca

.field public static final SOF11:I = 0xcb

.field public static final SOF13:I = 0xcd

.field public static final SOF14:I = 0xce

.field public static final SOF15:I = 0xcf

.field public static final SOF2:I = 0xc2

.field public static final SOF3:I = 0xc3

.field public static final SOF5:I = 0xc5

.field public static final SOF6:I = 0xc6

.field public static final SOF7:I = 0xc7

.field public static final SOF9:I = 0xc9

.field public static final SOI:I = 0xd8

.field public static final SOS:I = 0xda

.field public static final TEM:I = 0x1

.field public static final bOffsRGB:[I

.field public static final bandOffsets:[[I

.field public static final names:[Ljava/lang/String;

.field public static final nativeImageMetadataFormatClassName:Ljava/lang/String; = "com.sun.imageio.plugins.jpeg.JPEGImageMetadataFormat"

.field public static final nativeImageMetadataFormatName:Ljava/lang/String; = "javax_imageio_jpeg_image_1.0"

.field public static final nativeStreamMetadataFormatClassName:Ljava/lang/String; = "com.sun.imageio.plugins.jpeg.JPEGStreamMetadataFormat"

.field public static final nativeStreamMetadataFormatName:Ljava/lang/String; = "javax_imageio_jpeg_stream_1.0"

.field public static final suffixes:[Ljava/lang/String;

.field public static final vendor:Ljava/lang/String; = "Oracle Corporation"

.field public static final version:Ljava/lang/String; = "0.5"


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "JPEG"

    const-string v1, "jpeg"

    const-string v2, "JPG"

    const-string v3, "jpg"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG;->names:[Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG;->suffixes:[Ljava/lang/String;

    const-string v0, "image/jpeg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG;->MIMETypes:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    aput-object v3, v1, v4

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    aput-object v4, v1, v2

    const/4 v2, 0x3

    new-array v4, v2, [I

    fill-array-data v4, :array_1

    aput-object v4, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    sput-object v1, Lcom/sun/imageio/plugins/jpeg/JPEG;->bandOffsets:[[I

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG;->bOffsRGB:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToLinearQuality(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const p0, 0x3c23d70a    # 0.01f

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    move p0, v0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_2

    div-float/2addr v0, p0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    sub-float/2addr v0, p0

    :goto_0
    return v0
.end method

.method public static getDefaultHuffmanTables(Z)[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCLuminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    aput-object p0, v0, v2

    sget-object p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCChrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACLuminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    aput-object p0, v0, v2

    sget-object p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACChrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    aput-object p0, v0, v1

    :goto_0
    return-object v0
.end method

.method public static getDefaultQTables()[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    sget-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K1Div2Luminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K2Div2Chrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static isJFIFcompliant(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Z)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getNumComponents()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x3

    if-eq p0, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getColorSpace()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result p0

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    if-ne p0, p1, :cond_4

    return v1

    :cond_3
    if-ne p0, v3, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public static isNonStandardICC(Lorg/apache/poi/java/awt/color/ColorSpace;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->isCS_sRGB()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e9

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3eb

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3ec

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3ea

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static transformForType(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Z)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ColorModel;->getColorSpace()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    const/4 p0, 0x2

    move p1, p0

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :cond_4
    :goto_0
    return p1
.end method
