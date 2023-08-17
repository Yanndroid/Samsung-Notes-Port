.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;
.super Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;
.source "SourceFile"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "RCN_REDUNDANT_NULLCHECK_WOULD_HAVE_BEEN_A_NPE"
    }
.end annotation


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

.field private mEnvironment:Ljava/lang/String;

.field private mFamilyId:Ljava/lang/String;

.field private mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)V

    const-string/jumbo v0, "tokenResponse is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p6    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    iput-object p6, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFamilyRefreshToken()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    return-void
.end method
