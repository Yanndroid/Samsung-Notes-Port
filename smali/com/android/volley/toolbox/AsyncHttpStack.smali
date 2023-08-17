.class public abstract Lcom/android/volley/toolbox/AsyncHttpStack;
.super Lcom/android/volley/toolbox/BaseHttpStack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/AsyncHttpStack$Response;,
        Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;
    }
.end annotation


# instance fields
.field private mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/volley/toolbox/BaseHttpStack;-><init>()V

    return-void
.end method


# virtual methods
.method public final executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/volley/toolbox/HttpResponse;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/android/volley/toolbox/AsyncHttpStack$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/volley/toolbox/AsyncHttpStack$1;-><init>(Lcom/android/volley/toolbox/AsyncHttpStack;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/volley/toolbox/AsyncHttpStack;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/toolbox/AsyncHttpStack$Response;

    iget-object p2, p1, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->httpResponse:Lcom/android/volley/toolbox/HttpResponse;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p1, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->ioException:Ljava/io/IOException;

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    iget-object p1, p1, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->authFailureError:Lcom/android/volley/AuthFailureError;

    throw p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "while waiting for CountDownLatch"

    invoke-static {p1, v0, p2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public abstract executeRequest(Lcom/android/volley/Request;Ljava/util/Map;Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;",
            ")V"
        }
    .end annotation
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/AsyncHttpStack;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getNonBlockingExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/AsyncHttpStack;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/toolbox/AsyncHttpStack;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/toolbox/AsyncHttpStack;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
