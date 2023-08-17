.class public Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayResultHandler"


# instance fields
.field private final mClearTime:J

.field private final mIsFirstDisplay:Z

.field private final mMid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mMid:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mClearTime:J

    iput-boolean p4, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mIsFirstDisplay:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mMid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mClearTime:J

    iput-boolean p2, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mIsFirstDisplay:Z

    return-void
.end method

.method public static handlePopupDisplayResult(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    const-string p1, "fail to handle display result. data null"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "display_result"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_first_display"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "mid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    const-string p1, "fail to handle display result. mid null"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v0, v4

    goto :goto_2

    :sswitch_0
    const-string v3, "no_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_1
    const-string v3, "fail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v3, "fail_but_retry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_3
    const-string/jumbo v3, "success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_2
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-static {p0, v2, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToGone(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string v0, "feedback_event"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->fromInt(I)Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "feedback_detail"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, p0, v0, p1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    new-instance p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;

    invoke-direct {p1, v2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFailButRetry(Landroid/content/Context;)V

    goto :goto_3

    :pswitch_3
    const-wide/16 v6, -0x1

    const-string v0, "clear_time"

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;

    invoke-direct {p1, v2, v6, v7, v1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;-><init>(Ljava/lang/String;JZ)V

    invoke-virtual {p1, p0, v3, v5}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onSuccess(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f4abffd -> :sswitch_3
        -0x25619c77 -> :sswitch_2
        0x2fd71e -> :sswitch_1
        0xca9a274 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onFailButRetry(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to retry display. db open fail"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingFailCount(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingFailCount(Ljava/lang/String;I)Z

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fail to retry display. over retry count"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->isFirstDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v3, "C1009"

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->setAlarmForRetryDisplay(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p1
.end method

.method private setAlarmForCheckNotificationCleared(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isMarketingLandingRedirected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    const-string v0, "landing is redirected. skip to set check notification cleared alarm"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->INITIAL_CHECK_NOTIFICATION_CLEARED_DELAY_MILLIS:J

    add-long/2addr v1, v3

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, v2, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setAlarmForClearMarketing(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to set clear alarm. Invalid clearTime : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p4}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 p4, 0x0

    invoke-static {p1, v0, p2, p3, p4}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    return-void
.end method


# virtual methods
.method public getClearTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mClearTime:J

    return-wide v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstDisplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->mIsFirstDisplay:Z

    return v0
.end method

.method public onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->isFirstDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->isFirstDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    const-string p2, "Fail to handle display success. dbHandler null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingDisplayedTime(Ljava/lang/String;J)Z

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getClearTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->setAlarmForClearMarketing(Landroid/content/Context;JLjava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->setAlarmForCheckNotificationCleared(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setAlarmForRetryDisplay(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "marketing_sub_action"

    const-string v2, "display"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->isFirstDisplay()Z

    move-result v1

    const-string v2, "is_first_display"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->DISPLAY_RETRY_DELAY_MILLIS:J

    add-long/2addr v2, v4

    const/4 v0, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    return-void
.end method
