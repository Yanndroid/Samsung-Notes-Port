.class public Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedbackManager"

.field private static final sExternalClickFeedbackMids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->sExternalClickFeedbackMids:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==== << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " >> ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "fail to add feedback. db open fail."

    :goto_0
    invoke-static {v0, p1, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {v1, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->isValidFeedback(Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->addFeedbackData(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$1;->$SwitchMap$com$samsung$android$sdk$smp$marketing$FeedbackManager$UploadType:[I

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->getUploadType(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;)Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->triggerUploadClientsNow(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->triggerUploadClientsForFeedback(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0

    :cond_6
    :goto_2
    const-string p0, "fail to add feedback. invalid params"

    goto :goto_0
.end method

.method public static deleteFeedbacks(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p1, "deleteFeedbacks. error : marketings empty"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p1, "deleteFeedbacks. error : dbhandler null"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "mid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feedback"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteFeedbacks(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFeedbacks. error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method public static getExternalFeedbackDataCount(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->countExternalFeedbackData()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return v0
.end method

.method private static getUploadType(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;)Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;
    .locals 1

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->isUserActionFbid(Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "user action fbid. upload type: UPLOAD_NOW_IN_SMP_SERVICE"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->UPLOAD_NOW_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->isRunningRealtimeMidInFcmService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-ne p2, v0, :cond_1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMarketingType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p1, "popup and fbid is CONSUMED. upload type: UPLOAD_NOW_IN_SMP_SERVICE"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->UPLOAD_NOW_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p1, "running in fcm service. upload type: SKIP_NOW_AND_UPLOAD_LATER_IN_FCM_SERVICE"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->SKIP_NOW_AND_UPLOAD_LATER_IN_FCM_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-ne p2, v0, :cond_3

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getRandomMinutes()I

    move-result p0

    if-lez p0, :cond_3

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p1, "random is over 0 and fbid is CONSUMED. upload type: UPLOAD_NOW_IN_SMP_SERVICE"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->UPLOAD_NOW_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "upload type: DISPERSION_IN_SMP_SERVICE"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->DISPERSION_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "default upload type: DISPERSION_IN_SMP_SERVICE"

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;->DISPERSION_IN_SMP_SERVICE:Lcom/samsung/android/sdk/smp/marketing/FeedbackManager$UploadType;

    return-object p0
.end method

.method public static handleClickFeedbackIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.samsung.android.sdk.smp.EXTRA_FEEDBACK_PATH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "com.samsung.android.sdk.smp.EXTRA_SENDER_PACKAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.sdk.smp.EXTRA_MID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.sdk.smp.LINK_TYPE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->sExternalClickFeedbackMids:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p1, "handleClickFeedbackIntent. click feedback is already generated. ignore this"

    invoke-static {p0, v2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClickFeedbackIntent. feedback path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", sender:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", linkType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    invoke-static {p0, v2, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToGone(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, v2, v0, p1}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->saveExternalFeedback(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static hasFeedbacksToSend(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getAllFeedbacksToSend()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDuplicatesAllowed(Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_1:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_2:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_3:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->SYSTEM_EVENT_RECEIVED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_DEBUG:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-ne p0, v0, :cond_0

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

.method private static isUserActionFbid(Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_1:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_2:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_3:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isValidFeedback(Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getLastFbid(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->isDuplicatesAllowed(Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "the feedback "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is already added"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p2, "app_update"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isAppUpdateFeedbackAdded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p2, "app update feedback is already added"

    goto :goto_0

    :cond_1
    const-string p2, "reboot"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isRebootFeedbackAdded(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p2, "reboot feedback is already added"

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static saveExternalFeedback(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p1, "save external feedback fail. dbHandler null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->addExternalFeedbackData(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string p1, "save external feedback fail. "

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendExternalFeedbacks(Landroid/content/Context;)V
    .locals 10

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string v0, "send external feedbacks fail. context null"

    :goto_0
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->TAG:Ljava/lang/String;

    const-string v0, "db open fail"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getExternalFeedbackList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ge v2, v4, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/samsung/android/sdk/smp/marketing/ExternalFeedbackRequest;

    invoke-direct {v7, v4}, Lcom/samsung/android/sdk/smp/marketing/ExternalFeedbackRequest;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x3c

    invoke-static {p0, v7, v8}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/NetworkRequest;I)Lcom/samsung/android/sdk/smp/common/network/NetworkResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteExternalFeedbackData(Ljava/lang/String;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseCode()I

    move-result v8

    const/16 v9, 0x190

    if-lt v8, v9, :cond_3

    invoke-virtual {v7}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseCode()I

    move-result v7

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getExternalFeedbackFailCount(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateExternalFeedbackFailCount(Ljava/lang/String;I)Z

    if-le v3, v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-lez v3, :cond_7

    if-gt v3, v5, :cond_7

    const/4 v1, 0x3

    if-gt v3, v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->UPLOAD_EXTERNAL_FEEDBACK_FIRST_DELAY_MILLIS:J

    goto :goto_4

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->UPLOAD_EXTERNAL_FEEDBACK_SECOND_DELAY_MILLIS:J

    :goto_4
    add-long/2addr v1, v3

    new-instance v3, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v4, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v3, v1, v2, v6}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method
