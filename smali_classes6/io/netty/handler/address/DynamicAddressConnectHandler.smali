.class public abstract Lio/netty/handler/address/DynamicAddressConnectHandler;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/address/DynamicAddressConnectHandler;->remoteAddress(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lio/netty/handler/address/DynamicAddressConnectHandler;->localAddress(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1, v0, p2, p4}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance p2, Lio/netty/handler/address/DynamicAddressConnectHandler$1;

    invoke-direct {p2, p0}, Lio/netty/handler/address/DynamicAddressConnectHandler$1;-><init>(Lio/netty/handler/address/DynamicAddressConnectHandler;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void

    :catch_0
    move-exception p1

    invoke-interface {p4, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public localAddress(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    return-object p2
.end method

.method public remoteAddress(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    return-object p1
.end method
