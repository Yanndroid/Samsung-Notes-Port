.class public Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SILENT_REQUEST_THREAD_POOL_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CommandDispatcher"

.field private static final mapAccessLock:Ljava/lang/Object;

.field private static sCommand:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

.field private static final sCommandResultCache:Lcom/microsoft/identity/common/java/controllers/CommandResultCache;

.field private static sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand;",
            "Lcom/microsoft/identity/common/java/result/FinalizableResultFuture<",
            "Lcom/microsoft/identity/common/java/controllers/CommandResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sLock:Ljava/lang/Object;

.field private static final sSilentExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandResultCache;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/controllers/CommandResultCache;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/java/controllers/CommandResultCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initTelemetryForCommand(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->executeCommand(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->commandCallbackOnTaskCompleted(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V

    return-void
.end method

.method public static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->logParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->completeInteractive(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    return-void
.end method

.method public static synthetic access$1302(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;
    .locals 0

    sput-object p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$400()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->cleanMap(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    return-void
.end method

.method public static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->statusMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/commands/BaseCommand;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->commandCallBackOnError(Lcom/microsoft/identity/common/java/commands/BaseCommand;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->returnCommandResult(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->commandCallbackOnError(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V

    return-void
.end method

.method public static beginInteractive(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V
    .locals 5

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/identity/common/java/commands/parameters/BrokerInteractiveTokenCommandParameters;

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    const-string v2, "cancel_authorization_request"

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->hasReceivers(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cancel_authorization_request"

    new-instance v3, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    invoke-direct {v3}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    goto :goto_0

    :cond_1
    const-string v2, "return_authorization_request_result"

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->hasReceivers(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":beginInteractive"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "The previous interactive request was queued but never got processed and is blocking the interactive thread. Restarting the interactive executor service to enable processing interactive requests again."

    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":beginInteractive"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelled execution of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interactive requests."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;

    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;-><init>(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static cacheCommandResult(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->isEligibleForCaching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->eligibleToCache(Lcom/microsoft/identity/common/java/controllers/CommandResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/java/controllers/CommandResultCache;

    invoke-virtual {v0, p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandResultCache;->put(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V

    :cond_0
    return-void
.end method

.method private static cleanMap(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eq p0, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-interface {v0, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static clearCommandCache()V
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/java/controllers/CommandResultCache;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/controllers/CommandResultCache;->clear()V

    return-void
.end method

.method public static clearState()V
    .locals 5

    const-class v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-string v1, "sSilentExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v1, "sInteractiveExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static commandCallBackOnError(Lcom/microsoft/identity/common/java/commands/BaseCommand;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/commands/BaseCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    move-result-object p0

    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static commandCallbackOnError(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static commandCallbackOnTaskCompleted(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;->onTaskCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method private static completeInteractive(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.microsoft.identity.client.request.code"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->getOrDefault(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "com.microsoft.identity.client.result.code"

    invoke-virtual {p0, v2, v0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->getOrDefault(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1, v0, p0}, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;->onFinishAuthorizationSession(IILcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":completeInteractive"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sCommand is null, No interactive call in progress to complete."

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static eligibleToCache(Lcom/microsoft/identity/common/java/controllers/CommandResult;)Z
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/controllers/CommandResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "commandResult is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$6;->$SwitchMap$com$microsoft$identity$common$java$commands$ICommandResult$ResultStatus:[I

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/java/exception/BaseException;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->isCacheable()Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":eligibleToCache"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Get status ERROR, but result is not a BaseException"

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static executeCommand(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->execute()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    instance-of v2, v1, Lcom/microsoft/identity/common/java/exception/BaseException;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/microsoft/identity/common/java/exception/BaseException;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    move-result-object v1

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    instance-of p0, v0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    :goto_2
    invoke-static {p0, v2}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->ofNull(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    move-result-object p0

    goto :goto_3

    :cond_1
    sget-object p0, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    invoke-static {p0, v0, v2}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->of(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    move-result-object p0

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    instance-of v0, v1, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    if-eqz v0, :cond_3

    check-cast v1, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->getCommandResultFromTokenResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    move-result-object p0

    goto :goto_3

    :cond_3
    instance-of v0, v1, Lcom/microsoft/identity/common/java/result/VoidResult;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    sget-object v3, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->VOID:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, v1, p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_3

    :cond_4
    if-nez v1, :cond_5

    sget-object p0, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    sget-object v0, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-static {p0, v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->setCorrelationIdOnResult(Lcom/microsoft/identity/common/java/controllers/CommandResult;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->setTelemetryOnResultAndFlush(Lcom/microsoft/identity/common/java/controllers/CommandResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getCachedResultCount()I
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/java/controllers/CommandResultCache;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/controllers/CommandResultCache;->getSize()I

    move-result v0

    return v0
.end method

.method private static getCommandResultConsumer(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/util/BiConsumer;
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/commands/BaseCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand;",
            ")",
            "Lcom/microsoft/identity/common/java/util/BiConsumer<",
            "Lcom/microsoft/identity/common/java/controllers/CommandResult;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;-><init>(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    return-object v0
.end method

.method private static getCommandResultFromTokenResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/controllers/CommandResult;
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "result is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "commandParameters is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    move-result-object p0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/exception/BaseException;

    move-result-object p0

    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->ofNull(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static initTelemetryForCommand(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/commands/BaseCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->setUp(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->initTelemetryForCommand(Lcom/microsoft/identity/common/java/commands/ICommand;)V

    return-void
.end method

.method public static initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/logging/RequestContext;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/logging/RequestContext;-><init>()V

    const-string v1, "correlation_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "x-client-SKU"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "x-client-Ver"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->setRequestContext(Lcom/microsoft/identity/common/java/logging/IRequestContext;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":initializeDiagnosticContext"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Initialized new DiagnosticContext"

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static isCommandOutstanding(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Z
    .locals 4

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command out there "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static logParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "tag is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "correlationId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "parameters is marked non-null but is null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting request with request context: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", with PublicApiId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->isAllowPii()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/ObjectMapper;->serializeObjectToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/ObjectMapper;->serializeExposedFieldsOfObjectToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static outstandingCommands()I
    .locals 2

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static returnCommandResult(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/commands/BaseCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/controllers/CommandResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "result is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;->getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/microsoft/identity/common/java/util/IPlatformUtil;->onReturnCommandResult(Lcom/microsoft/identity/common/java/commands/ICommand;)V

    new-instance v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;

    invoke-direct {v1, p1, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;-><init>(Lcom/microsoft/identity/common/java/controllers/CommandResult;Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/util/IPlatformUtil;->postCommandResult(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static setCorrelationIdOnResult(Lcom/microsoft/identity/common/java/controllers/CommandResult;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/controllers/CommandResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "commandResult is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "correlationId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->setCorrelationId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static setTelemetryOnResultAndFlush(Lcom/microsoft/identity/common/java/controllers/CommandResult;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/microsoft/identity/common/java/controllers/CommandResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "commandResult is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "correlationId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->setTelemetryMap(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->setTelemetry(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/identity/common/java/exception/BaseException;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setTelemetry(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setTelemetryOnResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not setting telemetry on result as result type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and doesn\'t support telemetry at this time."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->flush(Ljava/lang/String;)V

    return-void
.end method

.method private static statusMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", with the status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static submitAcquireTokenSilentSync(Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;)Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;
    .locals 3
    .param p0    # Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilentReturningFuture(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    move-result-object p0

    const-wide/16 v0, 0x7530

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object p0

    sget-object v0, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    if-ne p0, v0, :cond_1

    new-instance p0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    const-string v0, "User cancelled"

    const-string v1, "Request cancelled by user"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/java/exception/UserCancelException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string/jumbo v0, "unknown_error"

    const-string v1, "Unexpected CommandResult status"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    move-result-object p0

    throw p0
.end method

.method public static submitAndForget(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/commands/BaseCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitAndForgetReturningFuture(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    return-void
.end method

.method public static submitAndForgetReturningFuture(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;
    .locals 6
    .param p0    # Lcom/microsoft/identity/common/java/commands/BaseCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand;",
            ")",
            "Lcom/microsoft/identity/common/java/result/FinalizableResultFuture<",
            "Lcom/microsoft/identity/common/java/controllers/CommandResult;",
            ">;"
        }
    .end annotation

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->setCorrelationId(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":submit"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getPublicApiId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v0, v4}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->logParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RefreshOnCommand with CorrelationId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-direct {v3}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;-><init>()V

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->getCommandResultConsumer(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/util/BiConsumer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/util/ResultFuture;->whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V

    sget-object v4, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;

    invoke-direct {v5, v1, v0, p0, v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/commands/BaseCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilentReturningFuture(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    return-void
.end method

.method public static submitSilentReturningFuture(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;
    .locals 10
    .param p0    # Lcom/microsoft/identity/common/java/commands/BaseCommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand;",
            ")",
            "Lcom/microsoft/identity/common/java/result/FinalizableResultFuture<",
            "Lcom/microsoft/identity/common/java/controllers/CommandResult;",
            ">;"
        }
    .end annotation

    const-string v0, "command is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->getInstance()Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    move-result-object v2

    const-string v0, "10011"

    invoke-virtual {v2, v0}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->setCorrelationId(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":submitSilent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getPublicApiId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->logParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->isEligibleForCaching()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    if-nez v1, :cond_2

    new-instance v1, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;-><init>()V

    sget-object v5, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    if-nez v5, :cond_1

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->getCommandResultConsumer(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/util/BiConsumer;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->getCommandResultConsumer(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/util/BiConsumer;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V

    monitor-exit v0

    return-object v5

    :cond_2
    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->getCommandResultConsumer(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/util/BiConsumer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V

    monitor-exit v0

    return-object v1

    :cond_3
    new-instance v1, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;-><init>()V

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->getCommandResultConsumer(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/util/BiConsumer;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v5}, Lcom/microsoft/identity/common/java/util/ResultFuture;->whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V

    move-object v7, v1

    sget-object v8, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;

    move-object v1, v9

    move-object v5, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;-><init>(Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
