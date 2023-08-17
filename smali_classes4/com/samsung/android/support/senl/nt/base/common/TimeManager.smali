.class public final Lcom/samsung/android/support/senl/nt/base/common/TimeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONVERT_MUL:I = 0x3e8

.field private static final INITIAL_TIME:J = 0x154f600fa47L

.field private static final SYNC_PREFERENCE_TIME_MANAGER_DIFF_TIME_KEY:Ljava/lang/String; = "diffTimeKey"

.field private static final SYNC_PREFERENCE_TIME_MANAGER_LAST_CURRENT_TIME_KEY:Ljava/lang/String; = "lastTimeKey"

.field private static final SYNC_PREFERENCE_TIME_MANAGER_LAST_ELAPSE_TIME_KEY:Ljava/lang/String; = "lastElapseTimeKey"

.field private static final SYNC_PREFERENCE_TIME_MANAGER_NAME:Ljava/lang/String; = "TimeManagerName"

.field private static final TAG:Ljava/lang/String; = "TimeManager"

.field private static sTimeManager:Lcom/samsung/android/support/senl/nt/base/common/TimeManager;


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

.method public static convertSdkTimeToAppTime(J)J
    .locals 2

    const-wide v0, 0x533e0f3d1a558L

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static getCurrentTime()J
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTime(Landroid/content/Context;)J
    .locals 4

    const-string v0, "TimeManagerName"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "diffTimeKey"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/TimeManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->sTimeManager:Lcom/samsung/android/support/senl/nt/base/common/TimeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->sTimeManager:Lcom/samsung/android/support/senl/nt/base/common/TimeManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->sTimeManager:Lcom/samsung/android/support/senl/nt/base/common/TimeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized updateSettings(Landroid/content/Context;JJJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TimeManagerName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "TimeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time Difference stored. TIME_DIFFERENCE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", currentDeviceTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", currentElapsedTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "diffTimeKey"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p2, "lastTimeKey"

    invoke-interface {p1, p2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p2, "lastElapseTimeKey"

    invoke-interface {p1, p2, p6, p7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized updateSettings(Landroid/content/Context;JJ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "TimeManagerName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "lastTimeKey"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p2, "lastElapseTimeKey"

    invoke-interface {p1, p2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateSettingsUsingServer(J)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "TimeManager"

    const-string v1, "updateSettingsUsingServer() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "TimeManager"

    const-string p2, "updateSettingsUsingServer() fail# context null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "TimeManagerName"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "diffTimeKey"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    const-string v2, "TimeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Time] The received server time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v4, v6, p1

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    const-string p1, "TimeManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Time] The new TIME_DIFFERENCE is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->updateSettings(Landroid/content/Context;JJJ)V

    goto :goto_0

    :cond_1
    const-string p1, "TimeManager"

    const-string p2, "[Time] The received server time is 0"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTimeSettings(Landroid/content/Context;JJ)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "TimeManagerName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastTimeKey"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "lastElapseTimeKey"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "diffTimeKey"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v9, v5, v3

    if-nez v9, :cond_0

    cmp-long v9, v7, v3

    if-nez v9, :cond_0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->updateSettings(Landroid/content/Context;JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    sub-long v5, p2, v5

    sub-long v7, p4, v7

    sub-long/2addr v5, v7

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    add-long v3, v0, v5

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-wide v7, p4

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->updateSettings(Landroid/content/Context;JJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
