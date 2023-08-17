.class public Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCompletableFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->mIsCanceled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->mIsCanceled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isCanceled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->mIsCanceled:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFuture(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method
