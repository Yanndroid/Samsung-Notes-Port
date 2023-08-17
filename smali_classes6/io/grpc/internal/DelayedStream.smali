.class Lio/grpc/internal/DelayedStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DelayedStream$DelayedStreamListener;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private error:Lio/grpc/Status;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private listener:Lio/grpc/internal/ClientStreamListener;

.field private volatile passThrough:Z

.field private pendingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private preStartPendingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private realStream:Lio/grpc/internal/ClientStream;

.field private startTimeNanos:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private streamSetTimeNanos:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    return-object p0
.end method

.method public static synthetic access$100(Lio/grpc/internal/DelayedStream;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;->drainPendingCalls()V

    return-void
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private drainPendingCalls()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->drainPendingCallbacks()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private internalStart(Lio/grpc/internal/ClientStreamListener;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    return-void
.end method

.method private setRealStream(Lio/grpc/internal/ClientStream;)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "realStream already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/DelayedStream;->streamSetTimeNanos:J

    return-void
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    iget-wide v1, p0, Lio/grpc/internal/DelayedStream;->streamSetTimeNanos:J

    iget-wide v3, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    goto :goto_0

    :cond_1
    const-string v0, "buffered_nanos"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    const-string v0, "waiting_for_connection"

    invoke-virtual {p1, v0}, Lio/grpc/internal/InsightBuilder;->append(Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel(Lio/grpc/Status;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "May only be called after start"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "reason"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-nez v0, :cond_1

    sget-object v0, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->setRealStream(Lio/grpc/internal/ClientStream;)V

    iput-object p1, p0, Lio/grpc/internal/DelayedStream;->error:Lio/grpc/Status;

    move v1, v2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    new-instance v0, Lio/grpc/internal/DelayedStream$8;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$8;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Status;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;->drainPendingCalls()V

    invoke-virtual {p0, p1}, Lio/grpc/internal/DelayedStream;->onEarlyCancellation(Lio/grpc/Status;)V

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/Stream;->flush()V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/grpc/internal/DelayedStream$7;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedStream$7;-><init>(Lio/grpc/internal/DelayedStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRealStream()Lio/grpc/internal/ClientStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method public halfClose()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lio/grpc/internal/DelayedStream$9;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedStream$9;-><init>(Lio/grpc/internal/DelayedStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/Stream;->isReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onEarlyCancellation(Lio/grpc/Status;)V
    .locals 0

    return-void
.end method

.method public optimizeForDirectExecutor()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$11;

    invoke-direct {v1, p0}, Lio/grpc/internal/DelayedStream$11;-><init>(Lio/grpc/internal/DelayedStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public request(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/Stream;->request(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/grpc/internal/DelayedStream$10;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$10;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$5;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$5;-><init>(Lio/grpc/internal/DelayedStream;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$12;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$12;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Compressor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$3;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$3;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Deadline;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$14;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$14;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/DecompressorRegistry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFullStreamDecompression(Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$13;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$13;-><init>(Lio/grpc/internal/DelayedStream;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$1;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->preStartPendingCalls:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/DelayedStream$2;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/DelayedStream$2;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/Stream;->setMessageCompression(Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/grpc/internal/DelayedStream$15;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$15;-><init>(Lio/grpc/internal/DelayedStream;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final setStream(Lio/grpc/internal/ClientStream;)Ljava/lang/Runnable;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ClientStream;

    invoke-direct {p0, p1}, Lio/grpc/internal/DelayedStream;->setRealStream(Lio/grpc/internal/ClientStream;)V

    iget-object p1, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez p1, :cond_1

    iput-object v1, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, p1}, Lio/grpc/internal/DelayedStream;->internalStart(Lio/grpc/internal/ClientStreamListener;)V

    new-instance p1, Lio/grpc/internal/DelayedStream$4;

    invoke-direct {p1, p0}, Lio/grpc/internal/DelayedStream$4;-><init>(Lio/grpc/internal/DelayedStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->error:Lio/grpc/Status;

    iget-boolean v1, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-nez v1, :cond_1

    new-instance v2, Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    invoke-direct {v2, p1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;-><init>(Lio/grpc/internal/ClientStreamListener;)V

    iput-object v2, p0, Lio/grpc/internal/DelayedStream;->delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    move-object p1, v2

    :cond_1
    iput-object p1, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lio/grpc/internal/DelayedStream;->internalStart(Lio/grpc/internal/ClientStreamListener;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/Stream;->writeMessage(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/grpc/internal/DelayedStream$6;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$6;-><init>(Lio/grpc/internal/DelayedStream;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
