.class public Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/IPlatformUtil;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidPlatformUtil"


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Llombok/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mContext is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private static hasTaskAffinity(Landroid/app/Activity;)Z
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "activity is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":hasTaskAffinity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return v3

    :cond_1
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :catch_0
    const-string p0, "Unable to get ActivityInfo for activity provided to start authorization."

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private optionallyReorderTasks(Lcom/microsoft/identity/common/java/commands/ICommand;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/ICommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommand<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "command is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":optionallyReorderTasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getHandleNullTaskAffinity()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->hasTaskAffinity(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto :goto_0

    :cond_0
    const-string p1, "ActivityManager was null; Unable to bring task for the foreground."

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity cannot be null in an interactive session."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getBrowserSafeListForBroker()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "7fmduHKTdHHrlMvldlEqAIlSfii1tl35bxj1OXN5Ve8c4lU6URVu4xtSHc3BVZxS6WWJnxMDhIfQN0N0K2NDJg=="

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    const-string v3, "com.android.chrome"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v4}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getEnrollmentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "userId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->getInstance()Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->getEnrollmentId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledCompanyPortalVersion()Ljava/lang/String;
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.microsoft.windowsintune.companyportal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNanosecondTime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSslContextKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;
    .locals 1

    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public isValidCallingApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "redirectUri is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->isValidBrokerRedirect(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onReturnCommandResult(Lcom/microsoft/identity/common/java/commands/ICommand;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/ICommand;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommand<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "command is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->optionallyReorderTasks(Lcom/microsoft/identity/common/java/commands/ICommand;)V

    return-void
.end method

.method public postCommandResult(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "runnable is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeCookiesFromWebView()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->removeCookiesFromWebView(Landroid/content/Context;)V

    return-void
.end method

.method public throwIfNetworkNotAvailable(Z)V
    .locals 2

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->isNetworkDisabledFromOptimizations()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "device_network_not_available_doze_mode"

    const-string v1, "Connection is not available to refresh token because power optimization is enabled. And the device is in doze mode or the app is standby"

    invoke-direct {p1, v0, v1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->isConnectionAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "device_network_not_available"

    const-string v1, "Connection is not available to refresh token"

    invoke-direct {p1, v0, v1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
