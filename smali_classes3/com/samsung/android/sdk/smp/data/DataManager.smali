.class public Lcom/samsung/android/sdk/smp/data/DataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static mIsCanceledUploadAlarmForInit:Z = false

.field private static mIsClientsUploading:Z = false


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

.method public static cancelUploadClientsAlarm(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->cancelDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static clearAllAppFilterData(Landroid/content/Context;)V
    .locals 1

    const-string v0, "clearAllAppFilterData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAllAppFilter()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw v0
.end method

.method public static clearAllAppReferrerData(Landroid/content/Context;)V
    .locals 1

    const-string v0, "clearAllAppReferrerData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAllAppReferrer()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw v0
.end method

.method public static clearAppFilterData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clearAppFilterData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAppFilter(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p1
.end method

.method public static clearAppReferrerData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clearAppReferrerData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAppReferrer(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p1
.end method

.method public static clearSmpData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 6

    if-nez p6, :cond_0

    new-instance p6, Lcom/samsung/android/sdk/smp/data/DeleteRequest;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/smp/data/DeleteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {p0, p6, p5}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/NetworkRequest;I)Lcom/samsung/android/sdk/smp/common/network/NetworkResult;

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
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->cancelUploadClientsAlarm(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    const-string p1, "clear data fail. dbHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const-string p2, "SMP_0401"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Internal error"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAll()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->removeData()V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p1, 0x1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p0
.end method

.method public static deactivate(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->removeData()V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    const-string v0, "deactivate. fail to delete db. dbHandler is null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAll()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method public static getAppFilterData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "getAppFilterData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getAppFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-object p1
.end method

.method public static getAppFilterKeySet(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
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

    const-string v0, "getAppFilterKeySet"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getAppFilterKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-object v0
.end method

.method public static getAppReferrerData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "getAppReferrerData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getAppReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-object p1
.end method

.method public static getAppReferrerKeySet(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
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

    const-string v0, "getAppReferrerKeySet"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getAppReferrerKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-object v0
.end method

.method public static getAvailableUploadPeriod(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getLastUploadTryTime()J

    move-result-wide v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->getUploadPeriodTime(Landroid/content/Context;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getUploadPeriodTime(Landroid/content/Context;)J
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getUploadPeriod()J

    move-result-wide v0

    :goto_0
    sget-wide v2, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static handleBootOrUpdateEvent(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->isInitialUploadDone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->triggerUploadClients(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private static isClientsUploading()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/smp/data/DataManager;->mIsClientsUploading:Z

    return v0
.end method

.method public static isInitialUploadDone(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSmpFirstUploadTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSamsungPushService(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->isRandomSmpIdGenerated()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isUploadAlarmForInitCanceled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/smp/data/DataManager;->mIsCanceledUploadAlarmForInit:Z

    return v0
.end method

.method private static openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error. db null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    const-string p1, "database open failed"

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requestUploadClientsData(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isOnlySupportGeneralPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    const-string v0, "device does not upload clients data"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->isDataCleared()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    const-string v0, "Upload clients request is no more valid. This may because smp data is cleared"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->setClientsUploading(Z)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->cancelUploadClientsAlarm(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setLastUploadTryTime(J)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->isInitialUploadDone(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v0, v1

    sget-object v1, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initial upload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->request()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->setClientsUploading(Z)V

    return-void
.end method

.method private static setAppFilterData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAppFilterData. value is empty. change to clear appFilter : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/data/DataManager;->clearAppFilterData(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->setAppFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>()V

    throw p0
.end method

.method public static setAppFilterData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "setAppFilterData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/sdk/smp/data/DataManager;->setAppFilterData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0
.end method

.method public static setAppFilterData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
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

    const-string/jumbo v0, "setAppFilterData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->setAppFilterData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0
.end method

.method private static setAppReferrerData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAppReferrerData. value is empty. change to clear appReferrer : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/data/DataManager;->clearAppReferrerData(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->setAppReferrer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>()V

    throw p0
.end method

.method public static setAppReferrerData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "setAppReferrerData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/sdk/smp/data/DataManager;->setAppReferrerData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0
.end method

.method public static setAppReferrerData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
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

    const-string/jumbo v0, "setAppReferrerData"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->openDBAndThrowExceptionIfFailed(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->setAppReferrerData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0
.end method

.method private static setClientsUploading(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/smp/data/DataManager;->mIsClientsUploading:Z

    return-void
.end method

.method public static setUploadAlarmForInitCanceled(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/smp/data/DataManager;->mIsCanceledUploadAlarmForInit:Z

    return-void
.end method

.method public static setUploadClientsAlarm(Landroid/content/Context;J)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    return-void
.end method

.method public static setUploadClientsAlarmForInit(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/smp/data/DataManager;->isUploadAlarmForInitCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "uploadAlarmForInit is already canceled"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setLastSetUploadAlarmForInitTime(J)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/sdk/smp/common/constants/Constants;->UPLOAD_ALARM_FOR_INIT_MILLIS:J

    add-long/2addr v1, v3

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    return-void
.end method

.method public static triggerUploadClients(Landroid/content/Context;Z)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->hasSppForceActivationFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    const-string p1, "do not proceed upload clients request. spp force activation mode"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->getAvailableUploadPeriod(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/data/DataManager;->triggerUploadClientsNow(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->setUploadClientsAlarm(Landroid/content/Context;J)V

    :goto_0
    return-void
.end method

.method public static triggerUploadClientsForFeedback(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setUploadFailCount(I)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->getAvailableUploadPeriod(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    const/16 v0, 0xa

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->getMarketing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getFeedbackDispersionMin()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getFeedbackDispersionMax()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move v2, v1

    :goto_0
    sget-object v3, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    sget-object v0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feedback dispersion - min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    sget-wide v4, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->setUploadClientsAlarm(Landroid/content/Context;J)V

    return-void
.end method

.method public static triggerUploadClientsNow(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->hasSppForceActivationFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    const-string p1, "do not proceed upload clients request. spp force activation mode"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/smp/data/DataManager;->isClientsUploading()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->TAG:Ljava/lang/String;

    const-string p1, "do not proceed upload clients request. isClientsUploading : true"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->cancelUploadClientsAlarm(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setLastUploadTryTime(J)V

    return-void
.end method
