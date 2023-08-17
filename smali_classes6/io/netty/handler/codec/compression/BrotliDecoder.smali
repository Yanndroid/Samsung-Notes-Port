.class public final Lio/netty/handler/codec/compression/BrotliDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/BrotliDecoder$State;
    }
.end annotation


# instance fields
.field private decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

.field private destroyed:Z

.field private final inputBufferSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->ensureAvailability()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/BrotliDecoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    const-string v0, "inputBufferSize"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->inputBufferSize:I

    return-void
.end method

.method private decompress(Lio/netty/buffer/ByteBuf;Ljava/util/List;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/compression/BrotliDecoder$State;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/netty/buffer/ByteBufAllocator;",
            ")",
            "Lio/netty/handler/codec/compression/BrotliDecoder$State;"
        }
    .end annotation

    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/BrotliDecoder$1;->$SwitchMap$com$aayushatharva$brotli4j$decoder$DecoderJNI$Status:[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v1}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->getStatus()Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object p1, Lio/netty/handler/codec/compression/BrotliDecoder$State;->ERROR:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    return-object p1

    :cond_0
    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/BrotliDecoder;->pull(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->hasOutput()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/BrotliDecoder;->pull(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lio/netty/handler/codec/compression/BrotliDecoder$State;->NEEDS_MORE_INPUT:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    return-object p1

    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {p1, v0}, Lio/netty/handler/codec/compression/BrotliDecoder;->readBytes(Lio/netty/buffer/ByteBuf;Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v1, v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->push(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->push(I)V

    goto :goto_0

    :cond_5
    sget-object p1, Lio/netty/handler/codec/compression/BrotliDecoder$State;->DONE:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    return-object p1
.end method

.method private destroy()V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->destroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->destroyed:Z

    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->destroy()V

    :cond_0
    return-void
.end method

.method private pull(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    return-object p1
.end method

.method private static readBytes(Lio/netty/buffer/ByteBuf;Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/codec/compression/BrotliDecoder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    throw v0
.end method

.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->destroyed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lio/netty/handler/codec/compression/BrotliDecoder;->decompress(Lio/netty/buffer/ByteBuf;Ljava/util/List;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/compression/BrotliDecoder$State;

    move-result-object p1

    sget-object p2, Lio/netty/handler/codec/compression/BrotliDecoder$State;->DONE:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lio/netty/handler/codec/compression/BrotliDecoder;->destroy()V

    goto :goto_0

    :cond_2
    sget-object p2, Lio/netty/handler/codec/compression/BrotliDecoder$State;->ERROR:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    if-eq p1, p2, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string p2, "Brotli stream corrupted"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lio/netty/handler/codec/compression/BrotliDecoder;->destroy()V

    throw p1
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    new-instance p1, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    iget v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->inputBufferSize:I

    invoke-direct {p1, v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;-><init>(I)V

    iput-object p1, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    return-void
.end method

.method public handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/codec/compression/BrotliDecoder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    throw v0
.end method
