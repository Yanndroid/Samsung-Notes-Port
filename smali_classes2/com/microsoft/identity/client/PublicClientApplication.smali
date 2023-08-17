.class public Lcom/microsoft/identity/client/PublicClientApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IPublicClientApplication;
.implements Lcom/microsoft/identity/client/ITokenShare;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;,
        Lcom/microsoft/identity/client/PublicClientApplication$BrokerDeviceModeCallback;,
        Lcom/microsoft/identity/client/PublicClientApplication$NONNULL_CONSTANTS;
    }
.end annotation


# static fields
.field private static final ACCESS_NETWORK_STATE_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field private static final INTERNET_PERMISSION:Ljava/lang/String; = "android.permission.INTERNET"

.field private static final TAG:Ljava/lang/String; = "PublicClientApplication"

.field private static final TSL_MSG_FAILED_TO_SAVE:Ljava/lang/String; = "Failed to save FRT - see getCause() for additional Exception info"

.field private static final TSM_MSG_FAILED_TO_RETRIEVE:Ljava/lang/String; = "Failed to retrieve FRT - see getCause() for additional Exception info"

.field private static final sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public homeAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

.field public localAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

.field public mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

.field public mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

.field public usernameMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$20;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$20;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->homeAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$21;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$21;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->localAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$22;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$22;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->usernameMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->initializeApplication()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->baseExceptionToMsalException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->selectAccountRecordForTokenRequest(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object p0

    return-object p0
.end method

.method private baseExceptionToMsalException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/exception/BaseException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_account_found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;

    const-string v0, "The supplied account could not be located."

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkInternetPermission()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "android.permission.Internet or android.permission.ACCESS_NETWORK_STATE is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/microsoft/identity/client/IPublicClientApplication;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IPublicClientApplication;
    .locals 3
    .param p0    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "configuration"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createPublicClientApplication"

    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$8;

    invoke-direct {v1, v0}, Lcom/microsoft/identity/client/PublicClientApplication$8;-><init>(Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v2, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/internal/AsyncResult;

    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/IPublicClientApplication;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo v1, "unknown_error"

    const-string v2, "Unexpected error while initializing PCA."

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$1;-><init>(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplication;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$2;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplication;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client_id"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirect_uri"

    invoke-static {p3, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/identity/client/PublicClientApplication$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplication;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 1
    .param p0    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->setClientId(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {p2}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/authorities/Authority;->setDefault(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->setRedirectUri(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateAccountModeConfiguration(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/internal/CommandParametersAdapter;->createCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object p1

    :try_start_1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object p3

    invoke-static {p2, p3, p0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getDefaultController(Landroid/content/Context;Lcom/microsoft/identity/common/java/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/common/java/controllers/BaseController;

    move-result-object p2
    :try_end_1
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p3, Lcom/microsoft/identity/common/internal/commands/GetDeviceModeCommand;

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$9;

    invoke-direct {v0, p4, p0}, Lcom/microsoft/identity/client/PublicClientApplication$9;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    const-string p0, "1200"

    invoke-direct {p3, p1, p2, v0, p0}, Lcom/microsoft/identity/common/internal/commands/GetDeviceModeCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/controllers/BaseController;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p4, p0}, Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void

    :catch_1
    move-exception p0

    invoke-interface {p4, p0}, Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

.method private createGenerateShrCommand(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/PoPAuthenticationScheme;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;
    .locals 3
    .param p1    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/PoPAuthenticationScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/java/commands/CommandCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/client/IAccount;",
            "Lcom/microsoft/identity/client/PoPAuthenticationScheme;",
            "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
            "Lcom/microsoft/identity/common/java/result/GenerateShrResult;",
            "Lcom/microsoft/identity/common/java/exception/BaseException;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v1

    check-cast p1, Lcom/microsoft/identity/client/Account;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lcom/microsoft/identity/client/internal/CommandParametersAdapter;->createGenerateShrCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;Ljava/lang/String;Lcom/microsoft/identity/client/PoPAuthenticationScheme;)Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;

    move-result-object p1

    new-instance p2, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getAllControllers(Landroid/content/Context;Lcom/microsoft/identity/common/java/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;Ljava/util/List;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    return-object p2
.end method

.method public static createMultipleAccountPublicClientApplication(Landroid/content/Context;I)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method public static createMultipleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configFile"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method private static createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
    .locals 3
    .param p0    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object v0

    instance-of v2, v0, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object p0

    if-ne p0, v1, :cond_1

    invoke-interface {v0}, Lcom/microsoft/identity/client/IPublicClientApplication;->isSharedDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "multiple_account_pca_init_fail_on_shared_device"

    const-string v1, "This application is not supported in the shared device mode. Please contact application developer to update the app."

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "multiple_account_pca_init_fail_unknown_reason"

    const-string v1, "Multiple account PublicClientApplication could not be created for unknown reasons"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "multiple_account_pca_init_fail_account_mode"

    const-string v1, "AccountMode in configuration is not set to multiple. Cannot initialize multiple account PublicClientApplication."

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static createMultipleAccountPublicClientApplication(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$4;-><init>(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V

    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplication;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createMultipleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$5;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V

    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplication;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
    .locals 1
    .param p0    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$10;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$10;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;I)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method private static createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;
    .locals 2
    .param p0    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object v0

    instance-of v1, v0, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object p0

    sget-object v0, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-eq p0, v0, :cond_1

    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "single_account_pca_init_fail_account_mode"

    const-string v1, "AccountMode in configuration is not set to single. Cannot initialize single account PublicClientApplication."

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "single_account_pca_init_fail_unknown_reason"

    const-string v1, "A single account public client application could not be created for unknown reasons."

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$6;-><init>(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplication;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config_file"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$7;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplication;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 1
    .param p0    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$11;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$11;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public static getLoadAccountsCallback(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;",
            ")",
            "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;",
            "Lcom/microsoft/identity/common/java/exception/BaseException;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$17;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$17;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)V

    return-object v0
.end method

.method private getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache<",
            "***>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/AndroidPlatformComponents;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->create(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;)Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.0.1"

    return-object v0
.end method

.method private initializeApplication()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":initializeApplication"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-direct {p0, v1, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->setupTelemetry(Landroid/content/Context;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getEnvironment()Lcom/microsoft/identity/common/java/authorities/Environment;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->setEnvironment(Lcom/microsoft/identity/common/java/authorities/Environment;)V

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/identity/common/java/authorities/Authority;->addKnownAuthorities(Ljava/util/List;)V

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getLoggerConfiguration()Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->initializeLoggerSettings(Lcom/microsoft/identity/client/configuration/LoggerConfiguration;)V

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->initializeTokenSharingLibrary()V

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->checkIntentFilterAddedToAppManifestForBrokerFlow()V

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->checkInternetPermission()V

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize(Ljava/io/File;)Z

    const-string v1, "Create new public client application."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initializeLoggerSettings(Lcom/microsoft/identity/client/configuration/LoggerConfiguration;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/client/configuration/LoggerConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->getLogLevel()Lcom/microsoft/identity/client/Logger$LogLevel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->isPiiEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->isLogcatEnabled()Z

    move-result p1

    invoke-static {}, Lcom/microsoft/identity/client/Logger;->getInstance()Lcom/microsoft/identity/client/Logger;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/microsoft/identity/client/Logger;->setLogLevel(Lcom/microsoft/identity/client/Logger$LogLevel;)V

    :cond_0
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/client/Logger;->setEnablePII(Z)V

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/client/Logger;->setEnableLogcatLog(Z)V

    :cond_1
    return-void
.end method

.method private initializeTokenSharingLibrary()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TSL support mandates use of the MsalOAuth2TokenCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAccountHomeTenant(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static runOnBackground(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private selectAccountRecordForTokenRequest(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 8
    .param p1    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/TokenParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":selectAccountRecordForTokenRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/identity/client/TokenParameters;->setAuthority(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/microsoft/identity/client/MultiTenantAccount;

    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v3

    instance-of v4, v3, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {p2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object p2

    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/microsoft/identity/client/AccountAdapter;->getAccountInternal(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v4, v3, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    if-eqz v4, :cond_b

    move-object v4, v3

    check-cast v4, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    invoke-direct {v6}, Lcom/microsoft/identity/common/java/dto/AccountRecord;-><init>()V

    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getEnvironment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setEnvironment(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setHomeAccountId(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isUuid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v5}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->isHomeTenantAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    move-result-object v4

    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantUuidForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v6, v5}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setRealm(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->isHomeTenantAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/microsoft/identity/client/PublicClientApplication;->isAccountHomeTenant(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/client/IAccount;

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {v2}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v1, v2

    :cond_6
    :goto_1
    if-nez v1, :cond_9

    instance-of p2, p2, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    if-eqz p2, :cond_9

    invoke-interface {p1}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/client/ITenantProfile;

    invoke-interface {p2}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object p1, p2

    goto :goto_2

    :cond_9
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/microsoft/identity/client/IAccount;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setLocalAccountId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/client/IClaimable;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setUsername(Ljava/lang/String;)V

    return-object v6

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No account record found for IAccount with request tenantId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string p2, "no_account_found"

    const-string v0, "No account record found for IAccount"

    invoke-direct {p1, p2, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported Authority type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setupTelemetry(Landroid/content/Context;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setupTelemetry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getTelemetryConfiguration()Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Telemetry configuration is set. Telemetry is enabled."

    goto :goto_0

    :cond_0
    const-string v1, "Telemetry configuration is null. Telemetry is disabled."

    :goto_0
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->withContext(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getTelemetryConfiguration()Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->defaultConfiguration(Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->build()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    return-void
.end method

.method public static showExpectedMsalRedirectUriInfo(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/client/helper/BrokerHelperActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static validateAccountModeConfiguration(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 3
    .param p0    # Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":validateAccountModeConfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v1

    sget-object v2, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    if-eqz v1, :cond_1

    const-string v1, "Warning! B2C applications should use MultipleAccountPublicClientApplication. Use of SingleAccount mode with multiple IEF policies is unsupported."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "SingleAccountPublicClientApplication cannot be used with multiple B2C policies."

    invoke-direct {p0, v0}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateBrokerNotInUse()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->brokerEligible(Landroid/content/Context;Lcom/microsoft/identity/common/java/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "Cannot perform this action - broker is enabled."

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquireToken(Landroid/app/Activity;[Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V
    .locals 12
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/client/AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v9, p3

    invoke-virtual/range {v0 .. v11}, Lcom/microsoft/identity/client/PublicClientApplication;->buildAcquireTokenParameters(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/Prompt;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;Ljava/lang/String;Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/AcquireTokenParameters;

    move-result-object p1

    const-string p2, "122"

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    return-void
.end method

.method public acquireToken(Lcom/microsoft/identity/client/AcquireTokenParameters;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "121"

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    return-void
.end method

.method public acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$14;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public acquireTokenSilent(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/client/IAuthenticationResult;
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "21"

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;

    move-result-object p1

    return-object p1
.end method

.method public acquireTokenSilentAsync(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "22"

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    return-void
.end method

.method public acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$15;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public acquireTokenSilentInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;
    .locals 2
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$16;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/identity/client/PublicClientApplication$16;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    invoke-virtual {p1, v1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->setCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/internal/AsyncResult;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/IAuthenticationResult;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo v0, "unknown_error"

    const-string v1, "Unexpected error while acquiring token."

    invoke-direct {p2, v0, v1, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Do not provide callback for synchronous methods"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public acquireTokenSilentSyncInternal([Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;ZLjava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;
    .locals 8
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "acquireTokenSilent"

    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    new-instance v7, Lcom/microsoft/identity/client/PublicClientApplication$23;

    invoke-direct {v7, p0, v0}, Lcom/microsoft/identity/client/PublicClientApplication$23;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/identity/client/PublicClientApplication;->buildAcquireTokenSilentParameters([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;ZLcom/microsoft/identity/client/claims/ClaimsRequest;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/internal/AsyncResult;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/IAuthenticationResult;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo p3, "unknown_error"

    const-string p4, "Unexpected error while acquiring token."

    invoke-direct {p2, p3, p4, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public acquireTokenWithDeviceCode(Ljava/util/List;Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/client/internal/CommandParametersAdapter;->createDeviceCodeFlowCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;Ljava/util/List;)Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->getDeviceCodeFlowCommandCallback(Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;

    move-result-object p2

    new-instance v0, Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommand;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;-><init>()V

    const-string v2, "650"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;Lcom/microsoft/identity/common/java/controllers/BaseController;Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    return-void
.end method

.method public acquireTokenWithDeviceCode([Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)V
    .locals 3
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/client/internal/CommandParametersAdapter;->createDeviceCodeFlowCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;Ljava/util/List;)Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->getDeviceCodeFlowCommandCallback(Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;

    move-result-object p2

    new-instance v0, Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommand;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;-><init>()V

    const-string v2, "650"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;Lcom/microsoft/identity/common/java/controllers/BaseController;Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    return-void
.end method

.method public buildAcquireTokenParameters(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/Prompt;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;Ljava/lang/String;Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/AcquireTokenParameters;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/microsoft/identity/client/Prompt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/microsoft/identity/client/AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/microsoft/identity/client/claims/ClaimsRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/client/IAccount;",
            "Lcom/microsoft/identity/client/Prompt;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/AuthenticationCallback;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/claims/ClaimsRequest;",
            ")",
            "Lcom/microsoft/identity/client/AcquireTokenParameters;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p3, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p9, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->startAuthorizationFromActivity(Landroid/app/Activity;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withFragment(Landroidx/fragment/app/Fragment;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/IAccount;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-virtual {p1, p3}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-virtual {p1, p5}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withPrompt(Lcom/microsoft/identity/client/Prompt;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withAuthorizationQueryStringParameters(Ljava/util/List;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    if-nez p7, :cond_0

    const/4 p2, 0x0

    new-array p7, p2, [Ljava/lang/String;

    :cond_0
    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withOtherScopesToAuthorize(Ljava/util/List;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-virtual {p1, p9}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withCallback(Lcom/microsoft/identity/client/AuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p10}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withLoginHint(Ljava/lang/String;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p11}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->build()Lcom/microsoft/identity/client/AcquireTokenParameters;

    move-result-object p1

    return-object p1
.end method

.method public buildAcquireTokenParameters(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/Prompt;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;Ljava/lang/String;Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/AcquireTokenParameters;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/microsoft/identity/client/Prompt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/microsoft/identity/client/AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/microsoft/identity/client/claims/ClaimsRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/fragment/app/Fragment;",
            "[",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/IAccount;",
            "Lcom/microsoft/identity/client/Prompt;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/AuthenticationCallback;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/claims/ClaimsRequest;",
            ")",
            "Lcom/microsoft/identity/client/AcquireTokenParameters;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p3, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p9, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->startAuthorizationFromActivity(Landroid/app/Activity;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withFragment(Landroidx/fragment/app/Fragment;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/IAccount;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-virtual {p1, p5}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withPrompt(Lcom/microsoft/identity/client/Prompt;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withAuthorizationQueryStringParameters(Ljava/util/List;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    if-nez p7, :cond_0

    const/4 p2, 0x0

    new-array p7, p2, [Ljava/lang/String;

    :cond_0
    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withOtherScopesToAuthorize(Ljava/util/List;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-virtual {p1, p9}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withCallback(Lcom/microsoft/identity/client/AuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p10}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withLoginHint(Ljava/lang/String;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p11}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->build()Lcom/microsoft/identity/client/AcquireTokenParameters;

    move-result-object p1

    return-object p1
.end method

.method public buildAcquireTokenSilentParameters([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;ZLcom/microsoft/identity/client/claims/ClaimsRequest;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/microsoft/identity/client/claims/ClaimsRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/microsoft/identity/client/SilentAuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "account"

    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/IAccount;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-virtual {p1, p3}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-virtual {p1, p4}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->forceRefresh(Z)Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-virtual {p1, p6}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->withCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->build()Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    move-result-object p1

    return-object p1
.end method

.method public generateSignedHttpRequest(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/PoPAuthenticationScheme;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/PoPAuthenticationScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$12;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/identity/client/PublicClientApplication$12;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    const-string v2, "1100"

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->createGenerateShrCommand(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/PoPAuthenticationScheme;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/internal/AsyncResult;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/result/GenerateShrResult;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/GenerateShrResult;->getShr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo v0, "unknown_error"

    const-string v1, "Unexpected error while generating SHR."

    invoke-direct {p2, v0, v1, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public generateSignedHttpRequest(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/PoPAuthenticationScheme;Lcom/microsoft/identity/client/IPublicClientApplication$SignedHttpRequestRequestCallback;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/PoPAuthenticationScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/client/IPublicClientApplication$SignedHttpRequestRequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$13;

    invoke-direct {v0, p0, p3}, Lcom/microsoft/identity/client/PublicClientApplication$13;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/IPublicClientApplication$SignedHttpRequestRequestCallback;)V

    const-string v1, "1101"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->createGenerateShrCommand(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/PoPAuthenticationScheme;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo v0, "unknown_error"

    const-string v1, "Unexpected error while generating SHR."

    invoke-direct {p2, v0, v1, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, p2}, Lcom/microsoft/identity/client/IPublicClientApplication$SignedHttpRequestRequestCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    :goto_0
    return-void
.end method

.method public getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/SilentAuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/TokenParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/microsoft/identity/client/PublicClientApplication$18;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    return-object v0
.end method

.method public getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    return-object v0
.end method

.method public getDeviceCodeFlowCommandCallback(Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$19;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$19;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)V

    return-object v0
.end method

.method public getMsaFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->getMsaFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenShareResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMsaFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenShareResult;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateBrokerNotInUse()V

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getMsaFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;

    move-result-object p1

    new-instance v0, Lcom/microsoft/identity/client/TokenShareResult;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/client/TokenShareResult;-><init>(Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo v1, "token_cache_item_not_found"

    const-string v2, "Failed to retrieve FRT - see getCause() for additional Exception info"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic getMsaFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->getMsaFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenShareResult;

    move-result-object p1

    return-object p1
.end method

.method public getOrgIdFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->getOrgIdFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenShareResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOrgIdFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenShareResult;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateBrokerNotInUse()V

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getOrgIdFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;

    move-result-object p1

    new-instance v0, Lcom/microsoft/identity/client/TokenShareResult;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/client/TokenShareResult;-><init>(Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo v1, "token_cache_item_not_found"

    const-string v2, "Failed to retrieve FRT - see getCause() for additional Exception info"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic getOrgIdFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->getOrgIdFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenShareResult;

    move-result-object p1

    return-object p1
.end method

.method public isSharedDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getIsSharedDevice()Z

    move-result v0

    return v0
.end method

.method public performMigration(Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V
    .locals 6
    .param p1    # Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Z)V

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->getMigrationStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v3}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;->onMigrationFinished(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;

    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v4}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;)V

    const-string v4, "com.microsoft.aad.adal.cache"

    invoke-direct {v0, v2, v4, v3}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)V

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;->getAll()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;-><init>()V

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/java/cache/IShareSingleSignOnState;

    invoke-virtual {v2, v1, v0, v3, p1}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->_import(Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/java/cache/IShareSingleSignOnState;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V

    :goto_0
    return-void
.end method

.method public postAuthResult(Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/TokenParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/client/SilentAuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;->getScope()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/AuthenticationResultAdapter;->getDeclinedScopes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0, p2}, Lcom/microsoft/identity/client/AuthenticationResultAdapter;->declinedScopeExceptionFromResult(Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;Ljava/util/List;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/client/AuthenticationResultAdapter;->adapt(Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;)Lcom/microsoft/identity/client/IAuthenticationResult;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onSuccess(Lcom/microsoft/identity/client/IAuthenticationResult;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "callback cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveMsaFamilyRefreshToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveMsaFamilyRefreshToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "failed_to_persist_msa_credential"

    const-string v2, "Failed to save FRT - see getCause() for additional Exception info"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public saveOrgIdFamilyRefreshToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SsoStateSerializerBlob"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateBrokerNotInUse()V

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveOrgIdFamilyRefreshToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo v1, "token_sharing_deserialization_error"

    const-string v2, "Failed to save FRT - see getCause() for additional Exception info"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public validateAcquireTokenParameters(Lcom/microsoft/identity/client/AcquireTokenParameters;)V
    .locals 3

    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object p1

    const-string v2, "activity"

    invoke-static {v0, v2}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {v1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public validateAcquireTokenSilentParameters(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V
    .locals 4

    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    move-result-object p1

    const-string v3, "authority"

    invoke-static {v0, v3}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    invoke-static {v1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopes"

    invoke-static {v2, p1}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
