.class public Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# static fields
.field private static final MIMETypes:[Ljava/lang/String;

.field private static final names:[Ljava/lang/String;

.field private static final readerSpiNames:[Ljava/lang/String;

.field private static final suffixes:[Ljava/lang/String;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"

.field private static final writerClassName:Ljava/lang/String; = "com.sun.imageio.plugins.gif.GIFImageWriter"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gif"

    const-string v1, "GIF"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->names:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->suffixes:[Ljava/lang/String;

    const-string v0, "image/gif"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->MIMETypes:[Ljava/lang/String;

    const-string v0, "com.sun.imageio.plugins.gif.GIFImageReaderSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    sget-object v3, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->names:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->suffixes:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->MIMETypes:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    move-object v7, v1

    const/4 v2, 0x0

    const-class v6, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aput-object v6, v1, v2

    sget-object v8, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    const-string v6, "com.sun.imageio.plugins.gif.GIFImageWriter"

    const/4 v9, 0x1

    const-string v10, "javax_imageio_gif_stream_1.0"

    const-string v11, "com.sun.imageio.plugins.gif.GIFStreamMetadataFormat"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "javax_imageio_gif_image_1.0"

    const-string v16, "com.sun.imageio.plugins.gif.GIFImageMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 7

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {v0, v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result v2

    const/16 v5, 0x8

    if-gt v2, v5, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getWidth()I

    move-result v2

    const v6, 0xffff

    if-gt v2, v6, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getHeight()I

    move-result v0

    if-gt v0, v6, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ColorModel;->getComponentSize()[I

    move-result-object v0

    aget v0, v0, v3

    if-gt v0, v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    return v4

    :cond_2
    invoke-static {p1}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->canCreatePalette(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createWriterInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageWriter;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/gif/GIFImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;-><init>(Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Standard GIF image writer"

    return-object p1
.end method
