.class final Lio/netty/util/concurrent/RejectedExecutionHandlers$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/RejectedExecutionHandlers;->backoff(IJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/RejectedExecutionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$backOffNanos:J

.field public final synthetic val$retries:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    iput p1, p0, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;->val$retries:I

    iput-wide p2, p0, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;->val$backOffNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejected(Ljava/lang/Runnable;Lio/netty/util/concurrent/SingleThreadEventExecutor;)V
    .locals 4

    invoke-virtual {p2}, Lio/netty/util/concurrent/AbstractEventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;->val$retries:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->wakeup(Z)V

    iget-wide v2, p0, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;->val$backOffNanos:J

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-virtual {p2, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->offerTask(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1
.end method
