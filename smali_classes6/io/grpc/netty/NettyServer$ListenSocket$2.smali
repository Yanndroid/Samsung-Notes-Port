.class Lio/grpc/netty/NettyServer$ListenSocket$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServer$ListenSocket;->getStats()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServer$ListenSocket;

.field public final synthetic val$ret:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServer$ListenSocket;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer$ListenSocket$2;->this$0:Lio/grpc/netty/NettyServer$ListenSocket;

    iput-object p2, p0, Lio/grpc/netty/NettyServer$ListenSocket$2;->val$ret:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lio/grpc/netty/NettyServer$ListenSocket$2;->val$ret:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v7, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v1, p0, Lio/grpc/netty/NettyServer$ListenSocket$2;->this$0:Lio/grpc/netty/NettyServer$ListenSocket;

    invoke-static {v1}, Lio/grpc/netty/NettyServer$ListenSocket;->access$2800(Lio/grpc/netty/NettyServer$ListenSocket;)Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v3

    iget-object v1, p0, Lio/grpc/netty/NettyServer$ListenSocket$2;->this$0:Lio/grpc/netty/NettyServer$ListenSocket;

    invoke-static {v1}, Lio/grpc/netty/NettyServer$ListenSocket;->access$2800(Lio/grpc/netty/NettyServer$ListenSocket;)Lio/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/netty/Utils;->getSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    invoke-virtual {v0, v7}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
