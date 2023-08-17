.class public Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOnController"

.field private static sController:Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;


# instance fields
.field private mScreenOnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$1;-><init>(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->stopCheckingScreenOn(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->canDisplayNow(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result p0

    return p0
.end method

.method private canDisplayNow(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-static {p3, p4, v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    const-string p2, "can\'t display now due to doNotDisturbTime"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    const-string p2, "can\'t display now. not yet display time"

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->sController:Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->sController:Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->sController:Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized stopCheckingScreenOn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop checking screen on event"

    invoke-static {v0, p2, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo p2, "unregister screenOnReceiver"

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error while unregister receiver. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    const-string v1, "clear screen on controller"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while unregister receiver. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startCheckingScreenOn(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, p7, v2

    if-gez v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    const-string v3, "already screen on end time. skip screen on listening"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct {v1, v2, v3, v7, v8}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->canDisplayNow(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    const-string v3, "already screen on. create screen on event"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "marketing_sub_action"

    const-string v4, "screen_on_fired"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v4, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v3, v4, v2, v0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object/from16 v12, p1

    invoke-static {v12, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    move-object/from16 v12, p1

    goto :goto_0

    :cond_2
    move-object/from16 v12, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    :goto_0
    :try_start_2
    sget-object v13, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start checking screen on event"

    invoke-static {v13, v0, v4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnMap:Ljava/util/Map;

    new-instance v15, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;

    const/4 v11, 0x0

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;JLcom/samsung/android/sdk/smp/spsclient/ScreenOnController$1;)V

    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string v0, "register screenOnReceiver"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
