.class public abstract Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final fallbackProtocol:Ljava/lang/String;

.field private sslHandlerChecked:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    const-string v0, "fallbackProtocol"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fallbackProtocol:Ljava/lang/String;

    return-void
.end method

.method private fireBufferedMessages()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :cond_0
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fireBufferedMessages()V

    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v0, p2}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->sslHandlerChecked:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->sslHandlerChecked:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    const-class v0, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method public abstract configurePipeline(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p2, Lio/netty/handler/codec/DecoderException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->handshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    throw p2

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const-string v2, "{} Failed to select the application-level protocol:"

    invoke-interface {v0, v2, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fireBufferedMessages()V

    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public handshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const-string v2, "{} TLS handshake failed:"

    invoke-interface {v0, v2, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    :try_start_0
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslCompletionEvent;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-class v2, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/SslHandler;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/netty/handler/ssl/SslHandler;->applicationProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fallbackProtocol:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, v1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->configurePipeline(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot find an SslHandler in the pipeline (required for application-level protocol negotiation)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslCompletionEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslCompletionEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslCompletionEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_3
    throw p2

    :cond_4
    :goto_3
    instance-of v0, p2, Lio/netty/channel/socket/ChannelInputShutdownEvent;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fireBufferedMessages()V

    :cond_5
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method
