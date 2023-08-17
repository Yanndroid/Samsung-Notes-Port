.class public Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/platform/IManagedKeyAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/platform/IManagedKeyAccessor<",
        "Ljava/security/KeyStore$SecretKeyEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager<",
            "Ljava/security/KeyStore$SecretKeyEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager<",
            "Ljava/security/KeyStore$SecretKeyEntry;",
            ">;",
            "Lcom/microsoft/identity/common/java/crypto/CryptoSuite;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    const-string v0, "ciphertext is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getEntry()Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/crypto/Algorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-direct {v2, v3, p1, v4, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length v0, p1

    invoke-static {p1, v5, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
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

    const-string v0, "keystore_not_initialized"

    goto :goto_0

    :catch_6
    move-exception p1

    const-string v0, "no_such_algorithm"

    goto :goto_0

    :catch_7
    move-exception p1

    const-string v0, "protection_params_invalid"

    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt([B)[B
    .locals 4
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    const-string v0, "plaintext is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getEntry()Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/crypto/Algorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "invalid_key"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "bad_padding"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "invalid_block_size"

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v0, "no_such_padding"

    goto :goto_0

    :catch_4
    move-exception p1

    const-string v0, "keystore_not_initialized"

    goto :goto_0

    :catch_5
    move-exception p1

    const-string v0, "no_such_algorithm"

    goto :goto_0

    :catch_6
    move-exception p1

    const-string v0, "protection_params_invalid"

    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateDerivedKey([B[BLcom/microsoft/identity/common/java/crypto/CryptoSuite;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This operation is not supported by inaccessible keys"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager<",
            "Ljava/security/KeyStore$SecretKeyEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    return-object v0
.end method

.method public getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;->getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;

    move-result-object v0

    return-object v0
.end method

.method public getThumbprint()[B
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getThumbprint()[B

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getEntry()Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->macName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "invalid_key"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "keystore_not_initialized"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "no_such_algorithm"

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v0, "protection_params_invalid"

    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;->sign([B)[B

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method
