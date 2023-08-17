.class public final Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/stream/ChunkedInput<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private final input:Lio/netty/handler/stream/ChunkedInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private final rsv:I


# direct methods
.method public constructor <init>(Lio/netty/handler/stream/ChunkedInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;-><init>(Lio/netty/handler/stream/ChunkedInput;I)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/stream/ChunkedInput;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "input"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/stream/ChunkedInput;

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    iput p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->rsv:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->close()V

    return-void
.end method

.method public isEndOfInput()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public progress()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v0

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0, p1}, Lio/netty/handler/stream/ChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBuf;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v1}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v1

    iget v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->rsv:I

    invoke-direct {v0, v1, v2, p1}, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object p1

    return-object p1
.end method
