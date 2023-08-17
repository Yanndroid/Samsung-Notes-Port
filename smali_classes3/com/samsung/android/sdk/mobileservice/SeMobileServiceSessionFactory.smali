.class public Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeMobileServiceSessionFactory"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mConnectionResultCallback:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;

.field private mCtx:Landroid/content/Context;

.field private mServiceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mServiceList:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mCtx:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mConnectionResultCallback:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mServiceList:Ljava/util/HashSet;

    const-string v0, "AuthService"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/common/CommonUtils;->isStandAloneSamsungAccountSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/SeMobileService;->isAgentInstalled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/SeMobileService;->isAgentEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mServiceList:Ljava/util/HashSet;

    const-string v0, "SocialService"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.mobileservice.AppId"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/mobileservice/common/CommonUtils;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "account_app_id"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/mobileservice/common/CommonUtils;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mAppId:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mServiceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mCtx:Landroid/content/Context;

    const-string v1, "SeMobileServiceSessionFactory"

    if-nez v0, :cond_0

    const-string v0, "context is null"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mServiceList:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mAppId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mConnectionResultCallback:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;-><init>(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mServiceList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in factory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeMobileServiceSessionFactory"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->mAppId:Ljava/lang/String;

    return-object p0
.end method
