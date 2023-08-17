.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageWriterSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# static fields
.field private static readerSpiNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.sun.imageio.plugins.jpeg.JPEGImageReaderSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    sget-object v3, Lcom/sun/imageio/plugins/jpeg/JPEG;->names:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/jpeg/JPEG;->suffixes:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/jpeg/JPEG;->MIMETypes:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    move-object v7, v1

    const/4 v2, 0x0

    const-class v6, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aput-object v6, v1, v2

    sget-object v8, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const-string v1, "Oracle Corporation"

    const-string v2, "0.5"

    const-string v6, "com.sun.imageio.plugins.jpeg.JPEGImageWriter"

    const/4 v9, 0x1

    const-string v10, "javax_imageio_jpeg_stream_1.0"

    const-string v11, "com.sun.imageio.plugins.jpeg.JPEGStreamMetadataFormat"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "javax_imageio_jpeg_image_1.0"

    const-string v16, "com.sun.imageio.plugins.jpeg.JPEGImageMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object p1

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget v4, p1, v3

    if-le v4, v1, :cond_0

    aget v1, p1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lt v1, v2, :cond_3

    const/16 p1, 0x8

    if-le v1, p1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public createWriterInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageWriter;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Standard JPEG Image Writer"

    return-object p1
.end method

.method public isFormatLossless()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
