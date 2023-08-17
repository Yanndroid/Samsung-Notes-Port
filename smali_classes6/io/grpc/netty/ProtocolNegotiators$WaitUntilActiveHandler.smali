.class final Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;
.super Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaitUntilActiveHandler"
.end annotation


# instance fields
.field public protocolNegotiationEventReceived:Z


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    return-void
.end method

.method private replaceOnActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-virtual {p0}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->getProtocolNegotiationEvent()Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/ProtocolNegotiationEvent;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/Grpc;->TRANSPORT_ATTR_LOCAL_ADDR:Lio/grpc/Attributes$Key;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/Grpc;->TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object p1

    sget-object v1, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    sget-object v2, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    invoke-virtual {p1, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/netty/ProtocolNegotiationEvent;->withAttributes(Lio/grpc/Attributes;)Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->replaceProtocolNegotiationEvent(Lio/grpc/netty/ProtocolNegotiationEvent;)V

    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;->protocolNegotiationEventReceived:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;->replaceOnActive(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->fireProtocolNegotiationEvent(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public protocolNegotiationEventTriggered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;->protocolNegotiationEventReceived:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;->replaceOnActive(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->fireProtocolNegotiationEvent(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method
