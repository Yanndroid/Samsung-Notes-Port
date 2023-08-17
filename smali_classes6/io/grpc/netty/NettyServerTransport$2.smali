.class Lio/grpc/netty/NettyServerTransport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerTransport;->getStats()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServerTransport;

.field public final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerTransport;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerTransport$2;->this$0:Lio/grpc/netty/NettyServerTransport;

    iput-object p2, p0, Lio/grpc/netty/NettyServerTransport$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport$2;->this$0:Lio/grpc/netty/NettyServerTransport;

    invoke-static {v1}, Lio/grpc/netty/NettyServerTransport;->access$200(Lio/grpc/netty/NettyServerTransport;)Lio/netty/channel/Channel;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/netty/NettyServerTransport;->access$300(Lio/grpc/netty/NettyServerTransport;Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
