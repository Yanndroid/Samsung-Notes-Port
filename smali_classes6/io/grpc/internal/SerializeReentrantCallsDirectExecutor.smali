.class Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private executing:Z

.field private taskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private completeQueuedTasks()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while executing runnable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private enqueue(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "\'task\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->completeQueuedTasks()V

    :cond_0
    iput-boolean v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while executing runnable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    if-eqz p1, :cond_0

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->completeQueuedTasks()V

    :cond_1
    iput-boolean v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    throw p1

    :cond_2
    invoke-direct {p0, p1}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->enqueue(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
