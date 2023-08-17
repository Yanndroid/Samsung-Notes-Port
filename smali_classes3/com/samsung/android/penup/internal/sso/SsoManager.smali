.class public Lcom/samsung/android/penup/internal/sso/SsoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PENUP_LOGIN_SERVICE:Ljava/lang/String; = "com.sec.penup.account.LoginService"

.field private static final PENUP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.penup"


# instance fields
.field private final OAUTH_ERROR_URL:Ljava/lang/String;

.field private final SSO_REDIRECT_URL:Ljava/lang/String;

.field private mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

.field private mIsBound:Z

.field private mPenupClient:Lcom/samsung/android/penup/PenupClient;

.field private mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/PenupClient;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/penup/internal/Url;->BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->SSO_REDIRECT_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/penup/internal/Url;->BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->OAUTH_ERROR_URL:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/sso/SsoManager$1;-><init>(Lcom/samsung/android/penup/internal/sso/SsoManager;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mIsBound:Z

    new-instance v0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {p1}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    new-instance p1, Lcom/samsung/android/penup/internal/sso/SsoManager$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/penup/internal/sso/SsoManager$2;-><init>(Lcom/samsung/android/penup/internal/sso/SsoManager;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->setProgressDialogListener(Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->isValid()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mIsBound:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/internal/ProgressDialogHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/penup/internal/sso/SsoManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->unbindService()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/penup/internal/sso/SsoManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->SSO_REDIRECT_URL:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/penup/internal/sso/SsoManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->OAUTH_ERROR_URL:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/penup/internal/sso/SsoManager;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->createScopeList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createScopeList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isValid()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method private unbindService()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mIsBound:Z

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->unbindService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->release()V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    :cond_0
    return-void
.end method

.method public requestSso()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->unbindService()V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.penup.account.LoginService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.penup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v1}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager;->mIsBound:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
