.class public final Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0016J\u0018\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0005H\u0002J \u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0002J\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0016\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00050*2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0005H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;",
        "sender",
        "Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;",
        "query",
        "",
        "(Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;Ljava/lang/String;)V",
        "canceled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "dispatcher",
        "Ljava/util/concurrent/Executor;",
        "isCanceled",
        "",
        "()Z",
        "logger",
        "Lcom/samsung/android/app/sdk/deepsky/search/Logger;",
        "variable",
        "awaitResponse",
        "",
        "promise",
        "Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;",
        "cancel",
        "commandSearch",
        "Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;",
        "data",
        "Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;",
        "execute",
        "Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;",
        "callback",
        "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;",
        "fetchResponse",
        "future",
        "Ljava/util/concurrent/Future;",
        "Lcom/samsung/android/app/sdk/deepsky/search/Response;",
        "log",
        "priority",
        "",
        "message",
        "throwable",
        "",
        "requestSearch",
        "resolve",
        "Ljava/util/concurrent/CompletableFuture;",
        "responseSearch",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final canceled:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dispatcher:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private logger:Lcom/samsung/android/app/sdk/deepsky/search/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final query:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private variable:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->sender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->query:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->variable:Ljava/lang/String;

    sget-object p2, Lcom/samsung/android/app/sdk/deepsky/search/a;->a:Lcom/samsung/android/app/sdk/deepsky/search/a;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->logger:Lcom/samsung/android/app/sdk/deepsky/search/Logger;

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->getMainThreadDispatcher()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->dispatcher:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->execute$lambda-6$lambda-5(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)V

    return-void
.end method

.method public static final synthetic access$log(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    return-void
.end method

.method private final awaitResponse(Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;)V
    .locals 6

    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "GraphqlQueryExecutor-"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;

    invoke-direct {v3, v1, p0, p1, v2}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->sender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;->getNotifyUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v4, "parse(promise.notifyUri)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 p1, 0x3

    const-string v2, "awaitResponse, await"

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    const-wide/16 v4, 0x1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    const-string v2, "awaitResponse, onFailure"

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->sender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    invoke-interface {p1, v3}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->resolve$lambda-11(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->execute$lambda-6(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;Ljava/lang/String;)V

    return-void
.end method

.method private final commandSearch(Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->sender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->newBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p1, "command_search"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;->from(Landroid/os/Bundle;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic d(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/search/Response;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->future$lambda-7(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/search/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->logger$lambda-0(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final execute$lambda-6(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "execute, thenAccept: "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->isCanceled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "execute, isCanceled: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->dispatcher:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/search/b;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/app/sdk/deepsky/search/b;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final execute$lambda-6$lambda-5(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;->convertErrorList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    if-nez v1, :cond_1

    :goto_0
    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/search/Response;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/sdk/deepsky/search/Response;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;->onResponse(Lcom/samsung/android/app/sdk/deepsky/search/Response;)V

    return-void

    :cond_1
    invoke-interface {p1, v1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->resolve$lambda-8(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    move-result-object p0

    return-object p0
.end method

.method private final fetchResponse(Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchResponse, promiseId "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;->getRaw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;->setPromise(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;->build()Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->responseSearch(Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->getResponse()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fetchResponse, response: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    return-object p1
.end method

.method private static final future$lambda-7(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/search/Response;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;->convertErrorList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/search/Response;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/sdk/deepsky/search/Response;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private final log(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->logger:Lcom/samsung/android/app/sdk/deepsky/search/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/samsung/android/app/sdk/deepsky/search/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method private final log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->logger:Lcom/samsung/android/app/sdk/deepsky/search/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/android/app/sdk/deepsky/search/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final logger$lambda-0(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0

    const-string p0, "$noName_1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$noName_3"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final requestSearch(Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->sender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->newBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p1, "request_search"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;->from(Landroid/os/Bundle;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    move-result-object p1

    return-object p1
.end method

.method private final resolve(Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/search/f;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/search/f;-><init>(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/search/d;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/search/d;-><init>(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    const-string/jumbo v0, "supplyAsync {\n          \u2026seData.response\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final resolve$lambda-11(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->getHasError()Z

    move-result v0

    const-string v1, "resolve, hasError: "

    const/4 v2, 0x6

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->getResponse()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->getResponse()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->getPromise()Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->awaitResponse(Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->fetchResponse(Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->getHasError()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->getResponse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->getQuery()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resolve, query: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->getResponse()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "promise is null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final resolve$lambda-8(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->requestSearch(Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    move-result-object p0

    return-object p0
.end method

.method private final responseSearch(Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->sender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->newBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p1, "response_search"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData$Companion;->from(Landroid/os/Bundle;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "cancel"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dispatcher(Ljava/util/concurrent/Executor;)Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->dispatcher:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public execute(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "execute"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;->setQuery(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->variable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;->setVariable(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;->build()Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->resolve(Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/search/c;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/search/c;-><init>(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public future()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/app/sdk/deepsky/search/Response;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;->setQuery(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->variable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;->setVariable(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;->build()Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->resolve(Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/search/e;->a:Lcom/samsung/android/app/sdk/deepsky/search/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-string v1, "resolve(data)\n          \u2026s = errors)\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public logger(Lcom/samsung/android/app/sdk/deepsky/search/Logger;)Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/search/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->logger:Lcom/samsung/android/app/sdk/deepsky/search/Logger;

    return-object p0
.end method

.method public variable(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "variable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    const-string v3, "invalid variable"

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->variable:Ljava/lang/String;

    :cond_1
    return-object p0
.end method
