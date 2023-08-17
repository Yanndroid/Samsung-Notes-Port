.class final Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/GlobalEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskRunner"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final synthetic this$0:Lio/netty/util/concurrent/GlobalEventExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/util/concurrent/GlobalEventExecutor;

    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/GlobalEventExecutor;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/GlobalEventExecutor;->takeTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Lio/netty/util/concurrent/AbstractEventExecutor;->runTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {}, Lio/netty/util/concurrent/GlobalEventExecutor;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Unexpected exception from the global event executor: "

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v1, v1, Lio/netty/util/concurrent/GlobalEventExecutor;->quietPeriodTask:Lio/netty/util/concurrent/ScheduledFutureTask;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v1, v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    iget-object v0, v0, Lio/netty/util/concurrent/GlobalEventExecutor;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :cond_2
    iget-object v1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-static {v1}, Lio/netty/util/concurrent/GlobalEventExecutor;->access$100(Lio/netty/util/concurrent/GlobalEventExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v1, v1, Lio/netty/util/concurrent/GlobalEventExecutor;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$TaskRunner;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-static {v1}, Lio/netty/util/concurrent/GlobalEventExecutor;->access$100(Lio/netty/util/concurrent/GlobalEventExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_2
    return-void
.end method
