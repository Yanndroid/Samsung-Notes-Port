.class public abstract Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# instance fields
.field private volatile frameCodec:Lio/netty/handler/codec/http2/Http2FrameCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    return-void
.end method

.method private static requireHttp2FrameCodec(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http2/Http2FrameCodec;
    .locals 2

    const-class v0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not found in the channel pipeline."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;->frameCodec:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    return-void
.end method

.method public final handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;->requireHttp2FrameCodec(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http2/Http2FrameCodec;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;->frameCodec:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;->handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    return-void
.end method

.method public final handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;->frameCodec:Lio/netty/handler/codec/http2/Http2FrameCodec;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;->frameCodec:Lio/netty/handler/codec/http2/Http2FrameCodec;

    throw p1
.end method

.method public handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    return-void
.end method

.method public final newStream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;->frameCodec:Lio/netty/handler/codec/http2/Http2FrameCodec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->newStream()Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found. Has the handler been added to a pipeline?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
