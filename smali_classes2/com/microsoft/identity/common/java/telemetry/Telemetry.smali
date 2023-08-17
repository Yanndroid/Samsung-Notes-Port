.class public Lcom/microsoft/identity/common/java/telemetry/Telemetry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Telemetry"

.field private static mObservers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;


# instance fields
.field private mDefaultConfiguration:Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

.field private mIsDebugging:Z

.field private final mIsTelemetryEnabled:Z

.field private mTelemetryContext:Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;

.field private mTelemetryRawDataMap:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->access$000(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->access$100(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->access$100(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mDefaultConfiguration:Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->access$000(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mTelemetryContext:Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->access$200(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsDebugging:Z

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mTelemetryRawDataMap:Ljava/util/Queue;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "Telemetry is disabled because the Telemetry context or configuration is null"

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    :goto_1
    return-void
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->prepareInstance(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    move-result-object p0

    return-object p0
.end method

.method private applyPiiOiiRule(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mDefaultConfiguration:Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->isPiiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v1, "Telemetry PII/OII is enabled by the developer."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->getInstance()Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->isPiiOrOii(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V
    .locals 1

    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    move-result-object v0

    iget-boolean v0, v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getRequestMap()Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/Properties;->getProperties()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->build()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getRequestMap()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mTelemetryRawDataMap:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized prepareInstance(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    iget-boolean v1, v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;-><init>(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)V

    sput-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    :cond_1
    sget-object p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processRawMap(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mTelemetryContext:Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/telemetry/Properties;->getProperties()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->applyPiiOiiRule(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-nez v0, :cond_0

    sget-object p1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "No telemetry observer set."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryObserver;

    instance-of v2, v1, Lcom/microsoft/identity/common/java/telemetry/observers/IBrokerTelemetryObserver;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/microsoft/identity/common/java/telemetry/adapter/BrokerTelemetryAdapter;

    check-cast v1, Lcom/microsoft/identity/common/java/telemetry/observers/IBrokerTelemetryObserver;

    invoke-direct {v2, v1}, Lcom/microsoft/identity/common/java/telemetry/adapter/BrokerTelemetryAdapter;-><init>(Lcom/microsoft/identity/common/java/telemetry/observers/IBrokerTelemetryObserver;)V

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/java/telemetry/adapter/BrokerTelemetryAdapter;->process(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryAggregatedObserver;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryAggregationAdapter;

    check-cast v1, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryAggregatedObserver;

    invoke-direct {v2, v1}, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryAggregationAdapter;-><init>(Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryAggregatedObserver;)V

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryAggregationAdapter;->process(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryDefaultAdapter;

    check-cast v1, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;

    invoke-direct {v2, v1}, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryDefaultAdapter;-><init>(Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;)V

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryDefaultAdapter;->process(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown observer type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryObserver;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Telemetry Observer instance cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public flush()V
    .locals 2

    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    move-result-object v0

    iget-boolean v0, v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->flush(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public flush(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "correlationId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "No correlation id set."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mDefaultConfiguration:Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsDebugging:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mTelemetryRawDataMap:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "Microsoft.MSAL.correlation_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->applyPiiOiiRule(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->processRawMap(Ljava/util/List;)V

    return-void
.end method

.method public getMap()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    move-result-object v0

    iget-boolean v0, v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "correlationId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "No correlation id set."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mDefaultConfiguration:Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mIsDebugging:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mTelemetryRawDataMap:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "Microsoft.MSAL.correlation_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->applyPiiOiiRule(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public declared-synchronized getObservers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryObserver;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllObservers()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeObserver(Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryObserver;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":removeObserver"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to remove the observer. Either the observer is null or the observer list is empty."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeObserver(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_1

    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] observer is removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":removeObserver"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to remove the observe. Either the observer is null or the observer list is empty."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
