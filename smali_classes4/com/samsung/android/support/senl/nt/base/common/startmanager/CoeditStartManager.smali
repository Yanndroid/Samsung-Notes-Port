.class public Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditStartManager"

.field private static sFinalBlockTime:J

.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canStartCoedit()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->sFinalBlockTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canStartSync() : false, blockTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->sFinalBlockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditStartManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setFinalBlockTimeToStartSync(J)V
    .locals 2

    sput-wide p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->sFinalBlockTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinalBlockTimeToStartSync() : blockTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoeditStartManager"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public stopCoeditDownload(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 2

    const-string v0, "CoeditStartManager"

    const-string v1, "stopSync()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->stopCoeditDownloadBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V

    return-void
.end method
