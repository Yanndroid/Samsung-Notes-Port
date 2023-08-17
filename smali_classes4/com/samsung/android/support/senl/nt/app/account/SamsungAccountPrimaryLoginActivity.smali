.class public Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountPrimaryLoginActivity;
.super Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountPrimaryLoginActivity$LoginWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA/SamsungAccountPrimaryLoginActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sync_weblogin_webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountPrimaryLoginActivity$LoginWebViewClient;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountPrimaryLoginActivity$LoginWebViewClient;-><init>(Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountPrimaryLoginActivity;)V

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
