.class public Lcom/nimbusds/jose/crypto/impl/RSAKeyUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keyBitLength(Ljava/security/PrivateKey;)I
    .locals 2

    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static toRSAPrivateKey(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/security/PrivateKey;
    .locals 1

    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "The RSA JWK doesn\'t contain a private part"

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
