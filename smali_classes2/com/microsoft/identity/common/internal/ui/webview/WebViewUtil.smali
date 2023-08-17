.class public Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewUtil"


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

.method private static getCookieManager(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->setDataDirectorySuffix(Landroid/content/Context;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    return-object p0
.end method

.method public static removeCookiesFromWebView(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->getCookieManager(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method public static removeSessionCookiesFromWebView(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->getCookieManager(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method public static setAcceptCookie(ZLandroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->getCookieManager(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void
.end method

.method public static setDataDirectorySuffix(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setDataDirectorySuffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/ProcessUtil;->isRunningOnAuthService(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "auth"

    invoke-static {p0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WebView is already initialized. IllegalStateException is expected when setDataDirectorySuffix() is invoked"

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
