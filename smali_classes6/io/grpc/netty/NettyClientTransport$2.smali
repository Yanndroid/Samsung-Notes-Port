.class Lio/grpc/netty/NettyClientTransport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientTransport;

.field public final synthetic val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

.field public final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientTransport;Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientTransport$2;->this$0:Lio/grpc/netty/NettyClientTransport;

    iput-object p2, p0, Lio/grpc/netty/NettyClientTransport$2;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iput-object p3, p0, Lio/grpc/netty/NettyClientTransport$2;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport$2;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-static {v0, p1}, Lio/grpc/netty/NettyClientTransport;->access$100(Lio/grpc/netty/NettyClientTransport;Lio/netty/channel/ChannelFuture;)Lio/grpc/Status;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport$2;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport$2;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/grpc/internal/Http2Ping;->notifyFailed(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyClientTransport$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
