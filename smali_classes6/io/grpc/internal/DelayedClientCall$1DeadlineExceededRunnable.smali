.class Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->scheduleDeadlineIfNeeded(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeadlineExceededRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedClientCall;

.field public final synthetic val$buf:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedClientCall;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;->this$0:Lio/grpc/internal/DelayedClientCall;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;->val$buf:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;->this$0:Lio/grpc/internal/DelayedClientCall;

    sget-object v1, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/grpc/internal/DelayedClientCall;->access$000(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Status;Z)V

    return-void
.end method
