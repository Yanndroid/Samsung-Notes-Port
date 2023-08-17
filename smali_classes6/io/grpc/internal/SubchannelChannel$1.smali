.class Lio/grpc/internal/SubchannelChannel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/SubchannelChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/SubchannelChannel;


# direct methods
.method public constructor <init>(Lio/grpc/internal/SubchannelChannel;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/SubchannelChannel$1;->this$0:Lio/grpc/internal/SubchannelChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/SubchannelChannel$1;->this$0:Lio/grpc/internal/SubchannelChannel;

    invoke-static {v0}, Lio/grpc/internal/SubchannelChannel;->access$000(Lio/grpc/internal/SubchannelChannel;)Lio/grpc/internal/InternalSubchannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->getTransport()Lio/grpc/internal/ClientTransport;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/internal/SubchannelChannel;->access$100()Lio/grpc/internal/FailingClientTransport;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v1}, Lio/grpc/internal/GrpcUtil;->getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;

    move-result-object v1

    invoke-virtual {p4}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v2

    :try_start_0
    invoke-interface {v0, p1, p3, p2, v1}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p4, v2}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p4, v2}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw p1
.end method
