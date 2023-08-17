.class public Lcom/samsung/android/sdk/smp/marketing/MarketingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketingManager"

.field private static mMarketing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/smp/marketing/Marketing;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastDoIncompRequestTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->mMarketing:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustMarketingDisplayTimeByTimeBase(Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->timeBase:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlStartMillis:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustLocalTimeToUtc0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlStartMillis:J

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlEndMillis:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustLocalTimeToUtc0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlEndMillis:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustUtc0ToLocalTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustUtc0ToLocalTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    :goto_0
    return-void
.end method

.method public static cancelAllMarketingAlarms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->cancelDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->cancelDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->cancelDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static checkNotificationCleared(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v1, "checkNotificationCleared. not displayed state. ignore this"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingDisplayId(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isNotificationVisible(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v3, "checkNotificationCleared. notification is visible"

    invoke-static {v1, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v1, v3, v2, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->CHECK_NOTIFICATION_CLEARED_DELAY_MILLIS:J

    add-long/2addr v2, v4

    const/4 p1, 0x0

    invoke-static {p0, v1, v2, v3, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v3, "checkNotificationCleared. notification is cleared. generate click feedback"

    invoke-static {v1, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToGone(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method private static checkRealtimeMarketing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "fcm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseMarketingDisplayTime(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->adjustMarketingDisplayTimeByTimeBase(Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlStartMillis:J

    cmp-long p1, v5, p1

    if-ltz p1, :cond_2

    iget-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlEndMillis:J

    cmp-long p1, p1, v5

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->doNotDisturbTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->doNotDisturbTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check realtime marketing fail : parsing error. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static checkValidity(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkValidity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x2800

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static clearMarketingData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v1, "fail to clear data. db open fail"

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isMarketingExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMarketingType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getDisplayManager(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingDisplayId(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_2

    if-lez v3, :cond_2

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->clear(Landroid/content/Context;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to clear data. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return v0

    :cond_2
    :goto_1
    :try_start_3
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->cancelAllMarketingAlarms(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getResDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->deleteFiles(Ljava/lang/String;)Z

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteMarketingData(Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->clearMarketingMap(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "successfully delete all related data"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0

    :cond_4
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v1, "fail to clear data. invalid params"

    goto :goto_0
.end method

.method public static clearMarketingMap(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->mMarketing:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static deleteOverDatedMarketings(Landroid/content/Context;)V
    .locals 8

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getAllMarketingList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->isMarketingOverDated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "overdated but delete later to send feedback"

    if-eqz v5, :cond_2

    :try_start_1
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, v6}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->clearDisplayedMarketing(Landroid/content/Context;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->MARKETING_SAVE_TIME_MILLIS:J

    sub-long/2addr v4, v6

    sget-wide v6, Lcom/samsung/android/sdk/smp/common/constants/Constants;->DAYMILLIS:J

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingReceivedTime(Ljava/lang/String;J)Z

    goto :goto_4

    :cond_2
    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->clearMarketingData(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_4

    :cond_4
    :goto_2
    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v3, v6}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_3
    invoke-static {p0, v3, v4, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isDataSaverMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DATA_SAVER_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :catch_0
    move-exception v4

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to delete overdated marketings:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method private static deleteUnusedResources(Landroid/content/Context;)V
    .locals 8

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getResDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isMarketingExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete unused resource["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->deleteFiles(Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    :cond_4
    return-void
.end method

.method public static doIncompleteRequest(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "doIncompleteRequest. dbHandler null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-wide v1, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->sLastDoIncompRequestTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/samsung/android/sdk/smp/common/constants/Constants;->DO_INCOMP_REQUEST_PREVENT_MILLIS:J

    sub-long v1, v3, v1

    cmp-long v1, v5, v1

    if-lez v1, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v1, "doIncompleteRequest. execution time is too short"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_1
    sput-wide v3, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->sLastDoIncompRequestTime:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getAllMarketingStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->isRunningRealtimeMidInFcmService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doIncompleteRequest. skip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". It is already running in FcmService"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-static {p0, v3, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->doIncompleteRequest(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method private static doIncompleteRequest(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete Request. state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v2

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForScreenOnListener(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForGetMarketingStatus(Landroid/content/Context;)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "marketing_sub_action"

    const-string v2, "download_res"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v0, v2, p2, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p2, 0x0

    invoke-static {p0, v0, v2, v3, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForScreenOnListener(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForDisplay(Landroid/content/Context;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTtlEndMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gtz p2, :cond_4

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->clearDisplayedMarketing(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "fail_due_to_do_not_disturb_time"

    goto :goto_1

    :catch_1
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_0

    :catch_2
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_0

    :catch_3
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_0
    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "dberror"

    :goto_1
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static finishRealtimeMarketing(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v1, "finish real time marketing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->requestUploadClientsData(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->countRunningRealtimeMidsInFcmService()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, "multiple real-time marketings are running. do not cancel FCM_SERVICE_COMPLEMENTARY_EVENT alarm"

    invoke-static {v0, p1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->FCM_SERVICE_COMPLEMENTARY_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->cancelDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setFcmServiceRetryCount(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->removeRunningRealtimeMidInFcmService(Ljava/lang/String;)V

    return-void
.end method

.method public static getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;
    .locals 5

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->mMarketing:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingMsgType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingUserdata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingDisplayId(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getExpectedDisplayTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->updateExpectedDisplayTime(Landroid/content/Context;)V

    :cond_2
    return-object v0

    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "fail to get marketing. invalid params"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static getMarketing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;
    .locals 3

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getExpectedDisplayTime(Ljava/lang/String;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setExpectedDisplayTimeMillis(J)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getExpectedDisplayTimeMillis()J

    move-result-wide p3

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-gtz p3, :cond_0

    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->updateExpectedDisplayTime(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->mMarketing:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-object p2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p1, "db open fail"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to get marketing. invalid params"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static getVisibleNotifications(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/Marketing;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p1, "getVisibleNotifications. dbHandler null"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingList(Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    if-nez v2, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p1, "getVisibleNotifications. fail to get marketings"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMarketingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getChannelType()I

    move-result v3

    if-ne v3, p1, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isNotificationVisible(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static handleBootOrUpdateEvent(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->handleDisplayedMarketingsWhenBootOrUpdate(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->doIncompleteRequest(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->deleteOverDatedMarketings(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->deleteUnusedResources(Landroid/content/Context;)V

    return-void
.end method

.method private static handleDisplayedMarketingsWhenBootOrUpdate(Landroid/content/Context;Z)V
    .locals 8

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p1, "handleDisplayedMarketingsWhenBootOrUpdate. dbHandler null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getAllDisplayedMarketingList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToGone(Landroid/content/Context;Ljava/lang/String;Z)V

    :try_start_0
    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getClearTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTtlEndMillis()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getClearTimeMillis()J

    move-result-wide v3

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    if-eqz p1, :cond_3

    const-string v3, "reboot"

    goto :goto_2

    :cond_3
    const-string v3, "app_update"

    :goto_2
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->SYSTEM_EVENT_RECEIVED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDisplayedMarketingsWhenBootOrUpdate. error while parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method public static handleMarketingExceptions(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to handle message. db error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p2, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "dberror"

    :goto_0
    invoke-static {p1, p2, p0, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "fail to handle message. internal error"

    :goto_1
    invoke-static {p0, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_2
    invoke-static {p1, p2, p0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "fail to handle message. not supported type"

    invoke-static {p0, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :cond_2
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "fail to handle message. wrong meta data"

    invoke-static {p0, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :cond_3
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "fail to handle message. display not available due to do not disturb time"

    invoke-static {p0, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "fail_due_to_do_not_disturb_time"

    goto :goto_0

    :cond_4
    instance-of p0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidReferrerException;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "fail to handle message. invalid referrer"

    invoke-static {p0, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->REFERRER_VALIDATION_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "fail to handle message. unknown exception"

    goto :goto_1

    :goto_3
    return-void
.end method

.method public static handleMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p1, "fail to handle message. context is null"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseAppData(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p1, "fail to handle message. invalid data"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->userdata:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->checkRealtimeMarketing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real time marketing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->startRealtimeMarketing(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->msgType:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->userdata:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->insertMarketingToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v2, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DELIVER:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/data/DebugDataManager;->generateDeliverFeedbackDetail(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v2, v3, p2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "marketing_sub_action"

    const-string v3, "deliver"

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mid"

    iget-object v3, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msg_type"

    iget-object v3, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->msgType:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userdata"

    iget-object v3, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->userdata:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "display_id"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v3, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    invoke-direct {v1, v2, p2, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    iget-object v1, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    invoke-static {p2, p0, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->handleMarketingExceptions(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :goto_1
    iget-object p1, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->finishRealtimeMarketing(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void

    :goto_2
    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->finishRealtimeMarketing(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    throw p2
.end method

.method public static handleMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->requestDownloadResource(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    goto :goto_0

    :catch_3
    move-exception p2

    goto :goto_0

    :catch_4
    move-exception p2

    :goto_0
    invoke-static {p2, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->handleMarketingExceptions(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->deleteOverDatedMarketings(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->deleteUnusedResources(Landroid/content/Context;)V

    return-void
.end method

.method private static insertMarketingToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->checkValidity(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p1, "fail to insert marketing. invalid mid"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to insert marketing. db open fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isTestMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->FAILED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->clearMarketingData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to delete previous marketing"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return v1

    :cond_3
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isMarketingExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string p2, "already have the same marketing"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return v1

    :cond_4
    :try_start_2
    invoke-static {p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->checkValidity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->insertMarketingData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return p0

    :cond_5
    const/4 p0, 0x0

    :try_start_3
    invoke-virtual {v0, p1, p0, p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->insertMarketingData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0
.end method

.method private static isMarketingOverDated(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingReceivedTime(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    :try_start_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTtlStartMillis()J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    move-wide v1, p0

    :catch_0
    :cond_0
    :try_start_2
    sget-wide p0, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->MARKETING_SAVE_TIME_MILLIS:J

    add-long/2addr v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long p0, p0, v1

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return p0

    :cond_2
    :try_start_3
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v1, "fail to get marketing received time"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0

    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string v0, "invalid params"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static numberOfIncompletedMarketings(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->countIncompletedMarketings()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static redisplayMarketing(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/Marketing;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->displayMarketing(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static startRealtimeMarketing(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start real time marketing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->addRunningRealtimeMidInFcmService(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setFcmServiceRetryCount(I)V

    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->FCM_SERVICE_COMPLEMENTARY_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/sdk/smp/common/constants/Constants;->FCM_SERVICE_COMPLEMENTARY_MILLIS:J

    add-long/2addr v1, v3

    invoke-static {p0, p1, v1, v2, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    return-void
.end method
