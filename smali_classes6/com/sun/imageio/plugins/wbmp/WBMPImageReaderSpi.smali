.class public Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;
.source "SourceFile"


# static fields
.field private static final MAX_WBMP_HEIGHT:I = 0x300

.field private static final MAX_WBMP_WIDTH:I = 0x400

.field private static entensions:[Ljava/lang/String;

.field private static formatNames:[Ljava/lang/String;

.field private static mimeType:[Ljava/lang/String;

.field private static writerSpiNames:[Ljava/lang/String;


# instance fields
.field private registered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sun.imageio.plugins.wbmp.WBMPImageWriterSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    const-string v0, "wbmp"

    const-string v1, "WBMP"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->formatNames:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->entensions:[Ljava/lang/String;

    const-string v0, "image/vnd.wap.wbmp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->mimeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    sget-object v3, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->formatNames:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->entensions:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->mimeType:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    move-object v7, v1

    const-class v2, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v15, 0x0

    aput-object v2, v1, v15

    sget-object v8, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    const-string v6, "com.sun.imageio.plugins.wbmp.WBMPImageReader"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v16, "javax_imageio_wbmp_1.0"

    move-object/from16 v15, v16

    const-string v16, "com.sun.imageio.plugins.wbmp.WBMPMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->registered:Z

    return-void
.end method


# virtual methods
.method public canDecodeInput(Ljava/lang/Object;)Z
    .locals 11

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    :try_start_0
    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readByte()B

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readByte()B

    move-result v2

    if-nez v0, :cond_8

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/sun/imageio/plugins/common/ReaderUtil;->readMultiByteInteger(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)I

    move-result v0

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/ReaderUtil;->readMultiByteInteger(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)I

    move-result v2

    if-lez v0, :cond_7

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    const/16 v3, 0x400

    if-ge v0, v3, :cond_3

    const/16 v0, 0x300

    if-ge v2, v0, :cond_3

    move v1, v6

    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    return v1

    :cond_4
    :try_start_1
    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v7

    sub-long/2addr v3, v7

    div-int/lit8 v5, v0, 0x8

    rem-int/lit8 v0, v0, 0x8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v6

    :goto_0
    add-int/2addr v5, v0

    int-to-long v7, v5

    int-to-long v9, v2

    mul-long/2addr v7, v9

    cmp-long v0, v3, v7

    if-nez v0, :cond_6

    move v1, v6

    :cond_6
    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    return v1

    :cond_7
    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    return v1

    :cond_8
    :goto_2
    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    return v1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    throw v0
.end method

.method public createReaderInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageReader;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Standard WBMP Image Reader"

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

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->registered:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->registered:Z

    return-void
.end method
