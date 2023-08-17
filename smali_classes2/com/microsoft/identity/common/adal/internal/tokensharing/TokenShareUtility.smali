.class public Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;
    }
.end annotation


# static fields
.field private static final CONSUMERS_ENDPOINT:Ljava/lang/String; = "https://login.microsoftonline.com/consumers"

.field private static final TAG:Ljava/lang/String; = "TokenShareUtility"

.field private static final sClaimRemapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientId:Ljava/lang/String;

.field private final mRedirectUri:Ljava/lang/String;

.field private final mTokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->sClaimRemapper:Ljava/util/Map;

    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->applyV1ToV2Mappings()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mRedirectUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->createTokenCacheItem(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    move-result-object p0

    return-object p0
.end method

.method private static adapt(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    invoke-direct {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setClientId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setRefreshToken(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mintV1IdTokenFromRawV2IdToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setRawIdToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setFamilyClientId(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->isFromHomeTenant(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->toEnvironment(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->getCommonEndpoint()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->getAuthority()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setAuthority(Ljava/lang/String;)V

    return-object v0
.end method

.method private static applyV1ToV2Mappings()V
    .locals 3

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->sClaimRemapper:Ljava/util/Map;

    const-string v1, "preferred_username"

    const-string/jumbo v2, "upn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createTokenCacheItem(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    invoke-direct {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;-><init>()V

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setAuthority(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setClientId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setRefreshToken(Ljava/lang/String;)V

    return-object v0
.end method

.method private getAccountRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    iget-object v3, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountsByUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string/jumbo v0, "token_cache_item_not_found"

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCacheRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/ICacheRecord;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getAccountRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    new-instance v2, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;

    invoke-direct {v2}, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->load(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    move-result-object p1

    return-object p1
.end method

.method private static isFromHomeTenant(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)Z
    .locals 4
    .param p0    # Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":isFromHomeTenant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->parseJWT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v3, "oid"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    move v2, p0

    goto :goto_0

    :cond_0
    const-string p0, "OID claims was missing from token."

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to parse IdToken."

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method private static mintV1IdTokenFromRawV2IdToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->parseJWT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    invoke-direct {v0}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "ver"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "1"

    :cond_0
    invoke-static {v2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->remap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->build()Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p0

    new-instance v6, Lcom/nimbusds/jose/PlainHeader;

    sget-object v1, Lcom/nimbusds/jose/JOSEObjectType;->JWT:Lcom/nimbusds/jose/JOSEObjectType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/PlainHeader;-><init>(Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    new-instance v0, Lcom/nimbusds/jwt/PlainJWT;

    invoke-direct {v0, v6, p0}, Lcom/nimbusds/jwt/PlainJWT;-><init>(Lcom/nimbusds/jose/PlainHeader;Lcom/nimbusds/jwt/JWTClaimsSet;)V

    invoke-interface {v0}, Lcom/nimbusds/jwt/JWT;->serialize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static remap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->sClaimRemapper:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private saveResult(Ljava/util/Map$Entry;)V
    .locals 2
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAccount;",
            "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/java/BaseAccount;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->setSingleSignOnState(Lcom/microsoft/identity/common/java/BaseAccount;Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;)V

    :cond_0
    return-void
.end method

.method private throwIfCacheRecordIncomplete(Ljava/lang/String;Lcom/microsoft/identity/common/java/cache/ICacheRecord;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/cache/ICacheRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":throwIfCacheRecordIncomplete"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "That\'s strange, we had an AccountRecord for identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but couldn\'t find tokens for them."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string/jumbo p2, "token_cache_item_not_found"

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMsaFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getMsaFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMsaFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getCacheRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->throwIfCacheRecordIncomplete(Ljava/lang/String;Lcom/microsoft/identity/common/java/cache/ICacheRecord;)V

    new-instance p1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAW"

    invoke-direct {p1, v0, v1, v2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;-><init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getOrgIdFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getOrgIdFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOrgIdFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getCacheRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->throwIfCacheRecordIncomplete(Ljava/lang/String;Lcom/microsoft/identity/common/java/cache/ICacheRecord;)V

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    move-result-object p1

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->adapt(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    move-result-object p1

    new-instance v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->serialize(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SSO_STATE_SERIALIZER_BLOB"

    invoke-direct {v1, v0, p1, v2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;-><init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public saveMsaFamilyRefreshToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":saveMsaFamilyRefreshToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;-><init>(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveResult(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public saveOrgIdFamilyRefreshToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":saveOrgIdFamilyRefreshToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$1;-><init>(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveResult(Ljava/util/Map$Entry;)V

    return-void
.end method
