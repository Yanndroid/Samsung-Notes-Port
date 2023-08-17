.class Lio/grpc/inprocess/InProcessTransport$5;
.super Lio/grpc/internal/NoopClientStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/inprocess/InProcessTransport;->failedClientStream(Lio/grpc/internal/StatsTraceContext;Lio/grpc/Status;)Lio/grpc/internal/ClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/inprocess/InProcessTransport;

.field public final synthetic val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field public final synthetic val$status:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lio/grpc/inprocess/InProcessTransport;Lio/grpc/internal/StatsTraceContext;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$5;->this$0:Lio/grpc/inprocess/InProcessTransport;

    iput-object p2, p0, Lio/grpc/inprocess/InProcessTransport$5;->val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iput-object p3, p0, Lio/grpc/inprocess/InProcessTransport$5;->val$status:Lio/grpc/Status;

    invoke-direct {p0}, Lio/grpc/internal/NoopClientStream;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$5;->val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0}, Lio/grpc/internal/StatsTraceContext;->clientOutboundHeaders()V

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$5;->val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$5;->val$status:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$5;->val$status:Lio/grpc/Status;

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    return-void
.end method
