.class public Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# static fields
.field private static final MIMETypes:[Ljava/lang/String;

.field private static final names:[Ljava/lang/String;

.field private static final readerSpiNames:[Ljava/lang/String;

.field private static final suffixes:[Ljava/lang/String;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"

.field private static final writerClassName:Ljava/lang/String; = "com.sun.imageio.plugins.png.PNGImageWriter"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "png"

    const-string v1, "PNG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;->names:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;->suffixes:[Ljava/lang/String;

    const-string v0, "image/png"

    const-string v1, "image/x-png"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;->MIMETypes:[Ljava/lang/String;

    const-string v0, "com.sun.imageio.plugins.png.PNGImageReaderSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    sget-object v3, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;->names:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;->suffixes:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;->MIMETypes:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    move-object v7, v1

    const/4 v2, 0x0

    const-class v6, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aput-object v6, v1, v2

    sget-object v8, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    const-string v6, "com.sun.imageio.plugins.png.PNGImageWriter"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "javax_imageio_png_1.0"

    const-string v16, "com.sun.imageio.plugins.png.PNGMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    aget v6, v1, v5

    if-le v6, v3, :cond_0

    aget v3, v1, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-lt v3, v4, :cond_9

    const/16 v1, 0x10

    if-le v3, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v0

    if-lt v0, v4, :cond_9

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v3

    instance-of p1, p1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz p1, :cond_4

    return v4

    :cond_4
    if-eq v0, v4, :cond_5

    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    :cond_5
    if-eqz v3, :cond_6

    return v2

    :cond_6
    const/4 p1, 0x2

    if-eq v0, p1, :cond_7

    if-ne v0, v1, :cond_8

    :cond_7
    if-nez v3, :cond_8

    return v2

    :cond_8
    return v4

    :cond_9
    :goto_1
    return v2
.end method

.method public createWriterInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageWriter;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/png/PNGImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Standard PNG image writer"

    return-object p1
.end method
