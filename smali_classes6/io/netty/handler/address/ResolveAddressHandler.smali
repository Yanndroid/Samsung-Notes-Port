.class public Lio/netty/handler/address/ResolveAddressHandler;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final resolverGroup:Lio/netty/resolver/AddressResolverGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/resolver/AddressResolverGroup<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/resolver/AddressResolverGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/AddressResolverGroup<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    const-string v0, "resolverGroup"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/resolver/AddressResolverGroup;

    iput-object p1, p0, Lio/netty/handler/address/ResolveAddressHandler;->resolverGroup:Lio/netty/resolver/AddressResolverGroup;

    return-void
.end method


# virtual methods
.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/address/ResolveAddressHandler;->resolverGroup:Lio/netty/resolver/AddressResolverGroup;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/resolver/AddressResolverGroup;->getResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/resolver/AddressResolver;->isSupported(Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2}, Lio/netty/resolver/AddressResolver;->isResolved(Ljava/net/SocketAddress;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Lio/netty/resolver/AddressResolver;->resolve(Ljava/net/SocketAddress;)Lio/netty/util/concurrent/Future;

    move-result-object p2

    new-instance v0, Lio/netty/handler/address/ResolveAddressHandler$1;

    invoke-direct {v0, p0, p4, p1, p3}, Lio/netty/handler/address/ResolveAddressHandler$1;-><init>(Lio/netty/handler/address/ResolveAddressHandler;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :goto_0
    return-void
.end method
