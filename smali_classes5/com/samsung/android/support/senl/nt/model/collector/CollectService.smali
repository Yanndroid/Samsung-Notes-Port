.class public Lcom/samsung/android/support/senl/nt/model/collector/CollectService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final COLLECT_NOTIFICATION_CHANNEL:Ljava/lang/String; = "CollectNotificationChannel"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CollectService"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/CollectService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private executeCommand(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getActionType()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->START:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->runCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->CANCEL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->cancelCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->RESUME_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->resumePdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->PAUSE_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->pausePdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->UPDATE_READY_STATE_NOTES:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result p1

    if-ne v0, p1, :cond_4

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater;->execute(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->UPDATE_NOTE_DOC_OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result p1

    if-ne v0, p1, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SDocSearchDataUpdater;->execute()V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->UPDATE_SKIPPED_NOTES_OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result p1

    if-ne v0, p1, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater;->execute()V

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/CollectService;->TAG:Ljava/lang/String;

    const-string v0, "onStartCommand unknown ActionType"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 9

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/CollectService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/model/R$string;->composer_text_recognition_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v2

    sget-object v7, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->DEFAULT:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    const-string v4, "CollectNotificationChannel"

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, v6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->registerService(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;I)Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/CollectService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->unregisterService(Landroid/app/Service;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/CollectService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartCommand "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p3, "EXTRA_KEY_COLLECT_PARAM"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectService;->executeCommand(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    goto :goto_1

    :cond_0
    const-string p1, "isAllowedIntent# invalid param"

    goto :goto_0

    :cond_1
    const-string p1, "isAllowedIntent# invalid intent"

    :goto_0
    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->canWorkOnBackground()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    const/4 p1, 0x2

    return p1
.end method
