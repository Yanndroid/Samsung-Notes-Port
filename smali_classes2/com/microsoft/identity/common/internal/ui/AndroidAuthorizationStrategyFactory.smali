.class public Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidAuthorizationStrategyFactory"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;-><init>()V

    return-object v0
.end method

.method private getBrowserAuthorizationStrategy(ZLjava/util/List;)Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;
    .locals 4
    .param p1    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;)",
            "Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/microsoft/identity/common/internal/ui/CurrentTaskBrowserAuthorizationStrategy;

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, v2}, Lcom/microsoft/identity/common/internal/ui/CurrentTaskBrowserAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->setBrowserSafeList(Ljava/util/List;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/browser/DefaultBrowserAuthorizationStrategy;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/microsoft/identity/common/internal/ui/browser/DefaultBrowserAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->setBrowserSafeList(Ljava/util/List;)V

    return-object v0
.end method

.method private getGenericAuthorizationStrategy()Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;
    .locals 4

    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private validAuthorizationAgent(Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":validAuthorizationAgent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserSelector;->getAllBrowsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "Unable to use browser to do the authorization because No available browser installed on the device. Use embedded webView instead."

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getAuthorizationStrategy(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;
    .locals 5
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getAuthorizationStrategy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->validAuthorizationAgent(Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    move-result-object v1

    instance-of v2, p1, Lcom/microsoft/identity/common/java/commands/parameters/BrokerInteractiveTokenCommandParameters;

    sget-object v3, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    if-ne v1, v3, :cond_0

    const-string p1, "Use webView for authorization."

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->getGenericAuthorizationStrategy()Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v3, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    const-string v4, "Use browser for authorization."

    if-ne v1, v3, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getBrowserSafeList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserSelector;->select(Landroid/content/Context;Ljava/util/List;)Lcom/microsoft/identity/common/internal/ui/browser/Browser;
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "No supported browser available found. Fallback to the webView authorization agent."

    invoke-static {v0, v3}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "No available browser installed on the device."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->getGenericAuthorizationStrategy()Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {v0, v4}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getBrowserSafeList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->getBrowserAuthorizationStrategy(ZLjava/util/List;)Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v0, v4}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getBrowserSafeList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->getBrowserAuthorizationStrategy(ZLjava/util/List;)Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;

    move-result-object p1

    return-object p1
.end method
