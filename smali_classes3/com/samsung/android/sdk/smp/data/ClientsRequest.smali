.class Lcom/samsung/android/sdk/smp/data/ClientsRequest;
.super Lcom/samsung/android/sdk/smp/common/network/NetworkJSonRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientsRequest"


# instance fields
.field private mAppFilterData:Lorg/json/JSONObject;

.field private final mAppId:Ljava/lang/String;

.field private final mAppReferrerKeyData:Lorg/json/JSONArray;

.field private final mAppStartData:Lorg/json/JSONArray;

.field private final mBasicData:Lorg/json/JSONObject;

.field private final mContext:Landroid/content/Context;

.field private mIsTrackingEnabled:Z

.field private final mMarketingData:Lorg/json/JSONArray;

.field private final mSessionData:Lorg/json/JSONArray;

.field private final mSmpId:Ljava/lang/String;

.field private final mTestData:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/network/NetworkJSonRequest;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mSmpId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mBasicData:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppFilterData:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppReferrerKeyData:Lorg/json/JSONArray;

    iput-object p7, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppStartData:Lorg/json/JSONArray;

    iput-object p8, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mSessionData:Lorg/json/JSONArray;

    iput-object p9, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mMarketingData:Lorg/json/JSONArray;

    iput-object p10, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mTestData:Lorg/json/JSONObject;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/samsung/android/sdk/smp/data/ClientsRequest$1;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/sdk/smp/data/ClientsRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private refineBasicData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "initsts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "confv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSamsungPushService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sdkv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "appv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public getAppFilterData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppFilterData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getAppReferrerKeyData()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppReferrerKeyData:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getBasicData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mBasicData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonRequestBody()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "currentdts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "basic"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mBasicData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppFilterData:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "appfilter"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppFilterData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppReferrerKeyData:Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "appReferrerKey"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppReferrerKeyData:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppStartData:Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "appstart"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppStartData:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mSessionData:Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "session"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mSessionData:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mMarketingData:Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "marketing"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mMarketingData:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mTestData:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->getDeviceNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "test"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mTestData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidDataException;-><init>()V

    throw v0
.end method

.method public getMarketingData()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mMarketingData:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getRequestMethod()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkRequest;->getBaseUrl(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "clients"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mSmpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasDataChanged()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPrevBasicData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mBasicData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->refineBasicData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->refineBasicData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPrevAppFilterData()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppFilterData:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONObject;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppFilterData:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPrevAppReferrerKeyData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppReferrerKeyData:Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppReferrerKeyData:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v0

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppStartData:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mSessionData:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mMarketingData:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/JSONUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public hasTestData()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mTestData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGzipEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mIsTrackingEnabled:Z

    return v0
.end method

.method public setTrackingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mIsTrackingEnabled:Z

    return-void
.end method

.method public updateAppFilterData(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->mAppFilterData:Lorg/json/JSONObject;

    return-void
.end method
