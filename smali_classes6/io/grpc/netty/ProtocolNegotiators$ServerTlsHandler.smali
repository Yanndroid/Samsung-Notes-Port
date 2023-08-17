.class final Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerTlsHandler"
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private final next:Lio/netty/channel/ChannelHandler;

.field private pne:Lio/grpc/netty/ProtocolNegotiationEvent;

.field private final sslContext:Lio/netty/handler/ssl/SslContext;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelHandler;Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandler;",
            "Lio/netty/handler/ssl/SslContext;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    sget-object v0, Lio/grpc/netty/ProtocolNegotiationEvent;->DEFAULT:Lio/grpc/netty/ProtocolNegotiationEvent;

    iput-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    const-string v0, "sslContext"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/handler/ssl/SslContext;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    const-string p2, "next"

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandler;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->next:Lio/netty/channel/ChannelHandler;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->executor:Ljava/util/concurrent/Executor;

    :cond_0
    return-void
.end method

.method private fireProtocolNegotiationEvent(Lio/netty/channel/ChannelHandlerContext;Ljavax/net/ssl/SSLSession;)V
    .locals 4

    new-instance v0, Lio/grpc/InternalChannelz$Security;

    new-instance v1, Lio/grpc/InternalChannelz$Tls;

    invoke-direct {v1, p2}, Lio/grpc/InternalChannelz$Tls;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v0, v1}, Lio/grpc/InternalChannelz$Security;-><init>(Lio/grpc/InternalChannelz$Tls;)V

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    invoke-virtual {v1}, Lio/grpc/netty/ProtocolNegotiationEvent;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    sget-object v3, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    invoke-virtual {v1, v2, v3}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/Grpc;->TRANSPORT_ATTR_SSL_SESSION:Lio/grpc/Attributes$Key;

    invoke-virtual {v1, v2, p2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object p2

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    invoke-virtual {v1, p2}, Lio/grpc/netty/ProtocolNegotiationEvent;->withAttributes(Lio/grpc/Attributes;)Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object p2

    invoke-virtual {p2, v0}, Lio/grpc/netty/ProtocolNegotiationEvent;->withSecurity(Lio/grpc/InternalChannelz$Security;)Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/SslContext;->newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->executor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lio/netty/handler/ssl/SslHandler;

    iget-object v4, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v0, v3, v4}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lio/netty/handler/ssl/SslHandler;

    invoke-direct {v2, v0, v3}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    :goto_0
    const/4 v0, 0x0

    invoke-interface {v1, p1, v0, v2}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p2, Lio/grpc/netty/ProtocolNegotiationEvent;

    if-eqz v0, :cond_0

    check-cast p2, Lio/grpc/netty/ProtocolNegotiationEvent;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-eqz v0, :cond_3

    check-cast p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslCompletionEvent;->isSuccess()Z

    move-result v0

    const-string v1, "TLS negotiation failed for new client."

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0, p1, v1, v2}, Lio/grpc/netty/ProtocolNegotiators;->logSslEngineDetails(Ljava/util/logging/Level;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslCompletionEvent;->cause()Ljava/lang/Throwable;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void

    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    const-class v0, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object p2

    check-cast p2, Lio/netty/handler/ssl/SslHandler;

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslHandler;->applicationProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p2, p1, v1, v2}, Lio/grpc/netty/ProtocolNegotiators;->logSslEngineDetails(Ljava/util/logging/Level;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "Failed protocol negotiation: Unable to find compatible protocol"

    invoke-static {p2}, Lio/grpc/netty/ProtocolNegotiators;->access$000(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->next:Lio/netty/channel/ChannelHandler;

    invoke-interface {v0, v1, v2, v3}, Lio/netty/channel/ChannelPipeline;->replace(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;->fireProtocolNegotiationEvent(Lio/netty/channel/ChannelHandlerContext;Ljavax/net/ssl/SSLSession;)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
