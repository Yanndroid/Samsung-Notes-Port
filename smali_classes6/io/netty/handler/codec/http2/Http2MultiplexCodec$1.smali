.class Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec;->onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

.field public final synthetic val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2FrameStream;)Z
    .locals 2

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object p1, p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->lastStreamId()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->isValidStreamId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->retainedDuplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
