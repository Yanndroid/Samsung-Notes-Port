.class public Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "EI_EXPOSE_REP"
    }
.end annotation


# static fields
.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mKey:[B
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final mSuite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;
    .annotation build Llombok/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/crypto/CryptoSuite;[BLjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/crypto/CryptoSuite;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "suite is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "key is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mSuite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    iput-object p3, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mAlias:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 5
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "ciphertext is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    iget-object v2, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mSuite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/Algorithm;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-direct {v2, p1, v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length v0, p1

    invoke-static {p1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "invalid_algorithm_parameter"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "invalid_key"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "bad_padding"

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v0, "invalid_block_size"

    goto :goto_0

    :catch_4
    move-exception p1

    const-string v0, "no_such_padding"

    goto :goto_0

    :catch_5
    move-exception p1

    const-string v0, "no_such_algorithm"

    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt([B)[B
    .locals 6
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "plaintext is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    iget-object v2, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mSuite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/Algorithm;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/16 v2, 0xc

    new-array v3, v2, [B

    sget-object v4, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p1

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    array-length v1, p1

    add-int/2addr v1, v2

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [B

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr v2, p1

    array-length p1, v0

    invoke-static {v0, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "invalid_algorithm_parameter"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "invalid_key"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "bad_padding"

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v0, "invalid_block_size"

    goto :goto_0

    :catch_4
    move-exception p1

    const-string v0, "no_such_padding"

    goto :goto_0

    :catch_5
    move-exception p1

    const-string v0, "no_such_algorithm"

    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public generateDerivedKey([B[BLcom/microsoft/identity/common/java/crypto/CryptoSuite;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 2
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/java/crypto/CryptoSuite;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "label is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ctx is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "suite is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    invoke-static {v1, p1, p2}, Lcom/microsoft/identity/common/java/crypto/SP800108KeyGen;->generateDerivedKey([B[B[B)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p3, p1, p2}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;-><init>(Lcom/microsoft/identity/common/java/crypto/CryptoSuite;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "no_such_algorithm"

    invoke-direct {p2, v0, p3, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "invalid_key"

    invoke-direct {p2, v0, p3, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "io_error"

    invoke-direct {p2, v0, p3, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public generateDerivedKey([B[B)[B
    .locals 2
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "label is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ctx is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    invoke-static {v0, p1, p2}, Lcom/microsoft/identity/common/java/crypto/SP800108KeyGen;->generateDerivedKey([B[B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_such_algorithm"

    invoke-direct {p2, v1, v0, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid_key"

    invoke-direct {p2, v1, v0, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io_error"

    invoke-direct {p2, v1, v0, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()[B
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    return-object v0
.end method

.method public getRawKey()[B
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;->FALSE:Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;

    return-object v0
.end method

.method public getSuite()Lcom/microsoft/identity/common/java/crypto/CryptoSuite;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mSuite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    return-object v0
.end method

.method public getThumbprint()[B
    .locals 4

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    iget-object v2, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mSuite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/Algorithm;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const-string v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "invalid_block_size"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "bad_padding"

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "no_such_padding"

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "no_such_algorithm"

    :goto_0
    new-instance v2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sign([B)[B
    .locals 3
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "text is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mKey:[B

    iget-object v2, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mSuite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/Algorithm;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->mSuite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->macName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "invalid_key"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "no_such_algorithm"

    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public verify([B[B)Z
    .locals 1
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "text is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signature is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->sign([B)[B

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method
