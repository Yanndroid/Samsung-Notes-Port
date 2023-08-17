.class Lio/grpc/netty/NettyServer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServer;->start(Lio/grpc/internal/ServerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Lio/netty/channel/ChannelFuture;",
        "Ljava/net/SocketAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServer;

.field public final synthetic val$b:Lio/netty/bootstrap/ServerBootstrap;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServer;Lio/netty/bootstrap/ServerBootstrap;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer$2;->this$0:Lio/grpc/netty/NettyServer;

    iput-object p2, p0, Lio/grpc/netty/NettyServer$2;->val$b:Lio/netty/bootstrap/ServerBootstrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/NettyServer$2;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelFuture;",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lio/grpc/netty/NettyServer$2;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v1}, Lio/grpc/netty/NettyServer;->access$1900(Lio/grpc/netty/NettyServer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    iget-object v3, p0, Lio/grpc/netty/NettyServer$2;->val$b:Lio/netty/bootstrap/ServerBootstrap;

    invoke-virtual {v3, v2}, Lio/netty/bootstrap/AbstractBootstrap;->bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/netty/NettyServer$2;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v4}, Lio/grpc/netty/NettyServer;->access$2000(Lio/grpc/netty/NettyServer;)Lio/netty/channel/group/ChannelGroup;

    move-result-object v4

    invoke-interface {v3}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
