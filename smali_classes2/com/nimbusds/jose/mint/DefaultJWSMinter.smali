.class public Lcom/nimbusds/jose/mint/DefaultJWSMinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/mint/ConfigurableJWSMinter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/mint/ConfigurableJWSMinter<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;

    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;

    return-void
.end method

.method private jwks(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "TC;)",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->forJWSHeader(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p1

    new-instance v0, Lcom/nimbusds/jose/jwk/JWKSelector;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    instance-of p1, p2, Lcom/nimbusds/jose/proc/JWKSecurityContext;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/nimbusds/jose/jwk/JWKSet;

    check-cast p2, Lcom/nimbusds/jose/proc/JWKSecurityContext;

    invoke-virtual {p2}, Lcom/nimbusds/jose/proc/JWKSecurityContext;->getKeys()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0, p2}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "No JWK source configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    return-object v0
.end method

.method public getJWSSignerFactory()Lcom/nimbusds/jose/produce/JWSSignerFactory;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;

    return-object v0
.end method

.method public mint(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/JWSObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "Lcom/nimbusds/jose/Payload;",
            "TC;)",
            "Lcom/nimbusds/jose/JWSObject;"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwks(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nimbusds/jose/jwk/JWK;

    new-instance v0, Lcom/nimbusds/jose/JWSHeader$Builder;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/JWSHeader$Builder;-><init>(Lcom/nimbusds/jose/JWSHeader;)V

    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/JWSHeader$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWSHeader$Builder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;->x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWSHeader$Builder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;->x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/JWSHeader$Builder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;->x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;->x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader$Builder;->build()Lcom/nimbusds/jose/JWSHeader;

    move-result-object p1

    new-instance v0, Lcom/nimbusds/jose/JWSObject;

    invoke-direct {v0, p1, p2}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/Payload;)V

    iget-object p1, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/nimbusds/jose/produce/JWSSignerFactory;->createJWSSigner(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWSSigner;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/JWSObject;->sign(Lcom/nimbusds/jose/JWSSigner;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "No JWS signer factory configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "No JWKs found for signing"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJWKSource(Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    return-void
.end method

.method public setJWSSignerFactory(Lcom/nimbusds/jose/produce/JWSSignerFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/mint/DefaultJWSMinter;->jwsSignerFactory:Lcom/nimbusds/jose/produce/JWSSignerFactory;

    return-void
.end method
