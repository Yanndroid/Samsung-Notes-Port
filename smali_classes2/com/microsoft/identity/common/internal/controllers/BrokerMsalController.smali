.class public Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;
.super Lcom/microsoft/identity/common/java/controllers/BaseController;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrokerMsalController"


# instance fields
.field private final mActiveBrokerPackageName:Ljava/lang/String;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

.field private mBrokerResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ResultFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponents:Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;

.field private final mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

.field public final mRequestAdapter:Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

.field public final mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;-><init>()V

    new-instance v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mRequestAdapter:Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

    new-instance v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-static {p1}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/AndroidPlatformComponents;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mComponents:Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getActiveBrokerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getIpcStrategies(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getHelloCache()Lcom/microsoft/identity/common/internal/cache/HelloCache;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Active Broker not found. This class should not be initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;-><init>()V

    new-instance v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mRequestAdapter:Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

    new-instance v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mComponents:Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getActiveBrokerPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getIpcStrategies(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getHelloCache()Lcom/microsoft/identity/common/internal/cache/HelloCache;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Active Broker not found. This class should not be initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Lcom/microsoft/identity/common/java/util/ResultFuture;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private getBrokerAuthorizationIntent(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Landroid/content/Intent;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$2;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method private msalOAuth2TokenCacheSetSingleSignOnState(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)V
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->setSingleSignOnState(Lcom/microsoft/identity/common/java/BaseAccount;Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;)V

    return-void
.end method

.method private saveMsaAccountToCache(Landroid/os/Bundle;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":saveMsaAccountToCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->brokerResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    move-result-object v1

    const-string v2, "broker_request_v2_success"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getTenantId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "9188040d-6c67-4c5b-b112-36a304b66dad"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Result returned for MSA Account, saving to cache"

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getClientInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getClientInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    new-instance v2, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)V

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;->setEnvironment(Ljava/lang/String;)V

    new-instance v9, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getEnvironment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getFamilyId()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, v9}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->msalOAuth2TokenCacheSetSingleSignOnState(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Exception while creating Idtoken or ClientInfo, cannot save MSA account tokens"

    invoke-static {v0, p2, p1}, Lcom/microsoft/identity/common/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid_jwt"

    invoke-direct {p2, v1, v0, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 p1, 0x0

    const-string p2, "ClientInfo is empty."

    invoke-static {v0, p2, p1}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string/jumbo v0, "unknown_error"

    invoke-direct {p1, v0, p2}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public acquireDeviceCodeFlowToken(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 0

    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string p2, "acquireDeviceCodeFlowToken() not supported in BrokerMsalController"

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public acquireToken(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 7
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":acquireToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;

    move-result-object v1

    const-string v2, "201"

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    new-instance v1, Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getBrokerAuthorizationIntent(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Landroid/content/Intent;

    move-result-object v1

    instance-of v3, p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->getActivity()Landroid/app/Activity;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    const-class v6, Lcom/microsoft/identity/common/internal/broker/BrokerActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "broker_intent"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    new-instance v5, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$1;

    invoke-direct {v5, p0, v0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$1;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Ljava/lang/String;)V

    const-string v0, "return_broker_interactive_acquire_token_result"

    invoke-virtual {v1, v0, v5}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->registerCallback(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;)V

    if-nez v3, :cond_1

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->saveMsaAccountToCache(Landroid/os/Bundle;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)V

    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getAcquireTokenResultFromResultBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;->putResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/events/ApiEndEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    throw p1
.end method

.method public acquireTokenSilent(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$3;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$3;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    return-object p1
.end method

.method public acquireTokenWithPassword(Lcom/microsoft/identity/common/java/commands/parameters/RopcTokenCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/RopcTokenCommandParameters;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "parameters is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "acquireTokenWithPassword() not supported in BrokerMsalController"

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    return p1
.end method

.method public deviceCodeFlowAuthRequest(Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;
    .locals 1

    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "deviceCodeFlowAuthRequest() not supported in BrokerMsalController"

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/controllers/BaseController;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public generateSignedHttpRequest(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;)Lcom/microsoft/identity/common/java/result/GenerateShrResult;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$9;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$9;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/result/GenerateShrResult;

    return-object p1
.end method

.method public getAccounts(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$4;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$4;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getActiveBrokerPackageName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->getCurrentActiveBrokerPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isSharedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getCurrentAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not a shared device, invoke getAccounts() instead of getCurrentAccount()"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->getAccounts(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$7;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getDeviceMode(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;

    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$6;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getHelloCache()Lcom/microsoft/identity/common/internal/cache/HelloCache;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/internal/cache/HelloCache;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mComponents:Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;

    const-string v4, "msal.to.broker"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/microsoft/identity/common/internal/cache/HelloCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;)V

    return-object v0
.end method

.method public getIpcStrategies(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getIpcStrategies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Broker Strategies added : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;

    invoke-direct {v3, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;->isBrokerContentProviderAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ContentProviderStrategy, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;

    invoke-direct {v3, p1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->isBoundServiceSupported(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "BoundServiceStrategy, "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;

    invoke-direct {p2, v3}, Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;-><init>(Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/AccountManagerUtil;->canUseAccountManagerOperation(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "AccountManagerStrategy."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;

    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getSsoToken(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$10;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$10;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;->hashCode()I

    move-result v0

    return v0
.end method

.method public hello(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

    const-string v1, "9.0"

    invoke-virtual {v0, p2, v1}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->tryGetNegotiatedProtocolVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "broker.protocol.version.name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "required.broker.protocol.version.name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    sget-object v3, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_HELLO:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    iget-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mActiveBrokerPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;-><init>(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-interface {p1, v2}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->verifyHelloFromResultBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mHelloCache:Lcom/microsoft/identity/common/internal/cache/HelloCache;

    invoke-virtual {v0, p2, v1, p1}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->saveNegotiatedProtocolVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onFinishAuthorizationSession(IILcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 0
    .param p3    # Lcom/microsoft/identity/common/java/util/ported/PropertyBag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAccount(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)Z
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$5;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$5;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public removeCurrentAccount(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)Z
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isSharedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":removeCurrentAccount"

    const-string v1, "Not a shared device, invoke removeAccount() instead of removeCurrentAccount()"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->removeAccount(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;->mBrokerOperationExecutor:Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$8;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController$8;-><init>(Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;->execute(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
