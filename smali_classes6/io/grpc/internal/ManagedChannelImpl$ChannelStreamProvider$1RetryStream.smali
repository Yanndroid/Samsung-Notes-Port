.class final Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;
.super Lio/grpc/internal/RetriableStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RetryStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/internal/RetriableStream<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

.field public final synthetic val$callOptions:Lio/grpc/CallOptions;

.field public final synthetic val$context:Lio/grpc/Context;

.field public final synthetic val$headers:Lio/grpc/Metadata;

.field public final synthetic val$hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

.field public final synthetic val$method:Lio/grpc/MethodDescriptor;

.field public final synthetic val$retryPolicy:Lio/grpc/internal/RetryPolicy;

.field public final synthetic val$throttle:Lio/grpc/internal/RetriableStream$Throttle;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/RetryPolicy;Lio/grpc/internal/HedgingPolicy;Lio/grpc/internal/RetriableStream$Throttle;Lio/grpc/Context;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    move-object/from16 v2, p2

    iput-object v2, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    move-object/from16 v3, p3

    iput-object v3, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$headers:Lio/grpc/Metadata;

    iput-object v1, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$callOptions:Lio/grpc/CallOptions;

    move-object/from16 v10, p5

    iput-object v10, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$retryPolicy:Lio/grpc/internal/RetryPolicy;

    move-object/from16 v11, p6

    iput-object v11, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    move-object/from16 v12, p7

    iput-object v12, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$throttle:Lio/grpc/internal/RetriableStream$Throttle;

    move-object/from16 v4, p8

    iput-object v4, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$context:Lio/grpc/Context;

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$1900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    move-result-object v4

    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$2000(Lio/grpc/internal/ManagedChannelImpl;)J

    move-result-wide v5

    iget-object v7, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$2100(Lio/grpc/internal/ManagedChannelImpl;)J

    move-result-wide v7

    iget-object v9, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v9, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2200(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v14

    invoke-direct/range {v0 .. v12}, Lio/grpc/internal/RetriableStream;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/internal/RetriableStream$ChannelBufferMeter;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/RetryPolicy;Lio/grpc/internal/HedgingPolicy;Lio/grpc/internal/RetriableStream$Throttle;)V

    return-void
.end method


# virtual methods
.method public newSubstream(Lio/grpc/Metadata;Lio/grpc/ClientStreamTracer$Factory;IZ)Lio/grpc/internal/ClientStream;
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0, p2}, Lio/grpc/CallOptions;->withStreamTracerFactory(Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/CallOptions;

    move-result-object p2

    invoke-static {p2, p1, p3, p4}, Lio/grpc/internal/GrpcUtil;->getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;

    move-result-object p3

    iget-object p4, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    new-instance v0, Lio/grpc/internal/PickSubchannelArgsImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    invoke-direct {v0, v1, p1, p2}, Lio/grpc/internal/PickSubchannelArgsImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    invoke-static {p4, v0}, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->access$2500(Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;

    move-result-object p4

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    invoke-interface {p4, v1, p1, p2, p3}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {p2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {p2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw p1
.end method

.method public postCommit()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->remove(Lio/grpc/internal/RetriableStream;)V

    return-void
.end method

.method public prestart()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->add(Lio/grpc/internal/RetriableStream;)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method
