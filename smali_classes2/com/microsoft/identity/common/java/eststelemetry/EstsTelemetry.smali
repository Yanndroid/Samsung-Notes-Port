.class public Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LAST_REQUEST_TELEMETRY_STORAGE_FILE:Ljava/lang/String; = "com.microsoft.identity.client.last_request_telemetry"

.field private static final TAG:Ljava/lang/String; = "EstsTelemetry"

.field private static volatile sEstsTelemetryInstance:Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;


# instance fields
.field private mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

.field private final mSentFailedRequests:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;-><init>()V

    new-instance v1, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;-><init>(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;",
            ">;",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "telemetryMap is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sentFailedRequestsMap is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mSentFailedRequests:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    return-void
.end method

.method private getCurrentTelemetryHeaderString()Ljava/lang/String;
    .locals 5
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ":getCurrentTelemetryHeaderString"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "correlation ID is null."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v3, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentTelemetry for correlation ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is null."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getCompleteHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentTelemetryInstance(Ljava/lang/String;)Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "UNSET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getErrorCodeFromCommandResult(Lcom/microsoft/identity/common/java/commands/ICommandResult;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/ICommandResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    const-string v0, "commandResult is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object p1

    sget-object v0, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "user_cancel"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->sEstsTelemetryInstance:Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;-><init>()V

    sput-object v1, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->sEstsTelemetryInstance:Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->sEstsTelemetryInstance:Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getLastTelemetryHeaderString()Ljava/lang/String;
    .locals 7
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":getLastTelemetryHeaderString"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mLastRequestTelemetryCache is null."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    const-string v2, "correlation_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":getLastTelemetryHeaderString"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "correlation ID is null."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->getRequestTelemetryFromCache()Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v2, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":getLastTelemetryHeaderString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentTelemetry for correlation ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is null."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_3
    new-instance v0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getSchemaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->copySharedValues(Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;)Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;

    const-string v1, "is_all_telemetry_data_sent"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->putInPlatformTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getCompleteHeaderString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_4
    new-instance v1, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getSchemaVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->copySharedValues(Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;)Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->getFailedRequests()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mSentFailedRequests:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v3, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getCompleteHeaderString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xed8

    if-ge v5, v6, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;

    invoke-virtual {v1, v5}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->appendFailedRequest(Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;)V

    if-eqz v0, :cond_4

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    :cond_6
    invoke-static {v3}, Lcom/microsoft/identity/common/java/eststelemetry/TelemetryUtils;->getSchemaCompliantStringFromBoolean(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "is_all_telemetry_data_sent"

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->putInPlatformTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getCompleteHeaderString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isCurrentTelemetryAvailable()Z
    .locals 2

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getCurrentTelemetryInstance(Ljava/lang/String;)Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTelemetryLoggedByServer(Lcom/microsoft/identity/common/java/commands/ICommand;Lcom/microsoft/identity/common/java/commands/ICommandResult;)Z
    .locals 3
    .param p1    # Lcom/microsoft/identity/common/java/commands/ICommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/commands/ICommandResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommand<",
            "*>;",
            "Lcom/microsoft/identity/common/java/commands/ICommandResult;",
            ")Z"
        }
    .end annotation

    const-string v0, "command is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "commandResult is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/commands/ICommand;->willReachTokenEndpoint()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object p1

    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    instance-of p2, p1, Lcom/microsoft/identity/common/java/exception/ServiceException;

    if-nez p2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/exception/ServiceException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/ServiceException;->getHttpStatusCode()I

    move-result p1

    if-eqz p1, :cond_2

    const/16 p2, 0x1ad

    if-eq p1, p2, :cond_2

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object p1

    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    if-ne p1, v1, :cond_4

    return v0

    :cond_4
    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object p1

    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    if-ne p1, v1, :cond_6

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    if-eqz p1, :cond_5

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;->isServicedFromCache()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    return v0

    :cond_6
    return v2
.end method

.method private loadLastRequestTelemetryFromCache()Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":loadLastRequestTelemetry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Last Request Telemetry Cache has not been initialized. Cannot load Last Request Telemetry data from cache."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->getRequestTelemetryFromCache()Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->clear()V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mSentFailedRequests:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->clear()V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public emit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/microsoft/identity/common/java/eststelemetry/TelemetryUtils;->getSchemaCompliantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getCurrentTelemetryInstance(Ljava/lang/String;)Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public emit(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->emit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public emitApiId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Microsoft.MSAL.api_id"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->emit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public emitForceRefresh(Z)V
    .locals 1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/eststelemetry/TelemetryUtils;->getSchemaCompliantStringFromBoolean(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.force_refresh"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->emit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized flush(Lcom/microsoft/identity/common/java/commands/ICommand;Lcom/microsoft/identity/common/java/commands/ICommandResult;)V
    .locals 4
    .param p1    # Lcom/microsoft/identity/common/java/commands/ICommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/commands/ICommandResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommand<",
            "*>;",
            "Lcom/microsoft/identity/common/java/commands/ICommandResult;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    :try_start_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/commands/ICommand;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":flush"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "correlation ID is null. Nothing to flush."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v1, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":flush"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentTelemetry is null. Nothing to flush."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->loadLastRequestTelemetryFromCache()Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getSchemaVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->copySharedValues(Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;)Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->isTelemetryLoggedByServer(Lcom/microsoft/identity/common/java/commands/ICommand;Lcom/microsoft/identity/common/java/commands/ICommandResult;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->resetSilentSuccessCount()V

    iget-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mSentFailedRequests:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->wipeFailedRequestAndErrorForSubList(Ljava/util/Collection;)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getErrorCodeFromCommandResult(Lcom/microsoft/identity/common/java/commands/ICommandResult;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;->getApiId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, v0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->appendFailedRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    if-eqz p1, :cond_5

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/commands/ICommandResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;->isServicedFromCache()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->incrementSilentSuccessCount()V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->remove(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mSentFailedRequests:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->remove(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->saveRequestTelemetryToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":flush"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Last Request Telemetry Cache object was null. Unable to save request telemetry to cache."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "commandResult is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "command is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTelemetryHeaders()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->isCurrentTelemetryAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getCurrentTelemetryHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getLastTelemetryHeaderString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":getTelemetryHeaders"

    if-eqz v1, :cond_1

    const-string/jumbo v4, "x-client-current-telemetry"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Current Request Telemetry Header is null"

    invoke-static {v1, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_2

    const-string/jumbo v1, "x-client-last-telemetry"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Last Request Telemetry Header is null"

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public initTelemetryForCommand(Lcom/microsoft/identity/common/java/commands/ICommand;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/common/java/commands/ICommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommand<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "command is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/commands/ICommand;->isEligibleForEstsTelemetry()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;-><init>()V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mTelemetryMap:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/commands/ICommand;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mSentFailedRequests:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/commands/ICommand;->getCorrelationId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setUp(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "lastRequestTelemetryCache is marked non-null but is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUp(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;

    const-string v1, "com.microsoft.identity.client.last_request_telemetry"

    const-class v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;->getNameValueStore(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;-><init>(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "platformComponents is marked non-null but is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
