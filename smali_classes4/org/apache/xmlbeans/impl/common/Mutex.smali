.class public Lorg/apache/xmlbeans/impl/common/Mutex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lock_count:I

.field private owner:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->owner:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->lock_count:I

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/Mutex;->tryToAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->owner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->lock_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->lock_count:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->owner:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread calling release() doesn\'t own mutex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryToAcquire()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->owner:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->owner:Ljava/lang/Thread;

    iput v1, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->lock_count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->lock_count:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/common/Mutex;->lock_count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
