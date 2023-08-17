.class public Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetryCache<",
        "Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;",
        ">;"
    }
.end annotation


# static fields
.field public static final LAST_TELEMETRY_HEADER_STRING_CACHE_KEY:Ljava/lang/String; = "last_telemetry_header_string"

.field public static final LAST_TELEMETRY_OBJECT_CACHE_KEY:Ljava/lang/String; = "last_telemetry_object"

.field public static final LAST_TELEMETRY_SCHEMA_VERSION_CACHE_KEY:Ljava/lang/String; = "last_telemetry_schema_version"

.field private static final TAG:Ljava/lang/String; = "LastRequestTelemetryCache"

.field private static final mGson:Lcom/google/gson/Gson;


# instance fields
.field private final mStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "keyPairStorage is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->mStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    return-void
.end method

.method private generateCacheValue(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveRequestTelemetryObjectToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "requestTelemetry is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->generateCacheValue(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "last_telemetry_object"

    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->saveToTelemetryCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveTelemetryHeaderStringToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "requestTelemetry is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getCompleteHeaderString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "last_telemetry_header_string"

    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->saveToTelemetryCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveTelemetrySchemaVersionToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "requestTelemetry is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->getSchemaVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "last_telemetry_schema_version"

    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->saveToTelemetryCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveToTelemetryCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "cacheKey is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cacheValue is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->mStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->mStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->clear()V

    return-void
.end method

.method public bridge synthetic getRequestTelemetryFromCache()Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->getRequestTelemetryFromCache()Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRequestTelemetryFromCache()Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->mStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    const-string v2, "last_telemetry_object"

    invoke-interface {v1, v2}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":getRequestTelemetryFromCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There is no last request telemetry saved in the cache. Returning NULL"

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->mGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":getRequestTelemetryFromCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Last Request Telemetry deserialization failed"

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->mStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->clear()V

    throw v0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":getRequestTelemetryFromCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Last Request Telemetry deserialization failed"

    invoke-static {v2, v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic saveRequestTelemetryToCache(Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;)V
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->saveRequestTelemetryToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V

    return-void
.end method

.method public declared-synchronized saveRequestTelemetryToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->TAG:Ljava/lang/String;

    const-string v1, "Saving Last Request Telemetry to cache..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->saveRequestTelemetryObjectToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->saveTelemetryHeaderStringToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetryCache;->saveTelemetrySchemaVersionToCache(Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "requestTelemetry is marked non-null but is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
