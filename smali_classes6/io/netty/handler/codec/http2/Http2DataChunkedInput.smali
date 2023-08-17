.class public final Lio/netty/handler/codec/http2/Http2DataChunkedInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/stream/ChunkedInput<",
        "Lio/netty/handler/codec/http2/Http2DataFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private endStreamSent:Z

.field private final input:Lio/netty/handler/stream/ChunkedInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Lio/netty/handler/codec/http2/Http2FrameStream;


# direct methods
.method public constructor <init>(Lio/netty/handler/stream/ChunkedInput;Lio/netty/handler/codec/http2/Http2FrameStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;",
            "Lio/netty/handler/codec/http2/Http2FrameStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "input"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/stream/ChunkedInput;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    const-string p1, "stream"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameStream;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->close()V

    return-void
.end method

.method public isEndOfInput()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->endStreamSent:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public progress()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v0

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 3

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->endStreamSent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->endStreamSent:Z

    new-instance p1, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    invoke-direct {p1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Z)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-virtual {p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0, p1}, Lio/netty/handler/stream/ChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBuf;

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v1}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2DataFrame;->isEndStream()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->endStreamSent:Z

    :cond_3
    return-object p1
.end method

.method public readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http2/Http2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http2/Http2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http2/Http2DataFrame;

    move-result-object p1

    return-object p1
.end method
