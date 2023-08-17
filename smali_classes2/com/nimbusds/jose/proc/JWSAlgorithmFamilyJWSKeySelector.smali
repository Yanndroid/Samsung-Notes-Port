.class public Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
.super Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWSKeySelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource<",
        "TC;>;",
        "Lcom/nimbusds/jose/proc/JWSKeySelector<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final selectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSAlgorithm$Family;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/JWSAlgorithm;

    iget-object v1, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    new-instance v2, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;

    invoke-direct {v2, v0, p2}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "JWS algorithm family must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromJWKSetURL(Ljava/net/URL;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Ljava/net/URL;",
            ")",
            "Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;)V

    invoke-static {v0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->fromJWKSource(Lcom/nimbusds/jose/jwk/source/JWKSource;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    move-result-object p0

    return-object p0
.end method

.method public static fromJWKSource(Lcom/nimbusds/jose/jwk/source/JWKSource;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)",
            "Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/nimbusds/jose/jwk/KeyUse;

    sget-object v4, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    new-array v2, v2, [Lcom/nimbusds/jose/jwk/KeyType;

    sget-object v3, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyTypes([Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object v0

    new-instance v1, Lcom/nimbusds/jose/jwk/JWKSelector;

    invoke-direct {v1, v0}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    invoke-interface {p0, v1, v4}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    return-object v0

    :cond_1
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    return-object v0

    :cond_2
    new-instance p0, Lcom/nimbusds/jose/KeySourceException;

    const-string v0, "Couldn\'t retrieve JWKs"

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/KeySourceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 1

    invoke-super {p0}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    move-result-object v0

    return-object v0
.end method

.method public selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "TC;)",
            "Ljava/util/List<",
            "+",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/proc/JWSKeySelector;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/nimbusds/jose/proc/JWSKeySelector;->selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
