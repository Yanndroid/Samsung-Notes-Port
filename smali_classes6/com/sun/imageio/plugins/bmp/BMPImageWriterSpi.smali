.class public Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# static fields
.field private static entensions:[Ljava/lang/String;

.field private static formatNames:[Ljava/lang/String;

.field private static mimeType:[Ljava/lang/String;

.field private static readerSpiNames:[Ljava/lang/String;


# instance fields
.field private registered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sun.imageio.plugins.bmp.BMPImageReaderSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const-string v0, "bmp"

    const-string v1, "BMP"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->formatNames:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->entensions:[Ljava/lang/String;

    const-string v0, "image/bmp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->mimeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    sget-object v3, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->formatNames:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->entensions:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->mimeType:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    move-object v7, v1

    const-class v2, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v15, 0x0

    aput-object v2, v1, v15

    sget-object v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    const-string v6, "com.sun.imageio.plugins.bmp.BMPImageWriter"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v16, "javax_imageio_bmp_1.0"

    move-object/from16 v15, v16

    const-string v16, "com.sun.imageio.plugins.bmp.BMPMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->registered:Z

    return-void
.end method


# virtual methods
.method public canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_1

    return v1

    :cond_1
    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-lez v0, :cond_3

    instance-of p1, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v1
.end method

.method public createWriterInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageWriter;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Standard BMP Image Writer"

    return-object p1
.end method

.method public onRegistration(Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->registered:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->registered:Z

    return-void
.end method
