.class final Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;
.super Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Http2MultiplexCodecStreamChannel"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$004(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;ILio/netty/channel/ChannelHandler;)V

    return-void
.end method


# virtual methods
.method public addChannelToReadCompletePendingQueue()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$200(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$300(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flush0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public isParentReadInProgress()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$100(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Z

    move-result v0

    return v0
.end method

.method public parentContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public write0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-virtual {v1, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-object v0
.end method
