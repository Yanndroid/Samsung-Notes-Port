.class public Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrokerOperationExecutor"


# instance fields
.field private final mStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "strategies is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->mStrategies:Ljava/util/List;

    return-void
.end method

.method private emitOperationFailureEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
            "TU;>;",
            "Lcom/microsoft/identity/common/java/exception/BaseException;",
            ")V"
        }
    .end annotation

    const-string v0, "operation is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getTelemetryApiId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    :cond_0
    return-void
.end method

.method private emitOperationStartEvent(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
            "TU;>;)V"
        }
    .end annotation

    const-string v0, "operation is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getTelemetryApiId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    :cond_0
    return-void
.end method

.method private emitOperationSuccessEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
            "TU;>;TU;)V"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    const-string v0, "operation is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getTelemetryApiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;->isApiCallSuccessful(Ljava/lang/Boolean;)Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-interface {p1, v0, p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    :cond_0
    return-void
.end method

.method private performStrategy(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "strategy is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "operation is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing with IIpcStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->performPrerequisites(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;)V

    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->getBundle()Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;->extractResultBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation<",
            "TU;>;)TU;"
        }
    .end annotation

    const-string v0, "operation is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->getInstance()Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    move-result-object v0

    const-string v1, "10110"

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":execute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->emitOperationStartEvent(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->mStrategies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v2, "Failed to bind the service in broker app"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->mStrategies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

    :try_start_0
    const-string v5, "10111"

    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V

    invoke-direct {p0, v4, p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->performStrategy(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "10120"

    invoke-virtual {v0, v5}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V

    invoke-direct {p0, p2, v4}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->emitOperationSuccessEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/BrokerCommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/identity/common/java/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->emitOperationFailureEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    throw p1

    :catch_1
    move-exception v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v3, "Unable to connect to the broker. Please refer to MSAL/Broker logs or suppressed exception (API 19+) for more details."

    invoke-direct {v0, v2, v3}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->addSuppressedException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->emitOperationFailureEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    throw v0

    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "No strategies can be used to connect to the broker."

    invoke-direct {p1, v2, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->emitOperationFailureEvent(Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    throw p1
.end method
