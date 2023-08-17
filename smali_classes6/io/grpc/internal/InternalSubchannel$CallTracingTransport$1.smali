.class Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;
.super Lio/grpc/internal/ForwardingClientStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/InternalSubchannel$CallTracingTransport;

.field public final synthetic val$streamDelegate:Lio/grpc/internal/ClientStream;


# direct methods
.method public constructor <init>(Lio/grpc/internal/InternalSubchannel$CallTracingTransport;Lio/grpc/internal/ClientStream;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;->this$0:Lio/grpc/internal/InternalSubchannel$CallTracingTransport;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;->val$streamDelegate:Lio/grpc/internal/ClientStream;

    invoke-direct {p0}, Lio/grpc/internal/ForwardingClientStream;-><init>()V

    return-void
.end method


# virtual methods
.method public delegate()Lio/grpc/internal/ClientStream;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;->val$streamDelegate:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;->this$0:Lio/grpc/internal/InternalSubchannel$CallTracingTransport;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->access$2700(Lio/grpc/internal/InternalSubchannel$CallTracingTransport;)Lio/grpc/internal/CallTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/CallTracer;->reportCallStarted()V

    new-instance v0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1$1;-><init>(Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;Lio/grpc/internal/ClientStreamListener;)V

    invoke-super {p0, v0}, Lio/grpc/internal/ForwardingClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    return-void
.end method
