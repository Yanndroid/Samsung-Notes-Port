.class public Lcom/nimbusds/jose/jwk/source/ImmutableSecret;
.super Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/jwk/JWKSet;

    new-instance v1, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    invoke-direct {v1, p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Lcom/nimbusds/jose/jwk/JWK;)V

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/jwk/JWKSet;

    new-instance v1, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    invoke-direct {v1, p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>([B)V

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Lcom/nimbusds/jose/jwk/JWK;)V

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;)V

    return-void
.end method


# virtual methods
.method public getSecret()[B
    .locals 2

    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;->getJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 2

    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;->getJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
