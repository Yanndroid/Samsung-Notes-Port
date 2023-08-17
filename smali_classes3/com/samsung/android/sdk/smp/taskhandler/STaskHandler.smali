.class public Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "STaskHandler"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handle(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    .locals 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSupportCountryCode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    const-string p1, "The current country code is not supported on this sdk. should check the sdk that you are importing."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->isSmpDeactivated()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->DEACTIVATE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->getAction()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    const-string p1, "handleCommonAction. smp is deactivated. do nothing"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle action. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->getAction()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->handleMarketingAction(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask$Action;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->getAction()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->handleCommonAction(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    const-string p1, "handle. context or task is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static handleCommonAction(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->INITIALIZE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->init(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->requestUploadClientsData(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SEND_ACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/ack/AckManager;->sendAck(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->doIncompleteRequest(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SAVE_APP_USAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_e

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/data/UsageManager;->saveAppUsage(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->GDPR:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_e

    const-string p1, "requestId"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/sdk/smp/gdpr/GDPRManager$GDPRRequestType;->GET:Lcom/samsung/android/sdk/smp/gdpr/GDPRManager$GDPRRequestType;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/gdpr/GDPRManager;->requestGDPR(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/gdpr/GDPRManager$GDPRRequestType;)V

    goto/16 :goto_1

    :cond_5
    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_APP_UPDATE_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_BOOT_COMPLETED_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->DEACTIVATE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->deactivate(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_7
    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->FCM_SERVICE_COMPLEMENTARY_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->countRunningRealtimeMidsInFcmService()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_9

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getFcmServiceRetryCount()I

    move-result v0

    sget-object v2, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FcmService complementary retry count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    if-ge v0, v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setFcmServiceRetryCount(I)V

    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    invoke-direct {p1, p2, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/sdk/smp/common/constants/Constants;->FCM_SERVICE_COMPLEMENTARY_MILLIS:J

    add-long/2addr v0, v2

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    goto :goto_1

    :cond_8
    const-string p0, "over FcmService complementary retry count"

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    goto :goto_1

    :cond_a
    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->sendExternalFeedbacks(Landroid/content/Context;)V

    goto :goto_1

    :cond_b
    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCommonAction. invalid action : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->isTestModeChecked()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->checkModeAndEnableLog(Landroid/content/Context;)I

    :cond_d
    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_BOOT_COMPLETED_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/smp/push/PushHelper;->getInstance()Lcom/samsung/android/sdk/smp/push/PushHelper;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/smp/push/PushHelperFeature;->handleBootOrUpdateEvent(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->handleBootOrUpdateEvent(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->handleBootOrUpdateEvent(Landroid/content/Context;)V

    :cond_e
    :goto_1
    return-void
.end method

.method private static handleMarketingAction(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask$Action;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    const-string p1, "handleAction error. mid is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    const-string p1, "handleAction error. dbHandler is null"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->CANCELED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p1, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    const-string p3, "already canceled. ignore this event"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_2
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, p2, p3, v1}, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->handleMarketingBasicAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->clearDisplayedMarketing(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "custom_feedback"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object p3, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, p2, p3, p1}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0, p2, p3}, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->handleScreenOn(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    sget-object p3, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {p3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->checkNotificationCleared(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object p3, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAction error. invalid action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    :goto_0
    :try_start_2
    invoke-static {p1, p0, p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->handleMarketingExceptions(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0
.end method

.method private static handleMarketingBasicAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V
    .locals 3

    if-nez p2, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    const-string p2, "handleMarketingBasicAction error. data is null"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "marketing_sub_action"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->isValidState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 p3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "deliver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "get_marketing_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move p3, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "download_res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :goto_0
    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p3, "is_first_display"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->displayMarketing(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_1
    const-string p3, "msg_type"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "userdata"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "display_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p1, p3, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->handleMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_2
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->requestGetMarketingStatus(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->requestDownloadResource(Landroid/content/Context;)V

    :goto_1
    invoke-static {p0, p2, p1, v2}, Lcom/samsung/android/sdk/smp/data/DebugDataManager;->addFeedback(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42202c69 -> :sswitch_3
        0x545515f4 -> :sswitch_2
        0x5c6c0925 -> :sswitch_1
        0x63a518c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleScreenOn(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    if-nez p2, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->TAG:Ljava/lang/String;

    const-string p2, "handleScreenOn error. data is null"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "marketing_sub_action"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "screen_on_fired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "listening_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    const-string v0, "display_start_hour"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "display_start_min"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v1, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    new-instance v5, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    const-string v1, "display_end_hour"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "display_end_min"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v5, v1, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    new-instance v6, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v6, v1, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    new-instance v7, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    const-string v0, "screen_on_end_time"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->getInstance()Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;->startCheckingScreenOn(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->forceDisplay(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static isValidState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "deliver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "get_marketing_status"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "download_res"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    goto :goto_1

    :pswitch_2
    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x42202c69 -> :sswitch_3
        0x545515f4 -> :sswitch_2
        0x5c6c0925 -> :sswitch_1
        0x63a518c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
