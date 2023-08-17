.class Lio/grpc/netty/NettyClientTransport$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lio/grpc/netty/NettyClientTransport$4;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport$4;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-static {v0}, Lio/grpc/netty/NettyClientTransport;->access$200(Lio/grpc/netty/NettyClientTransport;)Lio/grpc/netty/ClientTransportLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport$4;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-static {v1}, Lio/grpc/netty/NettyClientTransport;->access$000(Lio/grpc/netty/NettyClientTransport;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/netty/ClientTransportLifecycleManager;->notifyTerminated(Lio/grpc/Status;)V

    return-void
.end method
