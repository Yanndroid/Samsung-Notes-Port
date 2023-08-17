.class public Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PRINT_TOKEN_LENGTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SmpInterfaceImpl"


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

.method public static appUpdated(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v1, "app updated"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_APP_UPDATE_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static bootCompleted(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_BOOT_COMPLETED_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method private static canSetUploadClientsAlarmForInit(JJ)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    sget-wide p0, Lcom/samsung/android/sdk/smp/common/constants/Constants;->UPLOAD_ALARM_FOR_INIT_COOLING_MILLIS:J

    add-long/2addr p2, p0

    cmp-long p0, v0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkOptInFailCase(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "error_message"

    const-string v2, "error_code"

    if-eqz p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "SMP_0201"

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Appid is not set. Should request after Smp.init is called"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "SMP_0202"

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Userid is not set. Should request after Smp.setUserId is called"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne p0, p1, :cond_2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "SMP_0203"

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Network on main thread error. Should request in worker thread"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static clearAllAppFilter(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->clearAllAppFilterData(Landroid/content/Context;)V

    return-void
.end method

.method public static clearAllAppReferrer(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->clearAllAppReferrerData(Landroid/content/Context;)V

    return-void
.end method

.method public static clearAppFilter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->clearAppFilterData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearAppReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->clearAppReferrerData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearData(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear data. timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->setDataCleared(Z)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->clearSmpData(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/SmpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "clear data success"

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->setDataCleared(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/SmpResult;->getResultData()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, ""

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/SmpResult;->getResultData()Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "error_code"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/SmpResult;->getResultData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/SmpResult;->getResultData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear data fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error msg - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private static clearSmpData(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 11

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->getDeviceNickname()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "error_message"

    const-string v5, "error_code"

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "SMP_0201"

    invoke-virtual {p0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Appid is not set. Should request after Smp.init is called"

    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v6, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v2, v7, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "SMP_0203"

    invoke-virtual {p0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Network on main thread error. Should request in worker thread"

    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v6, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->isUserBasedOptIn(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSmpID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getUID()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "SMP_0202"

    invoke-virtual {p0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Userid is not set. Should request after Smp.setUserId is called"

    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v6, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v3, "SmpId is not generated yet. clear device data only"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move v9, v2

    goto :goto_0

    :cond_3
    move v9, v6

    :goto_0
    move-object v3, p0

    move-object v5, v0

    move-object v6, v1

    move v8, p1

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/sdk/smp/data/DataManager;->clearSmpData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static feedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add custom feedback - mid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "custom_feedback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p2, v1, v0, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static getAppFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->getAppFilterData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppFilterKeySet(Landroid/content/Context;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->getAppFilterKeySet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getAppReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->getAppReferrerData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppReferrerKeySet(Landroid/content/Context;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->getAppReferrerKeySet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static getDelimiter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getNotifChannelId(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getNotiChannelId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotifChannelId(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$18;

    invoke-direct {v1, p2, p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$18;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getNotifColor(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getNotiColor()I

    move-result p0

    return p0
.end method

.method public static getNotifColor(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$16;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$16;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getNotifGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getNotiGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotifGroup(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$20;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$20;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getOptIn(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isOnlySupportGeneralPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string p1, "device does not support getOptIn"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const-string v0, "SMP_0204"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string v0, "The device does not support opt-in/out"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->isUserBasedOptIn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptIn()Z

    move-result p1

    const-string v0, "optin"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptInTime()J

    move-result-wide v0

    const-string v2, "optin_time"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current optin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->checkOptInFailCase(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->requestGetUserOptIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static getParsedReferrerMap(Landroid/content/Intent;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getParsedReferrerMap(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getParsedReferrerMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getParsedReferrerMap(Landroid/net/Uri;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "smpReferrer"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->parseReferrer(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static getParsedReferrerMap(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "smpReferrer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->parseReferrer(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getPushToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushToken()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->printToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPushToken(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$5;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$5;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getPushType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushType()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get push type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPushType(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$6;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$6;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getSmpID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isOnlySupportGeneralPush(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v0, "device does not support SmpId"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->isInitialUploadDone(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSmpID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getSmpId(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$2;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$2;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getSound(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSoundUriString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getSound(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$8;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$8;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getSoundEnabled(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$10;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$10;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getSoundEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSoundEnabled()Z

    move-result p0

    return p0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getUID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$4;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$4;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getVibrateEnabled(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$14;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$14;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getVibrateEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getVibrateEnabled()Z

    move-result p0

    return p0
.end method

.method public static getVibratePattern(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "[",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$12;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$12;-><init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getVibratePattern(Landroid/content/Context;)[J
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getVibratePattern()[J

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->checkModeAndEnableLog(Landroid/content/Context;)I

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->saveInitDataToPref(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->setDataCleared(Z)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ptype:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->printToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "init but not on main process. do nothing."

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/push/PushHelper;->getInstance()Lcom/samsung/android/sdk/smp/push/PushHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/push/PushHelperFeature;->initializePushPlatform(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/PushHelper;->isPushRegComplete(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->migratePpmtData(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/push/PushHelperFeature;->register(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->hasSppForceActivationFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/BroadcastUtil;->broadcastSmpInitSuccessForSppForceActivationFeature(Landroid/content/Context;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/push/PushHelperFeature;->validateAndSwitchPushPlatform(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->countRunningRealtimeMidsInFcmService()I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->numberOfIncompletedMarketings(Landroid/content/Context;)J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->getExternalFeedbackDataCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isOnlySupportGeneralPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->uploadClientsForInit(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/common/util/BroadcastUtil;->broadcastSmpInitSuccess(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->countRunningRealtimeMidsInFcmService()I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->numberOfIncompletedMarketings(Landroid/content/Context;)J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_7
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->getExternalFeedbackDataCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_8
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/ack/AckManager;->hasAckDataToSend(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/ack/AckManager;->dispatchSendAckTask(Landroid/content/Context;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->countRunningRealtimeMidsInFcmService()I

    move-result v2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->numberOfIncompletedMarketings(Landroid/content/Context;)J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-lez v2, :cond_a

    new-instance v2, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_a
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->getExternalFeedbackDataCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_b
    throw v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V
    .locals 5

    const-string v0, "allArea"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " P:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->getName(Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " A:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->initialize(Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->setUploadAlarmForInitCanceled(Z)V

    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->INITIALIZE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnThread(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V

    return-void
.end method

.method private static isDefaultChannel(Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ppmt_notice_cid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Marketing:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "ppmt_marketing_cid"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMainProcess(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized migratePpmtData(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->isPpmtDataMigrated()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->migratePpmtData(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    :cond_0
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->migratePpmtData(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setPpmtDataMigrated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static parseReferrer(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string p1, "empty referrer data"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "="

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getDelimiter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getDelimiter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, p1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static printToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const-string p0, "invalid"

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x5

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeDefaultChannelAndReplace(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getVisibleNotifications(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, p3}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setNotiChannelId(ILjava/lang/String;)V

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->redisplayMarketing(Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string p1, "default channel has been deleted : redisplay notifications"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeSmpInitResultListener()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v1, "remove init result listener"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->getInstance()Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->removeSmpInitResultListener()V

    return-void
.end method

.method public static removeSmpPushResultListener()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v1, "remove push result listener"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->getInstance()Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->removeSmpPushResultListener()V

    return-void
.end method

.method private static requestGetUserOptIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 5

    const-string v0, "optin"

    new-instance v1, Lcom/samsung/android/sdk/smp/optin/GetUserOptInRequest;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sdk/smp/optin/GetUserOptInRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, p3}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/NetworkRequest;I)Lcom/samsung/android/sdk/smp/common/network/NetworkResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkErrorCodeParser;->parseErrorToSmpResult(ILjava/lang/String;)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "optinsts"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-gtz p3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptIn()Z

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptInTime()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setOptIn(Z)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setOptInTime(J)V

    :goto_0
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "optin_time"

    invoke-virtual {p2, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current optin : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "error_code"

    const-string p1, "SMP_0502"

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "error_message"

    const-string p1, "Invalid server response"

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p0
.end method

.method private static requestSetUserOptIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/smp/optin/SetUserOptInRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/optin/SetUserOptInRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0, v0, p4}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/NetworkRequest;I)Lcom/samsung/android/sdk/smp/common/network/NetworkResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkErrorCodeParser;->parseErrorToSmpResult(ILjava/lang/String;)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "optinsts"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setOptIn(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setOptInTime(J)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p4, "optin"

    invoke-virtual {p0, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "optin_time"

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const-string p2, "SMP_0502"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Invalid server response"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1
.end method

.method public static setAppFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/data/DataManager;->setAppFilterData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppFilter(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->setAppFilterData(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static setAppReferrer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/data/DataManager;->setAppReferrerData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppReferrer(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->setAppReferrerData(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static setDebug(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->enableLog(Z)V

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$1;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static setNotifChannel(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getNotiChannelId(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->isDefaultChannel(Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0, v2, v5, v3}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->removeDefaultChannelAndReplace(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setNotiChannelId(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channel - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not created"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Channel - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not created. Channel must be created before setNotifChannel()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public static setNotifChannel(Landroid/content/Context;Ljava/util/Map;Lcom/samsung/android/sdk/smp/SmpCallback$Success;Lcom/samsung/android/sdk/smp/SmpCallback$Error;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Error;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/samsung/android/sdk/smp/SmpCallback$Success;Lcom/samsung/android/sdk/smp/SmpCallback$Error;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setNotifColor(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setNotiColor(I)V

    return-void
.end method

.method public static setNotifColor(Landroid/content/Context;ILcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;-><init>(Landroid/content/Context;ILcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setNotifGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setNotiGroup(Ljava/lang/String;)V

    return-void
.end method

.method public static setNotifGroup(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$19;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized setOptIn(Landroid/content/Context;ZIZ)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isOnlySupportGeneralPush(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string p1, "device does not support setOptIn"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const-string p2, "SMP_0204"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "The device does not support opt-in/out"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set optin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", updateOption:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->isUserBasedOptIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setOptInForUserBased(Landroid/content/Context;ZIZ)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setOptInForDeviceBased(Landroid/content/Context;ZZ)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpResult;->getResultData()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "optin_time"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opt-in success. optin_time : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v1, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opt-out success. optin_time : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p2, ""

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpResult;->getResultData()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpResult;->getResultData()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "error_code"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "opt-in fail - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v1, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "opt-out fail - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static setOptInForDeviceBased(Landroid/content/Context;ZZ)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "optin_time"

    const-string v2, "optin"

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptIn()Z

    move-result p2

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptInTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptInTime()J

    move-result-wide p0

    invoke-virtual {p2, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setOptIn(Z)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setOptInTime(J)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1
.end method

.method private static setOptInForUserBased(Landroid/content/Context;ZIZ)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->checkOptInFailCase(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptIn()Z

    move-result p3

    if-ne p3, p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptInTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-eqz p3, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "optin"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptInTime()J

    move-result-wide p1

    const-string p3, "optin_time"

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_1
    invoke-static {p0, v1, v2, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->requestSetUserOptIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static setSmpInitResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set init result listener"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->getInstance()Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->setSmpInitResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;)V

    return-void
.end method

.method public static setSmpPushResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set push result listener"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->getInstance()Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->setSmpPushResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;)V

    return-void
.end method

.method public static setSound(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setSoundUriString(Ljava/lang/String;)V

    return-void
.end method

.method public static setSound(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$7;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setSoundEnabled(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setSoundEnabled(Z)V

    return-void
.end method

.method public static setSoundEnabled(Landroid/content/Context;ZLcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$9;-><init>(Landroid/content/Context;ZLcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set uid"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setUID(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->isUserBasedOptIn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setOptIn(Z)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setOptInTime(J)V

    :cond_1
    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setVibrateEnabled(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setVibrateEnabled(Z)V

    return-void
.end method

.method public static setVibrateEnabled(Landroid/content/Context;ZLcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$13;-><init>(Landroid/content/Context;ZLcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setVibratePattern(Landroid/content/Context;[J)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setVibratePattern([J)V

    return-void
.end method

.method public static setVibratePattern(Landroid/content/Context;[JLcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$11;-><init>(Landroid/content/Context;[JLcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static uploadClientsForInit(Landroid/content/Context;)V
    .locals 9

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->isInitialUploadDone(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->triggerUploadClientsNow(Landroid/content/Context;Z)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->getAvailableUploadPeriod(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getLastSetUploadAlarmForInitTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->canSetUploadClientsAlarmForInit(JJ)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->setUploadClientsAlarmForInit(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getLastUploadTryTime()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v2, "device time is changed. update last upload time"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setLastUploadTryTime(J)V

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setLastSetUploadAlarmForInitTime(J)V

    goto :goto_0

    :cond_2
    sub-long/2addr v1, v5

    sget-wide v7, Lcom/samsung/android/sdk/smp/common/constants/Constants;->UPLOAD_ALARM_FOR_INIT_COOLING_MILLIS:J

    add-long/2addr v3, v7

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sget-object v0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "until upload period : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", until cooling time : "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next upload will be available after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    div-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/BroadcastUtil;->broadcastSmpInitSuccess(Landroid/content/Context;Z)V

    return-void
.end method
