.class Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/bouncycastle/openssl/PEMParser;

    invoke-direct {p0, v0}, Lorg/bouncycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {v2}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->toKeyPair(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/KeyPair;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v2}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->toKeyPair(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/KeyPair;

    move-result-object v2

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/bouncycastle/openssl/PEMKeyPair;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/openssl/PEMKeyPair;

    invoke-static {v2}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->toKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;

    move-result-object v2

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {v2}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->toKeyPair(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/KeyPair;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v1, :cond_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static toKeyPair(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/KeyPair;
    .locals 3

    sget-object v0, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0

    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, v0, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/security/KeyPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method private static toKeyPair(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/KeyPair;
    .locals 2

    new-instance v0, Ljava/security/KeyPair;

    sget-object v1, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v1, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method private static toKeyPair(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/KeyPair;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    new-instance v0, Ljava/security/KeyPair;

    sget-object v1, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v1, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method private static toKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method
