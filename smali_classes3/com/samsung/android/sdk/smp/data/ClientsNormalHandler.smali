.class Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;
.super Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientsNormalHandler"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private handleWebIdSuccessResponse(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "webid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getPrefManager()Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setWebId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid server response. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f7

    const-string v0, "server response error"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->afterError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private increaseFailCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getPrefManager()Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getUploadFailCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setUploadFailCount(I)V

    return v1
.end method

.method private retryUploadClients(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->hasFeedbacksToSend(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    sget-wide v2, Lcom/samsung/android/sdk/smp/common/constants/Constants;->HOURMILLIS:J

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/samsung/android/sdk/smp/data/DataManager;->setUploadClientsAlarm(Landroid/content/Context;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/sdk/smp/common/constants/Constants;->UPLOAD_RETRY_DELAY_MILLIS:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->setUploadClientsAlarm(Landroid/content/Context;J)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public afterBuildRequestError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->afterBuildRequestError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->increaseFailCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->retryUploadClients(I)V

    return-void
.end method

.method public afterError(ILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->afterError(ILjava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->increaseFailCount()I

    move-result p2

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->retryUploadClients(I)V

    return-void
.end method

.method public afterSuccess(Lcom/samsung/android/sdk/smp/data/ClientsRequest;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->handleResponse(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->adjustDataAfterUploadDone(Lcom/samsung/android/sdk/smp/data/ClientsRequest;)V

    return-void
.end method

.method public beforeRequest()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getPrefManager()Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getWebId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "webid is empty. request to issue"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getSmpId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x3f0

    const/4 v5, 0x0

    if-nez v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSamsungPushService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/spsclient/SpsUtil;->getSeedFromSps(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "webid request fail. sps seed is empty"

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->afterError(ILjava/lang/String;)V

    return v5

    :cond_2
    new-instance v3, Lcom/samsung/android/sdk/smp/data/SmpIdRequest;

    invoke-direct {v3, v0, v2, v1}, Lcom/samsung/android/sdk/smp/data/SmpIdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v3, v1}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/NetworkRequest;I)Lcom/samsung/android/sdk/smp/common/network/NetworkResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->handleWebIdSuccessResponse(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->afterError(ILjava/lang/String;)V

    return v5

    :cond_4
    :goto_0
    const-string/jumbo v0, "webid request fail. appid/smpid is empty"

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->afterError(ILjava/lang/String;)V

    return v5
.end method
