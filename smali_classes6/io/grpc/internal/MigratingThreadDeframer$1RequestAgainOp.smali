.class Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/MigratingThreadDeframer$Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/MigratingThreadDeframer;->requestFromTransportThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestAgainOp"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/MigratingThreadDeframer;

.field public final synthetic val$numMessages:I


# direct methods
.method public constructor <init>(Lio/grpc/internal/MigratingThreadDeframer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iput p2, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iget v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->val$numMessages:I

    invoke-virtual {p1, v0}, Lio/grpc/internal/MigratingThreadDeframer;->request(I)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {p1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object p1

    iget v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->val$numMessages:I

    invoke-virtual {p1, v0}, Lio/grpc/internal/MessageDeframer;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/ApplicationThreadDeframerListener;->deframeFailed(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {p1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/MessageDeframer;->close()V

    :goto_0
    iget-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {p1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/MessageDeframer;->hasPendingDeliveries()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {p1}, Lio/grpc/internal/MigratingThreadDeframer;->access$600(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    const-string v0, "MigratingThreadDeframer.deframerOnApplicationThread"

    invoke-static {v0}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/MigratingThreadDeframer;->access$700(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;->setDelegate(Lio/grpc/internal/MessageDeframer$Listener;)V

    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$802(Lio/grpc/internal/MigratingThreadDeframer;Z)Z

    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1
    :goto_1
    return-void
.end method
