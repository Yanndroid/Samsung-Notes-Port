.class Lio/grpc/inprocess/InProcessTransport$InProcessStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InProcessStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;,
        Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    }
.end annotation


# instance fields
.field private volatile authority:Ljava/lang/String;

.field private final callOptions:Lio/grpc/CallOptions;

.field private final clientStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

.field private final headers:Lio/grpc/Metadata;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private final serverStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

.field public final synthetic this$0:Lio/grpc/inprocess/InProcessTransport;


# direct methods
.method private constructor <init>(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "Ljava/lang/String;",
            "Lio/grpc/internal/StatsTraceContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "method"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/MethodDescriptor;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->method:Lio/grpc/MethodDescriptor;

    const-string p1, "headers"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Metadata;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->headers:Lio/grpc/Metadata;

    const-string p1, "callOptions"

    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/CallOptions;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->callOptions:Lio/grpc/CallOptions;

    iput-object p5, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->authority:Ljava/lang/String;

    new-instance p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    invoke-direct {p1, p0, p4, p6}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Lio/grpc/CallOptions;Lio/grpc/internal/StatsTraceContext;)V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->clientStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    new-instance p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    invoke-direct {p1, p0, p2, p3}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;)V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->serverStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/inprocess/InProcessTransport$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;-><init>(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;)V

    return-void
.end method

.method public static synthetic access$2100(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->streamClosed()V

    return-void
.end method

.method public static synthetic access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2302(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->authority:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .locals 0

    iget-object p0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->serverStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    return-object p0
.end method

.method public static synthetic access$2800(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/MethodDescriptor;
    .locals 0

    iget-object p0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->method:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method public static synthetic access$2900(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/Metadata;
    .locals 0

    iget-object p0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->headers:Lio/grpc/Metadata;

    return-object p0
.end method

.method public static synthetic access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    .locals 0

    iget-object p0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->clientStream:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    return-object p0
.end method

.method private streamClosed()V
    .locals 4

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$800(Lio/grpc/inprocess/InProcessTransport;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->callOptions:Lio/grpc/CallOptions;

    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$900(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/InUseStateAggregator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    :cond_0
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$800(Lio/grpc/inprocess/InProcessTransport;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$1000(Lio/grpc/inprocess/InProcessTransport;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$200(Lio/grpc/inprocess/InProcessTransport;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
