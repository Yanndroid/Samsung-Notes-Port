.class Lio/grpc/netty/CancelClientStreamCommand;
.super Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;
.source "SourceFile"


# instance fields
.field private final reason:Lio/grpc/Status;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final stream:Lio/grpc/netty/NettyClientStream$TransportState;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientStream$TransportState;Lio/grpc/Status;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;-><init>()V

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/NettyClientStream$TransportState;

    iput-object p1, p0, Lio/grpc/netty/CancelClientStreamCommand;->stream:Lio/grpc/netty/NettyClientStream$TransportState;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lio/grpc/Status;->isOk()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "Should not cancel with OK status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/netty/CancelClientStreamCommand;->reason:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public reason()Lio/grpc/Status;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/CancelClientStreamCommand;->reason:Lio/grpc/Status;

    return-object v0
.end method

.method public stream()Lio/grpc/netty/NettyClientStream$TransportState;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/CancelClientStreamCommand;->stream:Lio/grpc/netty/NettyClientStream$TransportState;

    return-object v0
.end method
