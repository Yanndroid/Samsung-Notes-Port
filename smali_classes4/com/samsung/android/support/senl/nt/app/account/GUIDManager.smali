.class public Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;
    }
.end annotation


# static fields
.field private static final ACTIVITY_REQUEST_CODE_ACCOUNT_LOG_IN:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "GUIDManager"


# instance fields
.field private mListener:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;

.field private mProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->lambda$requestAndWaitGuidReceived$2(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->lambda$showOverlayProgress$3()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->lambda$requestAndWaitGuidReceived$0(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->lambda$requestAndWaitGuidReceived$1()V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->lambda$hideOverlayProgress$4(Landroid/app/Activity;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->hideOverlayProgress(Landroid/app/Activity;)V

    return-void
.end method

.method private hideOverlayProgress(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/e;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/e;-><init>(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private inflateProgressView(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_progress_circle:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mProgressView:Landroid/view/View;

    return-void
.end method

.method private synthetic lambda$hideOverlayProgress$4(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mProgressView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestAndWaitGuidReceived$0(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mListener:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->o()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestAndWaitGuidReceived$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mListener:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;->onFail()V

    return-void
.end method

.method private synthetic lambda$requestAndWaitGuidReceived$2(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestAccountLogin(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$showOverlayProgress$3()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private requestAccountLogin(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "GUIDManager"

    const-string v1, "requestAccountLogin"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->need_login_first_jpn:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->need_login_first:I

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/account/AccountHelper;->getAccountConfirmIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private requestAndWaitGuidReceived(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "GUIDManager"

    const-string v1, "requestAndWaitGuidReceived"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/d;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/d;-><init>(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/account/b;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/account/b;-><init>(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/account/c;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/c;-><init>(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestAndWaitGuidReceived(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestAndWaitGuidReceived(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    const-string v0, "GUIDManager"

    const-string v1, "requestAndWaitGuidReceived"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->showOverlayProgress(Landroid/app/Activity;)V

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method

.method private showOverlayProgress(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->inflateProgressView(Landroid/app/Activity;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/account/a;-><init>(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isGuidReceived(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult requestCode/resultCode "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "GUIDManager"

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0x1f

    if-ne p2, p4, :cond_1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestAndWaitGuidReceived(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mListener:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;->onFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestGUID(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;)V
    .locals 2

    const-string v0, "GUIDManager"

    const-string v1, "requestGUID"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->mListener:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->isGuidReceived(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->o()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestAndWaitGuidReceived(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestAccountLogin(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
