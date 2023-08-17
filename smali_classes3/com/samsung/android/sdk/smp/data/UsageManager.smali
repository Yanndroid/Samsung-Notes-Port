.class public Lcom/samsung/android/sdk/smp/data/UsageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsageManager"

.field private static sUsageManager:Lcom/samsung/android/sdk/smp/data/UsageManager;


# instance fields
.field private mActivityCount:I

.field private mAppStartElapsedTime:J

.field private mAppStartTime:J

.field private mIsAppUsageEnabled:Z

.field private mIsTrackingEnabled:Z

.field private mSavedSessionHashCode:I

.field private mScreenOrientationChanged:Z

.field private final mSessionStartElapsedTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionStartTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSessions:Lorg/json/JSONArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartTimes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartElapsedTime:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mActivityCount:I

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isOnlySupportGeneralPush(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mIsAppUsageEnabled:Z

    return-void
.end method

.method public static clearAppUsage(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAllAppStartData()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAllSessionData()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    :cond_0
    return-void
.end method

.method private declared-synchronized decreaseActivityCount()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mActivityCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/data/UsageManager;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/smp/data/UsageManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/data/UsageManager;->sUsageManager:Lcom/samsung/android/sdk/smp/data/UsageManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/smp/data/UsageManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smp/data/UsageManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/smp/data/UsageManager;->sUsageManager:Lcom/samsung/android/sdk/smp/data/UsageManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->sUsageManager:Lcom/samsung/android/sdk/smp/data/UsageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static handleUploadFail(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->incrementAppStartFailCount()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteOverRetryAppStart(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->incrementSessionFailCount()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteOverRetrySession(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    :cond_0
    return-void
.end method

.method private declared-synchronized increaseActivityCount()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mActivityCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static saveAppUsage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "app_start"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "app_duration"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "sessions"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_1

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "dts"

    invoke-virtual {v5, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "dur"

    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->addAppStartData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/smp/data/UsageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteOldestAppStartData()V

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x19

    const-string/jumbo v1, "session_count"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->addSessionData(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteOldestSessionData()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method private triggerUploadClientsWhenAppStarts(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->getAvailableUploadPeriod(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/push/PushHelper;->isPushRegComplete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/data/UsageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upload clients when app starts"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->triggerUploadClientsNow(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public activityCreated(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mIsAppUsageEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/UsageManager;->getActivityCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->setUploadAlarmForInitCanceled(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->cancelUploadClientsAlarm(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public activityStarted(Landroid/app/Activity;)V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mIsAppUsageEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mScreenOrientationChanged:Z

    if-eqz v4, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/data/UsageManager;->increaseActivityCount()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/UsageManager;->getActivityCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v5

    iput-wide v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mAppStartTime:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mAppStartElapsedTime:J

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getActivityTrackingEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mIsTrackingEnabled:Z

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setUploadFailCount(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/smp/data/UsageManager;->triggerUploadClientsWhenAppStarts(Landroid/content/Context;)V

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mIsTrackingEnabled:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartTimes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartElapsedTime:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public activityStopped(Landroid/app/Activity;)V
    .locals 13

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mIsAppUsageEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mScreenOrientationChanged:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSavedSessionHashCode:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSavedSessionHashCode:I

    :cond_1
    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mIsTrackingEnabled:Z

    const-string/jumbo v4, "session_count"

    const-string/jumbo v5, "sessions"

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartTimes:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartTimes:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    :goto_0
    check-cast v8, Ljava/lang/Long;

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartTimes:Landroid/util/SparseArray;

    iget v9, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSavedSessionHashCode:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :goto_1
    iget-object v9, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartElapsedTime:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartElapsedTime:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    :goto_2
    check-cast v9, Ljava/lang/Long;

    goto :goto_3

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartElapsedTime:Landroid/util/SparseArray;

    iget v10, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSavedSessionHashCode:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    :goto_3
    if-eqz v9, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-lez v10, :cond_5

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "dts"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "dur"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v11, v0, v11

    invoke-virtual {v10, v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "id"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/16 v8, 0x19

    if-lt p1, v8, :cond_5

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v8, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v9, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SAVE_APP_USAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v8, v9, p1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {v2, v8}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartTimes:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartElapsedTime:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    sget-object v3, Lcom/samsung/android/sdk/smp/data/UsageManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error while handling session. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSavedSessionHashCode:I

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/data/UsageManager;->decreaseActivityCount()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/UsageManager;->getActivityCount()I

    move-result p1

    if-lez p1, :cond_7

    return-void

    :cond_7
    invoke-static {v2}, Lcom/samsung/android/sdk/smp/push/PushHelper;->isPushRegComplete(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-wide v8, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mAppStartTime:J

    const-string v3, "app_start"

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v8, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mAppStartElapsedTime:J

    sub-long/2addr v0, v8

    const-string v3, "app_duration"

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mIsTrackingEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SAVE_APP_USAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_9
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessions:Lorg/json/JSONArray;

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartTimes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mSessionStartElapsedTime:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iput-wide v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mAppStartTime:J

    iput-wide v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mAppStartElapsedTime:J

    return-void
.end method

.method public declared-synchronized getActivityCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->mActivityCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
