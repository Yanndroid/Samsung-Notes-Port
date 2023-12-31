.class public Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;
.super Lcom/samsung/android/sdk/smp/display/DisplayManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupDisplayManager"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;-><init>()V

    return-void
.end method

.method public static broadcastFailButRetryResult(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "fail_but_retry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_first_display"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static broadcastFailResult(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "fail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->value()I

    move-result p1

    const-string p2, "feedback_event"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "feedback_detail"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static broadcastNoActionResult(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "no_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static broadcastSuccessResult(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string/jumbo v2, "success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "clear_time"

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "is_first_display"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private delayDisplayNotToDisturb(Landroid/content/Context;Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingFailCount(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingFailCount(Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to display. currently busy"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->BUSY:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->setAlarmForRetryDisplay(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static getCurrentDisplayID(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getCurrentDisplayId()I

    move-result p0

    return p0
.end method

.method public static getLayoutResID(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget p0, Lcom/samsung/android/sdk/smp/R$layout;->pop_web_view:I

    return p0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0

    :cond_1
    sget p0, Lcom/samsung/android/sdk/smp/R$layout;->pop_image_text:I

    return p0

    :cond_2
    sget p0, Lcom/samsung/android/sdk/smp/R$layout;->pop_image_only:I

    return p0

    :cond_3
    sget p0, Lcom/samsung/android/sdk/smp/R$layout;->pop_text_only:I

    return p0
.end method

.method public static setCurrentDisplayID(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->setCurrentDisplayId(I)V

    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;I)Z
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->getCurrentDisplayID(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "extra_clear"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/sdk/smp/SmpPopupService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v3, 0x44000000    # 512.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to clear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public display(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "fail to display. data null"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->printBundle(Landroid/os/Bundle;)V

    const-string v1, "mid"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "template_type"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$PopupConst;->isSupportType(I)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object p2, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not supported type. type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "disturb"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p2, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    const-string v0, "delay display not to disturb"

    invoke-static {p2, v1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->delayDisplayNotToDisturb(Landroid/content/Context;Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->getCurrentDisplayID(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->clear(Landroid/content/Context;I)Z

    :cond_3
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "extra_popup"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "extra_is_first_display"

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->isFirstDisplay()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "extra_clear_time"

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getClearTime()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_4

    const-string v4, "channel_type"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getNotificationChannelId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "extra_channel_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v3, Lcom/samsung/android/sdk/smp/SmpPopupService;

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v3, Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p2, 0x44000000    # 512.0f

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object v2, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to display. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_0

    :catch_1
    sget-object p2, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    const-string v2, "fail to display. channel not created"

    invoke-static {p2, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_0
    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
