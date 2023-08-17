.class Lio/grpc/netty/NettyClientHandler$1;
.super Lio/grpc/internal/InUseStateAggregator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyClientHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/InUseStateAggregator<",
        "Lio/netty/handler/codec/http2/Http2Stream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientHandler;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientHandler;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientHandler$1;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-direct {p0}, Lio/grpc/internal/InUseStateAggregator;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInUse()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$1;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyClientHandler;->access$000(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/netty/ClientTransportLifecycleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/netty/ClientTransportLifecycleManager;->notifyInUse(Z)V

    return-void
.end method

.method public handleNotInUse()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$1;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyClientHandler;->access$000(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/netty/ClientTransportLifecycleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/netty/ClientTransportLifecycleManager;->notifyInUse(Z)V

    return-void
.end method
