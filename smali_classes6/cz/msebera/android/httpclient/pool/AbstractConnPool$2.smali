.class Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lcz/msebera/android/httpclient/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final entryRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

.field public final synthetic val$callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

.field public final synthetic val$route:Ljava/lang/Object;

.field public final synthetic val$state:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/pool/AbstractConnPool;Lcz/msebera/android/httpclient/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    iput-object p2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->val$callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    iput-object p3, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iput-object p4, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->entryRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    invoke-static {p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->access$000(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    invoke-static {p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->access$100(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    invoke-static {p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->access$000(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->val$callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->cancelled()V

    :cond_0
    return v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    invoke-static {v0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->access$000(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    return v0
.end method

.method public get()Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->entryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/pool/PoolEntry;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :goto_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iget-object v3, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->access$200(Lcz/msebera/android/httpclient/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Future;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    invoke-static {v2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->access$300(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getUpdated()J

    move-result-wide v2

    iget-object v4, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    invoke-static {v4}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->access$300(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->validate(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->entryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->onLease(Lcz/msebera/android/httpclient/pool/PoolEntry;)V

    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->val$callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->val$callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_3
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->get()Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
