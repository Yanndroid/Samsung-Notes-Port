.class public Lorg/apache/poi/java/awt/image/PixelGrabber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/image/ImageConsumer;


# static fields
.field private static final DONEBITS:I = 0x70

.field private static final GRABBEDBITS:I = 0x30


# instance fields
.field public bytePixels:[B

.field public dstH:I

.field public dstOff:I

.field public dstScan:I

.field public dstW:I

.field public dstX:I

.field public dstY:I

.field private flags:I

.field private grabbing:Z

.field public imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

.field public intPixels:[I

.field public producer:Lorg/apache/poi/java/awt/image/ImageProducer;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Image;IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Image;->getSource()Lorg/apache/poi/java/awt/image/ImageProducer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->producer:Lorg/apache/poi/java/awt/image/ImageProducer;

    iput p2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstX:I

    iput p3, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstY:I

    iput p4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    iput p5, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    if-eqz p6, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Image;IIII[III)V
    .locals 9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Image;->getSource()Lorg/apache/poi/java/awt/image/ImageProducer;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/image/PixelGrabber;-><init>(Lorg/apache/poi/java/awt/image/ImageProducer;IIII[III)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/ImageProducer;IIII[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->producer:Lorg/apache/poi/java/awt/image/ImageProducer;

    iput p2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstX:I

    iput p3, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstY:I

    iput p4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    iput p5, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    iput p7, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstOff:I

    iput p8, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    iput-object p6, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    return-void
.end method

.method private convertToRGB()V
    .locals 6

    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(I)I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(I)I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    iput v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    iput v3, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstOff:I

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    return-void
.end method


# virtual methods
.method public declared-synchronized abortGrabbing()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageComplete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPixels()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public grabPixels()Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/image/PixelGrabber;->grabPixels(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized grabPixels(J)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v0, 0x70

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    and-int/lit8 p1, v0, 0x30

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-boolean v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->grabbing:Z

    if-nez v4, :cond_2

    iput-boolean v3, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->grabbing:Z

    iget v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->producer:Lorg/apache/poi/java/awt/image/ImageProducer;

    invoke-interface {v4, p0}, Lorg/apache/poi/java/awt/image/ImageProducer;->startProduction(Lorg/apache/poi/java/awt/image/ImageConsumer;)V

    :cond_2
    :goto_0
    iget-boolean v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->grabbing:Z

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v4, v6, v4

    if-gtz v4, :cond_4

    goto :goto_2

    :cond_4
    move-wide v4, v6

    :goto_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_5
    :goto_2
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 p1, p1, 0x30

    if-eqz p1, :cond_6

    move v2, v3

    :cond_6
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized imageComplete(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->grabbing:Z

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    or-int/lit16 p1, p1, 0xc0

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->producer:Lorg/apache/poi/java/awt/image/ImageProducer;

    invoke-interface {p1, p0}, Lorg/apache/poi/java/awt/image/ImageProducer;->removeConsumer(Lorg/apache/poi/java/awt/image/ImageConsumer;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setColorModel(Lorg/apache/poi/java/awt/image/ColorModel;)V
    .locals 0

    return-void
.end method

.method public setDimensions(II)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    if-gez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstX:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    :cond_0
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    if-gez p1, :cond_1

    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstY:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    :cond_1
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    const/4 p2, 0x3

    if-lez p1, :cond_3

    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    mul-int/2addr v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstOff:I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageComplete(I)V

    :cond_4
    :goto_1
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    return-void
.end method

.method public setHints(I)V
    .locals 0

    return-void
.end method

.method public setPixels(IIIILorg/apache/poi/java/awt/image/ColorModel;[BII)V
    .locals 6

    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstY:I

    if-ge p2, v0, :cond_1

    sub-int v1, v0, p2

    if-lt v1, p4, :cond_0

    return-void

    :cond_0
    mul-int v2, p8, v1

    add-int/2addr p7, v2

    add-int/2addr p2, v1

    sub-int/2addr p4, v1

    :cond_1
    add-int v1, p2, p4

    iget v2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    add-int v3, v0, v2

    if-le v1, v3, :cond_2

    add-int p4, v0, v2

    sub-int/2addr p4, p2

    if-gtz p4, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstX:I

    if-ge p1, v1, :cond_4

    sub-int v3, v1, p1

    if-lt v3, p3, :cond_3

    return-void

    :cond_3
    add-int/2addr p7, v3

    add-int/2addr p1, v3

    sub-int/2addr p3, v3

    :cond_4
    add-int v3, p1, p3

    iget v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    add-int v5, v1, v4

    if-le v3, v5, :cond_5

    add-int p3, v1, v4

    sub-int/2addr p3, p1

    if-gtz p3, :cond_5

    return-void

    :cond_5
    iget v3, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstOff:I

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    mul-int/2addr p2, v0

    add-int/2addr v3, p2

    sub-int/2addr p1, v1

    add-int/2addr v3, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    if-nez p1, :cond_6

    mul-int/2addr v2, v4

    new-array p1, v2, [B

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    iput v4, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstOff:I

    iput-object p5, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    if-eq p1, p5, :cond_7

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/PixelGrabber;->convertToRGB()V

    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    if-eqz p1, :cond_8

    move p1, p4

    :goto_1
    if-lez p1, :cond_8

    iget-object p2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    invoke-static {p6, p7, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p7, p8

    iget p2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    add-int/2addr v3, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    if-eqz p1, :cond_a

    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    sub-int/2addr p1, p3

    sub-int/2addr p8, p3

    :goto_2
    if-lez p4, :cond_a

    move p2, p3

    :goto_3
    if-lez p2, :cond_9

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v2, p7, 0x1

    aget-byte p7, p6, p7

    and-int/lit16 p7, p7, 0xff

    invoke-virtual {p5, p7}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(I)I

    move-result p7

    aput p7, v0, v3

    add-int/lit8 p2, p2, -0x1

    move v3, v1

    move p7, v2

    goto :goto_3

    :cond_9
    add-int/2addr p7, p8

    add-int/2addr v3, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_a
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    return-void
.end method

.method public setPixels(IIIILorg/apache/poi/java/awt/image/ColorModel;[III)V
    .locals 5

    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstY:I

    if-ge p2, v0, :cond_1

    sub-int v1, v0, p2

    if-lt v1, p4, :cond_0

    return-void

    :cond_0
    mul-int v2, p8, v1

    add-int/2addr p7, v2

    add-int/2addr p2, v1

    sub-int/2addr p4, v1

    :cond_1
    add-int v1, p2, p4

    iget v2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstH:I

    add-int v3, v0, v2

    if-le v1, v3, :cond_2

    add-int/2addr v0, v2

    sub-int p4, v0, p2

    if-gtz p4, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstX:I

    if-ge p1, v0, :cond_4

    sub-int v1, v0, p1

    if-lt v1, p3, :cond_3

    return-void

    :cond_3
    add-int/2addr p7, v1

    add-int/2addr p1, v1

    sub-int/2addr p3, v1

    :cond_4
    add-int v1, p1, p3

    iget v3, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstW:I

    add-int v4, v0, v3

    if-le v1, v4, :cond_5

    add-int/2addr v0, v3

    sub-int p3, v0, p1

    if-gtz p3, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->bytePixels:[B

    if-nez v0, :cond_6

    mul-int/2addr v2, v3

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    iput v3, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstOff:I

    iput-object p5, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/PixelGrabber;->convertToRGB()V

    :cond_7
    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstOff:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstY:I

    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    mul-int/2addr p2, v1

    add-int/2addr v0, p2

    iget p2, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstX:I

    sub-int/2addr p1, p2

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->imageModel:Lorg/apache/poi/java/awt/image/ColorModel;

    if-ne p1, p5, :cond_8

    :goto_1
    if-lez p4, :cond_b

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    invoke-static {p6, p7, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p7, p8

    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    add-int/2addr v0, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_8
    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p2

    if-eq p1, p2, :cond_9

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/PixelGrabber;->convertToRGB()V

    :cond_9
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->dstScan:I

    sub-int/2addr p1, p3

    sub-int/2addr p8, p3

    :goto_2
    if-lez p4, :cond_b

    move p2, p3

    :goto_3
    if-lez p2, :cond_a

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->intPixels:[I

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p7, 0x1

    aget p7, p6, p7

    invoke-virtual {p5, p7}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(I)I

    move-result p7

    aput p7, v1, v0

    add-int/lit8 p2, p2, -0x1

    move v0, v2

    move p7, v3

    goto :goto_3

    :cond_a
    add-int/2addr p7, p8

    add-int/2addr v0, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_b
    iget p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    return-void
.end method

.method public setProperties(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized startGrabbing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->grabbing:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->grabbing:Z

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->producer:Lorg/apache/poi/java/awt/image/ImageProducer;

    invoke-interface {v0, p0}, Lorg/apache/poi/java/awt/image/ImageProducer;->startProduction(Lorg/apache/poi/java/awt/image/ImageConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized status()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/PixelGrabber;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
