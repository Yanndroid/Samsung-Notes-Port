.class Lio/grpc/netty/NettyClientTransport$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientTransport;->shutdownNow(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientTransport;

.field public final synthetic val$reason:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientTransport;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientTransport$6;->this$0:Lio/grpc/netty/NettyClientTransport;

    iput-object p2, p0, Lio/grpc/netty/NettyClientTransport$6;->val$reason:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport$6;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-static {v0}, Lio/grpc/netty/NettyClientTransport;->access$200(Lio/grpc/netty/NettyClientTransport;)Lio/grpc/netty/ClientTransportLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport$6;->val$reason:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/netty/ClientTransportLifecycleManager;->notifyShutdown(Lio/grpc/Status;)Z

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport$6;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-static {v0}, Lio/grpc/netty/NettyClientTransport;->access$300(Lio/grpc/netty/NettyClientTransport;)Lio/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/ForcefulCloseCommand;

    iget-object v2, p0, Lio/grpc/netty/NettyClientTransport$6;->val$reason:Lio/grpc/Status;

    invoke-direct {v1, v2}, Lio/grpc/netty/ForcefulCloseCommand;-><init>(Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
