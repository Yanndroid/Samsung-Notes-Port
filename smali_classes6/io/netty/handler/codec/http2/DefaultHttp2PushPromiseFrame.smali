.class public final Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2PushPromiseFrame;


# instance fields
.field private final http2Headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private final padding:I

.field private final promisedStreamId:I

.field private pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

.field private streamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;I)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;II)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->http2Headers:Lio/netty/handler/codec/http2/Http2Headers;

    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->padding:I

    iput p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->promisedStreamId:I

    return-void
.end method


# virtual methods
.method public http2Headers()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->http2Headers:Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "PUSH_PROMISE_FRAME"

    return-object v0
.end method

.method public padding()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->padding:I

    return v0
.end method

.method public promisedStreamId()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->promisedStreamId:I

    return v0
.end method

.method public pushStream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object v0
.end method

.method public pushStream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object p0
.end method

.method public stream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->streamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object v0
.end method

.method public stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2PushPromiseFrame;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->streamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object p0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2PushPromiseFrame;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultHttp2PushPromiseFrame{pushStreamFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", http2Headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->http2Headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->streamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->padding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
