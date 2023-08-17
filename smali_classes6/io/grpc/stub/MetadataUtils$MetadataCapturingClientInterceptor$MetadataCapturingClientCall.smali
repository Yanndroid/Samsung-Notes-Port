.class final Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;
.super Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MetadataCapturingClientCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall$MetadataCapturingClientCallListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;


# direct methods
.method public constructor <init>(Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;Lio/grpc/ClientCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;->this$0:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;

    invoke-direct {p0, p2}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;-><init>(Lio/grpc/ClientCall;)V

    return-void
.end method


# virtual methods
.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;->this$0:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;

    iget-object v0, v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;->headersCapture:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;->this$0:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;

    iget-object v0, v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;->trailersCapture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall$MetadataCapturingClientCallListener;

    invoke-direct {v0, p0, p1}, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall$MetadataCapturingClientCallListener;-><init>(Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;Lio/grpc/ClientCall$Listener;)V

    invoke-super {p0, v0, p2}, Lio/grpc/ForwardingClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    return-void
.end method
