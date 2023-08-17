.class public Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_FRAME_SIZE:I = 0x4000


# instance fields
.field private final maxFrameSize:J

.field private receivedClosingHandshake:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>()V

    const-string v0, "decoderConfig"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->maxFramePayloadLength()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    return-void
.end method

.method private decodeBinaryFrame(Lio/netty/channel/ChannelHandlerContext;BLio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move v5, v2

    :cond_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v6

    const/4 v7, 0x7

    shl-long/2addr v3, v7

    and-int/lit8 v7, v6, 0x7f

    int-to-long v7, v7

    or-long/2addr v3, v7

    iget-wide v7, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v7, v3, v7

    if-gtz v7, :cond_3

    const/4 v7, 0x1

    add-int/2addr v5, v7

    const/16 v8, 0x8

    if-gt v5, v8, :cond_2

    and-int/lit16 v6, v6, 0x80

    const/16 v8, 0x80

    if-eq v6, v8, :cond_0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    cmp-long p2, v3, v0

    if-nez p2, :cond_1

    iput-boolean v7, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->receivedClosingHandshake:Z

    new-instance p2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {p2, v7, v2, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-object p2

    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    long-to-int p2, v3

    invoke-static {p1, p3, p2}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    new-instance p2, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    invoke-direct {p2, p1}, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object p2

    :cond_2
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {p1}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {p1}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    throw p1
.end method

.method private decodeTextFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 6

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    move-result v1

    add-int v2, v0, v1

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v2, v3}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result v2

    if-ne v2, v3, :cond_1

    int-to-long p1, v1

    iget-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {p1}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    int-to-long v0, v2

    iget-wide v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-static {p1, p2, v2}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0, v3}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result p2

    if-gez p2, :cond_2

    new-instance p2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    invoke-direct {p2, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object p2

    :cond_2
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "a text frame should not contain 0xFF."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {p1}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    throw p1
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 3
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

    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->receivedClosingHandshake:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decodeBinaryFrame(Lio/netty/channel/ChannelHandlerContext;BLio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decodeTextFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
