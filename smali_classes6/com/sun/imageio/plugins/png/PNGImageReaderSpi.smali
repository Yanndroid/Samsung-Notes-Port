.class public Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;
.source "SourceFile"


# static fields
.field private static final MIMETypes:[Ljava/lang/String;

.field private static final names:[Ljava/lang/String;

.field private static final readerClassName:Ljava/lang/String; = "com.sun.imageio.plugins.png.PNGImageReader"

.field private static final suffixes:[Ljava/lang/String;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"

.field private static final writerSpiNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "png"

    const-string v1, "PNG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;->names:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;->suffixes:[Ljava/lang/String;

    const-string v0, "image/png"

    const-string v1, "image/x-png"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;->MIMETypes:[Ljava/lang/String;

    const-string v0, "com.sun.imageio.plugins.png.PNGImageWriterSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    sget-object v3, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;->names:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;->suffixes:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;->MIMETypes:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    move-object v7, v1

    const/4 v2, 0x0

    const-class v6, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    aput-object v6, v1, v2

    sget-object v8, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    const-string v6, "com.sun.imageio.plugins.png.PNGImageReader"

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

    invoke-direct/range {v0 .. v18}, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canDecodeInput(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    aget-byte p1, v0, v1

    const/16 v2, -0x77

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    aget-byte p1, v0, v3

    const/16 v2, 0x50

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    aget-byte p1, v0, p1

    const/16 v2, 0x4e

    if-ne p1, v2, :cond_1

    const/4 p1, 0x3

    aget-byte p1, v0, p1

    const/16 v2, 0x47

    if-ne p1, v2, :cond_1

    const/4 p1, 0x4

    aget-byte p1, v0, p1

    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    const/4 p1, 0x5

    aget-byte p1, v0, p1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    const/4 p1, 0x6

    aget-byte p1, v0, p1

    const/16 v4, 0x1a

    if-ne p1, v4, :cond_1

    const/4 p1, 0x7

    aget-byte p1, v0, p1

    if-ne p1, v2, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public createReaderInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageReader;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/png/PNGImageReader;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Standard PNG image reader"

    return-object p1
.end method
