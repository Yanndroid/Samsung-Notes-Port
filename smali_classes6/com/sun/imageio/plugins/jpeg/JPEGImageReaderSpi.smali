.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageReaderSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;
.source "SourceFile"


# static fields
.field private static writerSpiNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.sun.imageio.plugins.jpeg.JPEGImageWriterSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

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

    const-class v6, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    aput-object v6, v1, v2

    sget-object v8, Lcom/sun/imageio/plugins/jpeg/JPEGImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    const-string v1, "Oracle Corporation"

    const-string v2, "0.5"

    const-string v6, "com.sun.imageio.plugins.jpeg.JPEGImageReader"

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

    invoke-direct/range {v0 .. v18}, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canDecodeInput(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    const/16 p1, 0xff

    if-ne v0, p1, :cond_1

    const/16 p1, 0xd8

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public createReaderInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageReader;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Standard JPEG Image Reader"

    return-object p1
.end method
