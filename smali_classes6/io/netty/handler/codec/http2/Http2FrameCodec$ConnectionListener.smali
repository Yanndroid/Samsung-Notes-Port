.class final Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2FrameCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectionListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;)V

    return-void
.end method

.method private onHttp2StreamStateChanged0(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v1, v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->access$700(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2Stream;)V

    return-void
.end method

.method public onStreamAdded(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->access$600(Lio/netty/handler/codec/http2/Http2FrameCodec;)Lio/netty/util/collection/IntObjectMap;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->setStreamAndProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    :cond_0
    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->onHttp2StreamStateChanged0(Lio/netty/handler/codec/http2/Http2Stream;)V

    return-void
.end method

.method public onStreamHalfClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->onHttp2StreamStateChanged0(Lio/netty/handler/codec/http2/Http2Stream;)V

    return-void
.end method
