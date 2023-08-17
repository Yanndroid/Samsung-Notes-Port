.class Lcom/samsung/android/sdk/smp/data/DeleteRequest;
.super Lcom/samsung/android/sdk/smp/common/network/NetworkJSonRequest;
.source "SourceFile"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mIsUserOptInMode:Z

.field private final mSmpId:Ljava/lang/String;

.field private final mTestDeviceName:Ljava/lang/String;

.field private final mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/network/NetworkJSonRequest;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mSmpId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mUid:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mIsUserOptInMode:Z

    iput-object p5, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mTestDeviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJsonRequestBody()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestMethod()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkRequest;->getBaseUrl(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mIsUserOptInMode:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mUid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "clients"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mSmpId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mTestDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/DeleteRequest;->mTestDeviceName:Ljava/lang/String;

    const-string v1, "deviceName"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isGzipEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
