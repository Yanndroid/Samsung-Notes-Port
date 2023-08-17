.class final Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;
.super Lio/grpc/stub/ClientCalls$StartableListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls$BlockingResponseStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QueuingListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/ClientCalls$StartableListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field public final synthetic this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;


# direct methods
.method public constructor <init>(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/grpc/stub/ClientCalls$StartableListener;-><init>(Lio/grpc/stub/ClientCalls$1;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3

    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "ClientCall already closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {p1}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    iget-object p2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-virtual {p1, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    iput-boolean v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ClientCall already closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$800(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Lio/grpc/ClientCall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    return-void
.end method
