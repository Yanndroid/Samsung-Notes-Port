.class public Lio/netty/resolver/RoundRobinInetAddressResolver;
.super Lio/netty/resolver/InetNameResolver;
.source "SourceFile"


# instance fields
.field private final nameResolver:Lio/netty/resolver/NameResolver;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/resolver/NameResolver<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/resolver/InetNameResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object p2, p0, Lio/netty/resolver/RoundRobinInetAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    return-void
.end method

.method public static synthetic access$000(I)I
    .locals 0

    invoke-static {p0}, Lio/netty/resolver/RoundRobinInetAddressResolver;->randomIndex(I)I

    move-result p0

    return p0
.end method

.method private static randomIndex(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/netty/resolver/RoundRobinInetAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-interface {v0}, Lio/netty/resolver/NameResolver;->close()V

    return-void
.end method

.method public doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/resolver/RoundRobinInetAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-interface {v0, p1}, Lio/netty/resolver/NameResolver;->resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/resolver/RoundRobinInetAddressResolver$1;

    invoke-direct {v1, p0, p2, p1}, Lio/netty/resolver/RoundRobinInetAddressResolver$1;-><init>(Lio/netty/resolver/RoundRobinInetAddressResolver;Lio/netty/util/concurrent/Promise;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-void
.end method

.method public doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/resolver/RoundRobinInetAddressResolver;->nameResolver:Lio/netty/resolver/NameResolver;

    invoke-interface {v0, p1}, Lio/netty/resolver/NameResolver;->resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    new-instance v0, Lio/netty/resolver/RoundRobinInetAddressResolver$2;

    invoke-direct {v0, p0, p2}, Lio/netty/resolver/RoundRobinInetAddressResolver$2;-><init>(Lio/netty/resolver/RoundRobinInetAddressResolver;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-void
.end method
