.class final Lio/grpc/netty/CancelServerStreamCommand;
.super Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;
.source "SourceFile"


# instance fields
.field private final reason:Lio/grpc/Status;

.field private final stream:Lio/grpc/netty/NettyServerStream$TransportState;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerStream$TransportState;Lio/grpc/Status;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;-><init>()V

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/NettyServerStream$TransportState;

    iput-object p1, p0, Lio/grpc/netty/CancelServerStreamCommand;->stream:Lio/grpc/netty/NettyServerStream$TransportState;

    const-string p1, "reason"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Status;

    iput-object p1, p0, Lio/grpc/netty/CancelServerStreamCommand;->reason:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lio/grpc/netty/CancelServerStreamCommand;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/grpc/netty/CancelServerStreamCommand;

    iget-object v2, p0, Lio/grpc/netty/CancelServerStreamCommand;->stream:Lio/grpc/netty/NettyServerStream$TransportState;

    iget-object v3, p1, Lio/grpc/netty/CancelServerStreamCommand;->stream:Lio/grpc/netty/NettyServerStream$TransportState;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/netty/CancelServerStreamCommand;->reason:Lio/grpc/Status;

    iget-object p1, p1, Lio/grpc/netty/CancelServerStreamCommand;->reason:Lio/grpc/Status;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/netty/CancelServerStreamCommand;->stream:Lio/grpc/netty/NettyServerStream$TransportState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/netty/CancelServerStreamCommand;->reason:Lio/grpc/Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public reason()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/CancelServerStreamCommand;->reason:Lio/grpc/Status;

    return-object v0
.end method

.method public stream()Lio/grpc/netty/NettyServerStream$TransportState;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/CancelServerStreamCommand;->stream:Lio/grpc/netty/NettyServerStream$TransportState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/CancelServerStreamCommand;->stream:Lio/grpc/netty/NettyServerStream$TransportState;

    const-string v2, "stream"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/CancelServerStreamCommand;->reason:Lio/grpc/Status;

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
