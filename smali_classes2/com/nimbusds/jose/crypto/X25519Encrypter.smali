.class public Lcom/nimbusds/jose/crypto/X25519Encrypter;
.super Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/JWEEncrypter;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .locals 2

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;-><init>(Lcom/nimbusds/jose/jwk/Curve;)V

    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/X25519Encrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    return-void

    :cond_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "X25519Encrypter requires a public key, use OctetKeyPair.toPublicJWK()"

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "X25519Encrypter only supports OctetKeyPairs with crv=X25519"

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 4

    invoke-static {}, Lcom/google/crypto/tink/subtle/X25519;->generatePrivateKey()[B

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/X25519;->publicFromPrivate([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v3

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;)V

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->build()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->toPublicJWK()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    move-result-object v1

    new-instance v2, Lcom/nimbusds/jose/JWEHeader$Builder;

    invoke-direct {v2, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEHeader;)V

    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->ephemeralPublicKey(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p1

    iget-object v1, p0, Lcom/nimbusds/jose/crypto/X25519Encrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    invoke-static {v1, v0}, Lcom/nimbusds/jose/crypto/impl/ECDH;->deriveSharedSecret(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->encryptWithZ(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;[B)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getPublicKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/X25519Encrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    return-object v0
.end method

.method public supportedEllipticCurves()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
