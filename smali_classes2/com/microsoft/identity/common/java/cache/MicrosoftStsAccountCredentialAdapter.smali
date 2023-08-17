.class public Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/cache/IAccountCredentialAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/cache/IAccountCredentialAdapter<",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrosoftStsAccountCredentialAdapter"


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

.method private getCachedAt()J
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCredentialType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tokenType is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/java/dto/CredentialType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getExpiresOn(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getExpiresIn()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getExtendedExpiresOn(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getExtExpiresIn()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getExtExpiresIn()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRealm(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;->getRealm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRefreshOn(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshIn()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getExpiresIn()Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshIn()Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/microsoft/identity/common/java/AuthenticationConstants;->DEFAULT_SCOPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method


# virtual methods
.method public bridge synthetic asAccount(Lcom/microsoft/identity/common/java/BaseAccount;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->asAccount(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object p1

    return-object p1
.end method

.method public asAccount(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;-><init>(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)V

    return-object v0
.end method

.method public bridge synthetic asIdToken(Lcom/microsoft/identity/common/java/BaseAccount;Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;

    check-cast p2, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->asIdToken(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    move-result-object p1

    return-object p1
.end method

.method public asIdToken(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 5

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getCachedAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;->getIDToken()Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    move-result-object v2

    new-instance v3, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    invoke-direct {v3}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;-><init>()V

    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getHomeAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;->getRealm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->setRealm(Ljava/lang/String;)V

    sget-object p1, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->getRawIDToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getAuthority(Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->setAuthority(Ljava/lang/String;)V

    return-object v3
.end method

.method public asRefreshToken(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 4
    .param p1    # Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "refreshTokenIn is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    sget-object v1, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->setTarget(Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->setFamilyId(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic asRefreshToken(Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->asRefreshToken(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    move-result-object p1

    return-object p1
.end method

.method public createAccessToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getCachedAt()J

    move-result-wide v0

    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getExpiresOn(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)J

    move-result-wide v2

    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getRefreshOn(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)J

    move-result-wide v4

    new-instance v6, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    invoke-direct {v7}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;-><init>()V

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getCredentialType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getRealm(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setRealm(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getScope()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v6}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setTarget(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/microsoft/identity/common/java/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setExpiresOn(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setRefreshOn(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getExtendedExpiresOn(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setExtendedExpiresOn(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->getAuthorityFromTokenEndpoint()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setAuthority(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setAccessTokenType(Ljava/lang/String;)V

    const-string p2, "PoP"

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getDeviceAtPopThumbprint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->setKid(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v7

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic createAccessToken(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    check-cast p2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    check-cast p3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createAccessToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    move-result-object p1

    return-object p1
.end method

.method public createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 1

    sget-object p2, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Creating Account"

    invoke-static {p2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    invoke-virtual {p1, p3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;-><init>(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)V

    return-object p2
.end method

.method public bridge synthetic createAccount(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    check-cast p2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    check-cast p3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object p1

    return-object p1
.end method

.method public createIdToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;-><init>()V

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getRealm(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->setRealm(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getCredentialTypeFromVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;->getAuthorityFromTokenEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->setAuthority(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic createIdToken(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    check-cast p2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    check-cast p3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createIdToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    move-result-object p1

    return-object p1
.end method

.method public createRefreshToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getCachedAt()J

    move-result-wide v0

    new-instance v2, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    invoke-direct {v3}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->setFamilyId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getScope()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->setTarget(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setCachedAt(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic createRefreshToken(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    check-cast p2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    check-cast p3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createRefreshToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    move-result-object p1

    return-object p1
.end method
