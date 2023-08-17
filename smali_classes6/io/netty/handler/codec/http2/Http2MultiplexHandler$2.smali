.class Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2MultiplexHandler;

.field public final synthetic val$cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexHandler;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2FrameStream;)Z
    .locals 1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object p1, p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;->val$cause:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    const/4 p1, 0x1

    return p1
.end method
