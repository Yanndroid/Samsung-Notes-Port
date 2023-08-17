.class public Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;
.super Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;
.source "SourceFile"


# static fields
.field private static final DOCUMENT_SERVICE_NOTIFICATION_CHANNEL:Ljava/lang/String; = "DocumentServiceNotificationChannel"

.field private static SCREEN_OFF_MEMO_SERVICE_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NotesWordDocumentService"


# instance fields
.field private mApplicationLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ApplicationLifecycleCallback;

.field private mIsOnTaskRemoving:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->SCREEN_OFF_MEMO_SERVICE_CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenOffMemoServiceClass, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesWordDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->startForeground(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->stopForeground()V

    return-void
.end method

.method private close(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "sdoc_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentIntentUtils;->getIntentCaller(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesWordDocumentService"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->DOCUMENT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method private dumpServiceWrapper()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "NotesWordDocumentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpServiceWrapper, wrappers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNotificationText(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$5;->$SwitchMap$com$samsung$android$support$senl$nt$model$executor$scheduler$SchedulerDataSource$WorkingState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/samsung/android/support/senl/nt/model/R$string;->document_service_notification_name_closing:I

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/samsung/android/support/senl/nt/model/R$string;->document_service_notification_name:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/samsung/android/support/senl/nt/model/R$string;->document_service_notification_name_saving:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationText, workingState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notificationText : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NotesWordDocumentService"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareCache(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->getDocumentIntentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$4;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->prepareCache(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method private removeCacheAndResave(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->getDocumentIntentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->removeCacheAndResave(Landroid/content/Intent;)V

    return-void
.end method

.method private restoreCaches(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "folder_uuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "subscription_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->getDocumentIntentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->restoreCaches(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-void
.end method

.method private save(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesWordDocumentService"

    const-string v1, "save#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->getDocumentIntentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->save(Landroid/content/Intent;)V

    return-void
.end method

.method private startForeground(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)V
    .locals 11
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->isEmpty()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->getActivityCount()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->isApplicationInIdle()Z

    move-result v2

    const-string v3, "NotesWordDocumentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startForeground, isEmpty : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", remains : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isApplicationInIdle : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v4

    const-string v6, "DocumentServiceNotificationChannel"

    sget v0, Lcom/samsung/android/support/senl/nt/model/R$string;->document_service_notification_channel_name:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->getNotificationText(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->DEFAULT:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->registerService(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;I)Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private stopForeground()V
    .locals 2

    const-string v0, "NotesWordDocumentService"

    const-string v1, "stopForeground"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->unregisterService(Landroid/app/Service;)V

    return-void
.end method

.method private trimCache(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesWordDocumentService"

    const-string v1, "trimCache"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "NotesWordDocumentService"

    const-string v1, "trimCache, stopped. service wrappers are not empty."

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->SCREEN_OFF_MEMO_SERVICE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->SCREEN_OFF_MEMO_SERVICE_CLASS:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/framework/support/ActivityManagerUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "NotesWordDocumentService"

    const-string v0, "trimCache, stopped. SCREEN_OFF_MEMO_SERVICE_CLASS is running..."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->getActivityCount()I

    move-result v0

    if-lez v0, :cond_2

    const-string p1, "NotesWordDocumentService"

    const-string v0, "trimCache, stopped. getActivityCount > 0"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "NotesWordDocumentService"

    const-string v0, "trimCache, stopped. existCaches."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->getDocumentIntentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->trimCache(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public handleStartCommand(Landroid/content/Intent;II)V
    .locals 2

    const-string p2, "NotesWordDocumentService"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->getState()Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->startForeground(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartCommand, intent action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentIntentUtils;->getIntentCaller(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ACTION_REMOVE_CACHE_AND_RESAVE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "ACTION_QUICK_CLOSE_BY_UUID"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "ACTION_SAVE_BY_TITLE_BODY"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "ACTION_QUICK_LOAD_BY_UUID"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "ACTION_TRIMCACHE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "ACTION_RESTORE_CACHE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->removeCacheAndResave(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->close(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->save(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->prepareCache(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->trimCache(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->restoreCaches(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->stopSelfIfNoLongerUsed()V

    return-void

    :cond_7
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleStartCommand, not exist intent : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->stopSelfIfNoLongerUsed()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x378663f8 -> :sswitch_5
        -0x2735ce49 -> :sswitch_4
        -0xcb009db -> :sswitch_3
        0x290b5d98 -> :sswitch_2
        0x5cfd8cc1 -> :sswitch_1
        0x5e72b607 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->stopTrimCache(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onCreate()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$1;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->mApplicationLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ApplicationLifecycleCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->addOnApplicationLifecycleCallback(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ApplicationLifecycleCallback;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$2;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->setOnDocumentHandlerStateListener(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$OnWorkingStateListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->getState()Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->startForeground(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->dumpServiceWrapper()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onDestroy()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->stopForeground()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->mApplicationLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ApplicationLifecycleCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->removeOnApplicationLifecycleCallback(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ApplicationLifecycleCallback;)V

    return-void
.end method

.method public onSubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 5
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onSubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscribed, wrapper : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotesWordDocumentService"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->dumpServiceWrapper()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->maintainConnection(ZLjava/lang/Class;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", e : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->getActivityCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskRemoved, call stopRecording, rootIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activity count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesWordDocumentService"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    if-gtz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->mIsOnTaskRemoving:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->mIsOnTaskRemoving:Z

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->stopForeground()V

    const-string p1, "onTaskRemoved, done"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskRemoved, activity count : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isOnTaskRemoving : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->mIsOnTaskRemoving:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public onUnsubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnsubscribed, wrapper : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotesWordDocumentService"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->dumpServiceWrapper()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->maintainConnection(ZLjava/lang/Class;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->stopSelfIfNoLongerUsed()V

    return-void
.end method
