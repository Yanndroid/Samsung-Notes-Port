.class public Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;
.super Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity$LoginWebViewClient;
    }
.end annotation


# static fields
.field public static ERROR_FLAG_NAME:Ljava/lang/String; = "error_flag"

.field public static ERROR_NETWORK_ERROR_CODE_FLAG:I = 0x1

.field public static ERROR_NO_ERROR_CODE_FLAG:I = 0x0

.field public static SAMSUNG_ACCOUNT_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "SA/SamsungAccountLoginForLockActivity"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;-><init>()V

    return-void
.end method

.method private handleNetworkState()Z
    .locals 3

    invoke-static {p0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;->ERROR_NETWORK_ERROR_CODE_FLAG:I

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;->ERROR_FLAG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->network_error_check_your_network_connection_and_try_again:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;->handleNetworkState()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SA/SamsungAccountLoginForLockActivity"

    const-string v0, "onCreate() : No network connection!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sync_weblogin_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sync_weblogin_webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity$LoginWebViewClient;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity$LoginWebViewClient;-><init>(Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;->getLoginUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
