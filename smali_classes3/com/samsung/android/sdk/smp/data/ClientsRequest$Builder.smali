.class public final Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/data/ClientsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppFilterData:Lorg/json/JSONObject;

.field private final mAppId:Ljava/lang/String;

.field private mAppReferrerKeyData:Lorg/json/JSONArray;

.field private mAppStartData:Lorg/json/JSONArray;

.field private final mBasicData:Lorg/json/JSONObject;

.field private final mContext:Landroid/content/Context;

.field private mMarketingData:Lorg/json/JSONArray;

.field private mSessionData:Lorg/json/JSONArray;

.field private final mSmpId:Ljava/lang/String;

.field private mTestData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Internal error"

    const-string v1, "SMP_0401"

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mSmpId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mBasicData:Lorg/json/JSONObject;

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "create builder fail. basicData null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "create builder fail. smpId null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "create builder fail. appId null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/ClientsRequest;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "create builder fail. context null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/smp/data/ClientsRequest;
    .locals 13

    new-instance v12, Lcom/samsung/android/sdk/smp/data/ClientsRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mSmpId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mBasicData:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mAppFilterData:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mAppReferrerKeyData:Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mAppStartData:Lorg/json/JSONArray;

    iget-object v8, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mSessionData:Lorg/json/JSONArray;

    iget-object v9, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mMarketingData:Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mTestData:Lorg/json/JSONObject;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/sdk/smp/data/ClientsRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/samsung/android/sdk/smp/data/ClientsRequest$1;)V

    return-object v12
.end method

.method public setAppFilterData(Lorg/json/JSONObject;)Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mAppFilterData:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setAppReferrerKeyData(Lorg/json/JSONArray;)Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mAppReferrerKeyData:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setAppStartData(Lorg/json/JSONArray;)Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mAppStartData:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setMarketingData(Lorg/json/JSONArray;)Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mMarketingData:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setSessionData(Lorg/json/JSONArray;)Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mSessionData:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setTestData(Lorg/json/JSONObject;)Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequest$Builder;->mTestData:Lorg/json/JSONObject;

    return-object p0
.end method
