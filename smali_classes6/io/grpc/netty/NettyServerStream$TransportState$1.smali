.class Lio/grpc/netty/NettyServerStream$TransportState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerStream$TransportState;->runOnTransportThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServerStream$TransportState;

.field public final synthetic val$link:Lio/perfmark/Link;

.field public final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerStream$TransportState;Lio/perfmark/Link;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream$TransportState$1;->this$0:Lio/grpc/netty/NettyServerStream$TransportState;

    iput-object p2, p0, Lio/grpc/netty/NettyServerStream$TransportState$1;->val$link:Lio/perfmark/Link;

    iput-object p3, p0, Lio/grpc/netty/NettyServerStream$TransportState$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState$1;->this$0:Lio/grpc/netty/NettyServerStream$TransportState;

    invoke-static {v0}, Lio/grpc/netty/NettyServerStream$TransportState;->access$500(Lio/grpc/netty/NettyServerStream$TransportState;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "NettyServerStream$TransportState.runOnTransportThread"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState$1;->val$link:Lio/perfmark/Link;

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState$1;->this$0:Lio/grpc/netty/NettyServerStream$TransportState;

    invoke-static {v0}, Lio/grpc/netty/NettyServerStream$TransportState;->access$500(Lio/grpc/netty/NettyServerStream$TransportState;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/netty/NettyServerStream$TransportState$1;->this$0:Lio/grpc/netty/NettyServerStream$TransportState;

    invoke-static {v2}, Lio/grpc/netty/NettyServerStream$TransportState;->access$500(Lio/grpc/netty/NettyServerStream$TransportState;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method
