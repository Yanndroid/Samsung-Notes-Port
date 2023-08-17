.class public final Lio/grpc/netty/UdsNettyChannelProvider;
.super Lio/grpc/ManagedChannelProvider;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ManagedChannelProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic builderForAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/UdsNettyChannelProvider;->builderForAddress(Ljava/lang/String;I)Lio/grpc/netty/NettyChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public builderForAddress(Ljava/lang/String;I)Lio/grpc/netty/NettyChannelBuilder;
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "NettyChannelProvider shadows this implementation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic builderForTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/UdsNettyChannelProvider;->builderForTarget(Ljava/lang/String;)Lio/grpc/netty/NettyChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public builderForTarget(Ljava/lang/String;)Lio/grpc/netty/NettyChannelBuilder;
    .locals 1

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "NettyChannelProvider shadows this implementation"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getSupportedSocketAddressTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/Utils;->EPOLL_DOMAIN_CLIENT_CHANNEL_TYPE:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;
    .locals 1

    new-instance v0, Lio/grpc/netty/NettyChannelProvider;

    invoke-direct {v0}, Lio/grpc/netty/NettyChannelProvider;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/NettyChannelProvider;->newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;->getChannelBuilder()Lio/grpc/ManagedChannelBuilder;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;->getChannelBuilder()Lio/grpc/ManagedChannelBuilder;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/NettyChannelBuilder;

    sget-object v0, Lio/grpc/netty/Utils;->DEFAULT_WORKER_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/grpc/netty/NettyChannelBuilder;->eventLoopGroupPool(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/NettyChannelBuilder;

    move-result-object p2

    sget-object v0, Lio/grpc/netty/Utils;->EPOLL_DOMAIN_CLIENT_CHANNEL_TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lio/grpc/netty/NettyChannelBuilder;->channelType(Ljava/lang/Class;)Lio/grpc/netty/NettyChannelBuilder;

    :cond_0
    return-object p1
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
