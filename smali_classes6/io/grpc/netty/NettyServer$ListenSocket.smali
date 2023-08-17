.class final Lio/grpc/netty/NettyServer$ListenSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/InternalInstrumented;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenSocket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/InternalInstrumented<",
        "Lio/grpc/InternalChannelz$SocketStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final ch:Lio/netty/channel/Channel;

.field private final id:Lio/grpc/InternalLogId;


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/NettyServer$ListenSocket;->ch:Lio/netty/channel/Channel;

    const-class v0, Lio/grpc/netty/NettyServer$ListenSocket;

    invoke-interface {p1}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServer$ListenSocket;->id:Lio/grpc/InternalLogId;

    return-void
.end method

.method public static synthetic access$2800(Lio/grpc/netty/NettyServer$ListenSocket;)Lio/netty/channel/Channel;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer$ListenSocket;->ch:Lio/netty/channel/Channel;

    return-object p0
.end method


# virtual methods
.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServer$ListenSocket;->id:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServer$ListenSocket;->ch:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lio/grpc/InternalChannelz$SocketStats;

    const/4 v3, 0x0

    iget-object v2, p0, Lio/grpc/netty/NettyServer$ListenSocket;->ch:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v2, p0, Lio/grpc/netty/NettyServer$ListenSocket;->ch:Lio/netty/channel/Channel;

    invoke-static {v2}, Lio/grpc/netty/Utils;->getSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget-object v1, p0, Lio/grpc/netty/NettyServer$ListenSocket;->ch:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyServer$ListenSocket$2;

    invoke-direct {v2, p0, v0}, Lio/grpc/netty/NettyServer$ListenSocket$2;-><init>(Lio/grpc/netty/NettyServer$ListenSocket;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutorGroup;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyServer$ListenSocket$1;

    invoke-direct {v2, p0, v0}, Lio/grpc/netty/NettyServer$ListenSocket$1;-><init>(Lio/grpc/netty/NettyServer$ListenSocket;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServer$ListenSocket;->id:Lio/grpc/InternalLogId;

    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServer$ListenSocket;->ch:Lio/netty/channel/Channel;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
