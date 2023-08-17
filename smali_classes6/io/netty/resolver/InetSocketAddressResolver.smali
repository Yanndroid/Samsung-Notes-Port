.class public Lio/netty/resolver/InetSocketAddressResolver;
.super Lio/netty/resolver/AbstractAddressResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/resolver/AbstractAddressResolver<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field public final nameResolver:Lio/netty/resolver/NameResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/resolver/NameResolver<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;Lio/netty/resolver/NameResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/resolver/NameResolver<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0, p1, v0}, Lio/netty/resolver/AbstractAddressResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Class;)V

    iput-object p2, p0, Lio/netty/resolver/InetSocketAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-interface {v0}, Lio/netty/resolver/NameResolver;->close()V

    return-void
.end method

.method public doIsResolved(Ljava/net/InetSocketAddress;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic doIsResolved(Ljava/net/SocketAddress;)Z
    .locals 0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1}, Lio/netty/resolver/InetSocketAddressResolver;->doIsResolved(Ljava/net/InetSocketAddress;)Z

    move-result p1

    return p1
.end method

.method public doResolve(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/resolver/NameResolver;->resolve(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/resolver/InetSocketAddressResolver$1;

    invoke-direct {v1, p0, p2, p1}, Lio/netty/resolver/InetSocketAddressResolver$1;-><init>(Lio/netty/resolver/InetSocketAddressResolver;Lio/netty/util/concurrent/Promise;Ljava/net/InetSocketAddress;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-void
.end method

.method public bridge synthetic doResolve(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/InetSocketAddressResolver;->doResolve(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method public doResolveAll(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/resolver/InetSocketAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/resolver/NameResolver;->resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/resolver/InetSocketAddressResolver$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/resolver/InetSocketAddressResolver$2;-><init>(Lio/netty/resolver/InetSocketAddressResolver;Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-void
.end method

.method public bridge synthetic doResolveAll(Ljava/net/SocketAddress;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/InetSocketAddressResolver;->doResolveAll(Ljava/net/InetSocketAddress;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method
