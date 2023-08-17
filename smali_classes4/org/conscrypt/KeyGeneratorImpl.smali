.class public abstract Lorg/conscrypt/KeyGeneratorImpl;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/KeyGeneratorImpl$ARC4;,
        Lorg/conscrypt/KeyGeneratorImpl$ChaCha20;,
        Lorg/conscrypt/KeyGeneratorImpl$AES;,
        Lorg/conscrypt/KeyGeneratorImpl$DESEDE;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA512;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA384;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA256;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA224;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA1;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacMD5;
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private keySizeBits:I

.field public secureRandom:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/KeyGeneratorImpl;->algorithm:Ljava/lang/String;

    iput p2, p0, Lorg/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkKeySize(I)V
    .locals 1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Key size must be positive"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doKeyGeneration(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 3

    iget-object v0, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p0, Lorg/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Lorg/conscrypt/KeyGeneratorImpl;->doKeyGeneration(I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/KeyGeneratorImpl;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/conscrypt/KeyGeneratorImpl;->checkKeySize(I)V

    iput p1, p0, Lorg/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    iput-object p2, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public engineInit(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "No params provided"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown param type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
