.class public Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandoffUtils"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

.field private static final mSupported:Z


# instance fields
.field private final mHandoffExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsNeedHandoff:Z

.field private mLastHandoffCaller:I

.field private mLastHandoffCallerDeviceType:I

.field private mLastModifiedHandoffActionTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "HandoffUtils"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mHandoffExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCaller:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCallerDeviceType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mIsNeedHandoff:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastModifiedHandoffActionTime:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCallerDeviceType:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCallerDeviceType:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastModifiedHandoffActionTime:J

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isComposerData(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Composer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMainData(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Main"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FolderList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TagNote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OldList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OldNote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GCSList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GCSNote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setDefaultMetaData(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "app_id"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getApplicationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v1, "0.1.0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sync_on"

    const-string v1, "Settings"

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_sync_notes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HandoffUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setLastHandoffCaller(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "HandoffUtils"

    const/4 v1, -0x1

    :try_start_0
    const-string v2, "activity_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isMainData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCaller:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isComposerData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCaller:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCaller:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCaller:I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLastHandoffCaller: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCaller:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;)V

    return-void
.end method

.method public callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    invoke-interface {p4, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;->onResult(Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callHandoff#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandoffUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mHandoffExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;-><init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disableHandoff()V
    .locals 2

    const-string v0, "disableHandoff"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public enableHandoff(Lorg/json/JSONObject;)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mIsNeedHandoff:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->setDefaultMetaData(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->setLastHandoffCaller(Lorg/json/JSONObject;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "handoffData"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget p1, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffConstant;->HANDOFF_DEFAULT_TIME_OUT:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-string p1, "expiryTime"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const-string v1, "enableHandoff"

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getActivityTypeFromClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    const-string v0, "Handoff"

    if-nez p1, :cond_1

    const-string p1, "HandoffUtils"

    const-string v1, "getActivityTypeFromClass# clazz is null return default activityType"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Composer"

    return-object p1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "Main"

    return-object p1

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->getFolderListClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "FolderList"

    return-object p1

    :cond_4
    return-object v0
.end method

.method public getClassFromActivityType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "Composer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FolderList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->getFolderListClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLastHandoffCaller()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastHandoffCaller:I

    return v0
.end method

.method public declared-synchronized getLastModifiedHandoffActionTime()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mLastModifiedHandoffActionTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHandoffEnabled()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffFixedStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHandoffFixedStateEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mSupported:Z

    return v0
.end method

.method public loadHandoffData(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$2;-><init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;)V

    const-string p1, "getHandoffData"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;)V

    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.mcfds.HandoffProvider/EventChanged"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.mcfds.HandoffProvider/DataSendingSuccess/com.samsung.android.app.notes"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.mcfds.HandoffProvider/DataReceivingSuccess/com.samsung.android.app.notes"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerContentObserver# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HandoffUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public registerContentObserverForSendingSuccess(Landroid/database/ContentObserver;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.mcfds.HandoffProvider/DataSendingSuccess/com.samsung.android.app.notes"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerContentObserverForSendingSuccess# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HandoffUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public requestSyncHandoffData()V
    .locals 2

    const-string v0, "requestSyncHandoffData"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public declared-synchronized setIsNeedHandoff(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->mIsNeedHandoff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showConnectToNetwork()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->sync_tipcard_fail_to_network_error_body:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public showDialogDisableSyncTurnOn(Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "HandoffUtils"

    const-string v1, "showDialogDisableSyncTurnOn#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->handoff_turn_on_sync_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->handoff_tablet_turn_on_sync_toast_msg:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->handoff_phone_turn_on_sync_toast_msg:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, -0x2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->dialog_cancel:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$4;

    invoke-direct {v4, p0, p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$4;-><init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Ljava/lang/Runnable;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2, v3, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p3, -0x1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->handoff_turn_on_sync:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$5;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$5;-><init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Landroid/app/Activity;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p3, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showTurnOnSyncToast()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->handoff_turn_on_sync_snack_bar_msg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public showWiFiSyncOnlyAndNotWiFiConnected(Ljava/lang/ref/WeakReference;)Landroidx/appcompat/app/AlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Landroidx/appcompat/app/AlertDialog;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->showWiFiSyncOnlyAndNotWiFiConnected(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public showWiFiSyncOnlyAndNotWiFiConnected(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")",
            "Landroidx/appcompat/app/AlertDialog;"
        }
    .end annotation

    const-string v0, "HandoffUtils"

    const-string v1, "showWiFiSyncOnlyAndNotWiFiConnected#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->handoff_cannot_sync_notes:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->handoff_go_to_setting_for_wifi_off_only:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, -0x2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->dialog_cancel:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$6;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$6;-><init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2, v3, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x1

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->handoff_go_to_settings:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;

    invoke-direct {v4, p0, p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;-><init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2, v3, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-object v1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterContentObserver# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HandoffUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateHandoffInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HandoffUtils"

    const-string v1, "updateHandoffInfo# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;)V

    const-string v1, "getHandoffInfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;)V

    return-void
.end method
