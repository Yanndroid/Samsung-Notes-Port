.class public final Lio/netty/handler/codec/compression/ZstdEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private buffer:Lio/netty/buffer/ByteBuf;

.field private final compressionLevel:I

.field private final maxEncodeSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/high16 v1, 0x10000

    const/high16 v2, 0x2000000

    invoke-direct {p0, v0, v1, v2}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x10000

    const/high16 v1, 0x2000000

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Z)V

    const/4 v0, 0x0

    const/16 v1, 0x16

    const-string v2, "compressionLevel"

    invoke-static {p1, v0, v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->compressionLevel:I

    const-string p1, "blockSize"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->blockSize:I

    const-string p1, "maxEncodeSize"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->maxEncodeSize:I

    return-void
.end method

.method private flushBufferedData(Lio/netty/buffer/ByteBuf;)V
    .locals 5

    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/github/luben/zstd/Zstd;->compressBound(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v3, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->compressionLevel:I

    invoke-static {v2, v0, v3}, Lcom/github/luben/zstd/Zstd;->compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    iget-object p1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lio/netty/handler/codec/compression/CompressionException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 6

    iget-object p3, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p2

    iget-object p3, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p3

    add-int/2addr p2, p3

    if-ltz p2, :cond_2

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    if-lez p2, :cond_0

    iget p3, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->blockSize:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long v4, p3

    invoke-static {v4, v5}, Lcom/github/luben/zstd/Zstd;->compressBound(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iget p2, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->maxEncodeSize:I

    int-to-long p2, p2

    cmp-long p2, v2, p2

    if-gtz p2, :cond_1

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    long-to-int p2, v2

    invoke-interface {p1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lio/netty/handler/codec/EncoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requested encode buffer size ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes) exceeds the maximum allowable size ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->maxEncodeSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lio/netty/handler/codec/EncoderException;

    const-string p2, "too much data to allocate a buffer for compression"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not added to a pipeline,or has been removed,buffer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/ZstdEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 2

    iget-object p1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz p1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isWritable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/ZstdEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not added to a pipeline,or has been removed,buffer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/ZstdEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/handler/codec/MessageToByteEncoder;->isPreferDirect()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/handler/codec/compression/ZstdEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/ZstdEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    iget v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->blockSize:I

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    iget-object p1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method
