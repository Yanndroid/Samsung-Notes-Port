.class Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;
.super Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;
.source "SourceFile"


# instance fields
.field private finished:Z

.field private final z:Lcom/jcraft/jzlib/Deflater;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;III)V
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V

    new-instance p1, Lcom/jcraft/jzlib/Deflater;

    invoke-direct {p1}, Lcom/jcraft/jzlib/Deflater;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    if-ltz p2, :cond_4

    const/16 v0, 0x9

    if-gt p2, v0, :cond_4

    if-lt p3, v0, :cond_3

    const/16 v1, 0xf

    if-gt p3, v1, :cond_3

    const/4 v1, 0x1

    if-lt p4, v1, :cond_2

    if-gt p4, v0, :cond_2

    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/jcraft/jzlib/Deflater;->deflateInit(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    array-length p3, p2

    invoke-virtual {p1, p2, p3}, Lcom/jcraft/jzlib/Deflater;->deflateSetDictionary([BI)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lio/netty/handler/codec/compression/CompressionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to set the SPDY dictionary: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Lio/netty/handler/codec/compression/CompressionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to initialize an SPDY header block deflater: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "memLevel: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: 1-9)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "windowBits: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: 9-15)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "compressionLevel: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: 0-9)"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encode(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v1, v1, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v2, v2, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget-object v3, v3, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    array-length v3, v3

    int-to-double v3, v3

    const-wide v5, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0xc

    invoke-interface {p1, v3}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v5

    iput-object v5, v4, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v3, v4, Lcom/jcraft/jzlib/Deflater;->avail_out:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/jcraft/jzlib/Deflater;->deflate(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v4, v4, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    if-nez v3, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v1, v1, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v0, v1, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v0, v1, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    return-object p1

    :cond_1
    :try_start_4
    new-instance v1, Lio/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compression failure: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v3, v3, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object p1, v0

    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v0, v2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v0, v2, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_2
    throw v1
.end method

.method private setInput(Lio/netty/buffer/ByteBuf;)V
    .locals 3

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    const/4 v2, 0x0

    :goto_0
    iget-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, p1, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v2, p1, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    iget-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v0, p1, Lcom/jcraft/jzlib/Deflater;->avail_in:I

    return-void
.end method


# virtual methods
.method public encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;
    .locals 1

    const-string v0, "alloc"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "frame"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object p1

    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->setInput(Lio/netty/buffer/ByteBuf;)V

    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1
.end method

.method public end()V
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->finished:Z

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflater;->deflateEnd()I

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v0, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    return-void
.end method
