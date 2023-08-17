.class Lio/grpc/netty/NettyClientTransport$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientTransport;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientTransport;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientTransport$5;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport$5;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-static {v0}, Lio/grpc/netty/NettyClientTransport;->access$200(Lio/grpc/netty/NettyClientTransport;)Lio/grpc/netty/ClientTransportLifecycleManager;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/Utils;->statusFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/netty/ClientTransportLifecycleManager;->notifyTerminated(Lio/grpc/Status;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyClientTransport$5;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
