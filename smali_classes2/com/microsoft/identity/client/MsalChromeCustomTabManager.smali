.class public Lcom/microsoft/identity/client/MsalChromeCustomTabManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;
    }
.end annotation


# static fields
.field private static final CUSTOM_TABS_MAX_CONNECTION_TIMEOUT:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "MsalChromeCustomTabManager"


# instance fields
.field private mChromePackageWithCustomTabSupport:Ljava/lang/String;

.field private mCustomTabsIntent:Landroidx/browser/customtabs/CustomTabsIntent;

.field private mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

.field private mParentActivity:Landroid/app/Activity;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/MsalUtils;->getChromePackageWithCustomTabSupport(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Activity parameter cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private waitForServiceConnectionToEstablish(Ljava/util/concurrent/CountDownLatch;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":waitForServiceConnectionToEstablish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    const-string p1, "Connection to CustomTabs timed out. Skipping warmup."

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to connect to CustomTabs. Skipping warmup."

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v3
.end method


# virtual methods
.method public declared-synchronized bindCustomTabsService()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    invoke-direct {v2, v0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    iget-object v3, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    invoke-direct {p0, v0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->waitForServiceConnectionToEstablish(Ljava/util/concurrent/CountDownLatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->getCustomTabsSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsIntent:Landroidx/browser/customtabs/CustomTabsIntent;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public launchChromeTabOrBrowserForUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":launchChromeTabOrBrowserForUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsIntent:Landroidx/browser/customtabs/CustomTabsIntent;

    if-eqz v1, :cond_0

    const-string v1, "ChromeCustomTab support is available, launching chrome tab."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsIntent:Landroidx/browser/customtabs/CustomTabsIntent;

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string v1, "Chrome tab support is not available, launching chrome browser."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/MsalUtils;->getChromePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized unbindCustomTabsService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->getCustomTabsServiceIsBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    invoke-static {v0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->access$000(Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public verifyChromeTabOrBrowser()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":verifyChromeTabOrBrowser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Custom tab is not supported by Chrome."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/client/internal/MsalUtils;->getChromePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "Chrome is not installed."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v2, "chrome_not_installed"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
