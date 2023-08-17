.class public Lio/netty/handler/ipfilter/UniqueIpFilter;
.super Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final connected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;-><init>()V

    new-instance v0, Lio/netty/util/internal/ConcurrentSet;

    invoke-direct {v0}, Lio/netty/util/internal/ConcurrentSet;-><init>()V

    iput-object v0, p0, Lio/netty/handler/ipfilter/UniqueIpFilter;->connected:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/ipfilter/UniqueIpFilter;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ipfilter/UniqueIpFilter;->connected:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z
    .locals 1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    iget-object v0, p0, Lio/netty/handler/ipfilter/UniqueIpFilter;->connected:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance v0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/ipfilter/UniqueIpFilter$1;-><init>(Lio/netty/handler/ipfilter/UniqueIpFilter;Ljava/net/InetAddress;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Z
    .locals 0

    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ipfilter/UniqueIpFilter;->accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z

    move-result p1

    return p1
.end method
