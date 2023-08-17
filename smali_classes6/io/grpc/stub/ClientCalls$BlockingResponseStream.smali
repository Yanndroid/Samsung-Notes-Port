.class final Lio/grpc/stub/ClientCalls$BlockingResponseStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockingResponseStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private last:Ljava/lang/Object;

.field private final listener:Lio/grpc/stub/ClientCalls$StartableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ClientCalls$StartableListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;


# direct methods
.method public constructor <init>(Lio/grpc/ClientCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "*TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;-><init>(Lio/grpc/ClientCall;Lio/grpc/stub/ClientCalls$ThreadlessExecutor;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/ClientCall;Lio/grpc/stub/ClientCalls$ThreadlessExecutor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "*TT;>;",
            "Lio/grpc/stub/ClientCalls$ThreadlessExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;

    invoke-direct {v0, p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;-><init>(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)V

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener:Lio/grpc/stub/ClientCalls$StartableListener;

    iput-object p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    iput-object p2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    return-void
.end method

.method public static synthetic access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic access$800(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Lio/grpc/ClientCall;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    return-object p0
.end method

.method private waitForNext()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "Thread interrupted"

    if-nez v2, :cond_1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    invoke-virtual {v2, v3, v1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_3
    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_2

    :try_start_4
    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-virtual {v2}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waitAndDrain()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    invoke-virtual {v2, v3, v1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v0

    goto :goto_1

    :cond_2
    if-eq v2, p0, :cond_3

    :try_start_6
    instance-of v0, v2, Lio/grpc/StatusRuntimeException;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-virtual {v0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->shutdown()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-object v2

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    :goto_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->waitForNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-nez v1, :cond_2

    if-eq v0, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    check-cast v0, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method

.method public listener()Lio/grpc/stub/ClientCalls$StartableListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/stub/ClientCalls$StartableListener<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener:Lio/grpc/stub/ClientCalls$StartableListener;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-nez v1, :cond_0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    :cond_0
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
