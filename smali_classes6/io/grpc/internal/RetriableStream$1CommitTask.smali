.class Lio/grpc/internal/RetriableStream$1CommitTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommitTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field public final synthetic val$hedgingFuture:Ljava/util/concurrent/Future;

.field public final synthetic val$retryFuture:Ljava/util/concurrent/Future;

.field public final synthetic val$savedDrainedSubstreams:Ljava/util/Collection;

.field public final synthetic val$winningSubstream:Lio/grpc/internal/RetriableStream$Substream;


# direct methods
.method public constructor <init>(Lio/grpc/internal/RetriableStream;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->this$0:Lio/grpc/internal/RetriableStream;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->val$savedDrainedSubstreams:Ljava/util/Collection;

    iput-object p3, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->val$winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iput-object p4, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->val$retryFuture:Ljava/util/concurrent/Future;

    iput-object p5, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->val$hedgingFuture:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->val$savedDrainedSubstreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/RetriableStream$Substream;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->val$winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eq v1, v2, :cond_0

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-static {}, Lio/grpc/internal/RetriableStream;->access$000()Lio/grpc/Status;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->val$retryFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->val$hedgingFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$1CommitTask;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-virtual {v0}, Lio/grpc/internal/RetriableStream;->postCommit()V

    return-void
.end method
