.class public Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/collection/CollectionJob;
.super Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;
.source "SourceFile"


# static fields
.field private static final PERIODIC_HOUR_TIME:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CollectionJob"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;-><init>()V

    return-void
.end method

.method private runCollection(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V
    .locals 1

    const-string v0, "CollectionJob/ runCollection"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->collectReadyState(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "CollectionJob/ cancel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    const-string v0, "CollectionJob"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->CANCEL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->UPDATE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setCancelType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->cancelCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    return-void
.end method

.method public execute(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/BatteryManagerCompat;->getBatteryStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/collection/CollectionJob;->runCollection(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setUpJobInfoProperties(Landroid/app/job/JobInfo$Builder;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectionJob/ setUpJobInfoProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    return-void
.end method
