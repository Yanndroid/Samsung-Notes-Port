.class final Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;
.super Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyProtocolNegotiationHandler"
.end annotation


# instance fields
.field private final address:Ljava/net/SocketAddress;

.field private final password:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final userName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p4, p5}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    const-string p4, "address"

    invoke-static {p1, p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->address:Ljava/net/SocketAddress;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->userName:Ljava/lang/String;

    iput-object p3, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public protocolNegotiationEventTriggered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->userName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/proxy/HttpProxyHandler;

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->address:Ljava/net/SocketAddress;

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->userName:Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lio/netty/handler/proxy/HttpProxyHandler;

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;->address:Ljava/net/SocketAddress;

    invoke-direct {v0, v1}, Lio/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;)V

    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public userEventTriggered0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lio/netty/handler/proxy/ProxyConnectionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->fireProtocolNegotiationEvent(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
