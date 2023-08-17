.class final Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;
.super Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientTlsHandler"
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private final host:Ljava/lang/String;

.field private final port:I

.field private final sslContext:Lio/netty/handler/ssl/SslContext;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelHandler;Lio/netty/handler/ssl/SslContext;Ljava/lang/String;Ljava/util/concurrent/Executor;Lio/grpc/ChannelLogger;)V
    .locals 0

    invoke-direct {p0, p1, p5}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    const-string p1, "sslContext"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/SslContext;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-static {p3}, Lio/grpc/netty/ProtocolNegotiators;->parseAuthority(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$HostPort;

    move-result-object p1

    iget-object p2, p1, Lio/grpc/netty/ProtocolNegotiators$HostPort;->host:Ljava/lang/String;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->host:Ljava/lang/String;

    iget p1, p1, Lio/grpc/netty/ProtocolNegotiators$HostPort;->port:I

    iput p1, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->port:I

    iput-object p4, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private propagateTlsComplete(Lio/netty/channel/ChannelHandlerContext;Ljavax/net/ssl/SSLSession;)V
    .locals 5

    new-instance v0, Lio/grpc/InternalChannelz$Security;

    new-instance v1, Lio/grpc/InternalChannelz$Tls;

    invoke-direct {v1, p2}, Lio/grpc/InternalChannelz$Tls;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v0, v1}, Lio/grpc/InternalChannelz$Security;-><init>(Lio/grpc/InternalChannelz$Tls;)V

    invoke-virtual {p0}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->getProtocolNegotiationEvent()Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/ProtocolNegotiationEvent;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    sget-object v4, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    invoke-virtual {v2, v3, v4}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/Grpc;->TRANSPORT_ATTR_SSL_SESSION:Lio/grpc/Attributes$Key;

    invoke-virtual {v2, v3, p2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/grpc/netty/ProtocolNegotiationEvent;->withAttributes(Lio/grpc/Attributes;)Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object p2

    invoke-virtual {p2, v0}, Lio/grpc/netty/ProtocolNegotiationEvent;->withSecurity(Lio/grpc/InternalChannelz$Security;)Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->replaceProtocolNegotiationEvent(Lio/grpc/netty/ProtocolNegotiationEvent;)V

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->fireProtocolNegotiationEvent(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method


# virtual methods
.method public handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->host:Ljava/lang/String;

    iget v3, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->port:I

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/handler/ssl/SslContext;->newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    const-string v2, "HTTPS"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->executor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lio/netty/handler/ssl/SslHandler;

    iget-object v4, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->executor:Ljava/util/concurrent/Executor;

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

.method public userEventTriggered0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-eqz v0, :cond_3

    check-cast p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslCompletionEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    const-class v0, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object p2

    check-cast p2, Lio/netty/handler/ssl/SslHandler;

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslHandler;->applicationProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const/4 v1, 0x0

    const-string v2, "TLS negotiation succeeded."

    invoke-static {v0, p1, v2, v1}, Lio/grpc/netty/ProtocolNegotiators;->logSslEngineDetails(Ljava/util/logging/Level;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;->propagateTlsComplete(Lio/netty/channel/ChannelHandlerContext;Ljavax/net/ssl/SSLSession;)V

    goto :goto_1

    :cond_0
    const-string p2, "Failed ALPN negotiation: Unable to find compatible protocol"

    invoke-static {p2}, Lio/grpc/netty/ProtocolNegotiators;->access$000(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "TLS negotiation failed."

    invoke-static {v0, p1, v1, p2}, Lio/grpc/netty/ProtocolNegotiators;->logSslEngineDetails(Ljava/util/logging/Level;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lio/netty/handler/ssl/SslCompletionEvent;->cause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of v0, p2, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_1

    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v1, "Connection closed while performing TLS negotiation"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->userEventTriggered0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
