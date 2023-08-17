.class public Lcom/samsung/android/support/senl/nt/model/collector/CollectController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/support/senl/nt/model/collector/CollectController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CollectController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->sInstance:Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->sInstance:Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->sInstance:Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public collectReadyState(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->TAG:Ljava/lang/String;

    const-string v1, "collectReadyState by JobService"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;->execute(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V

    return-void
.end method

.method public collectReadyState(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->TAG:Ljava/lang/String;

    const-string v1, "collectReadyState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;->execute(Z)V

    return-void
.end method

.method public postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postCollectorTask, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/model/collector/CollectService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_KEY_COLLECT_PARAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
