.class abstract Lio/grpc/internal/ForwardingConnectionClientTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ConnectionClientTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delegate()Lio/grpc/internal/ConnectionClientTransport;
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ConnectionClientTransport;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/InternalWithLogId;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/InternalInstrumented;->getStats()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "[",
            "Lio/grpc/ClientStreamTracer;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object p1

    return-object p1
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public shutdown(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ManagedClientTransport;->shutdown(Lio/grpc/Status;)V

    return-void
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ManagedClientTransport;->shutdownNow(Lio/grpc/Status;)V

    return-void
.end method

.method public start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ManagedClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
