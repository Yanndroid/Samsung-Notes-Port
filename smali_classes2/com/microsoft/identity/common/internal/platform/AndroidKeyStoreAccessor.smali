.class public Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final KEY_PURPOSES:I = 0x7

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forAlias(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/crypto/CryptoSuite;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/AndroidPlatformComponents;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;->getDevicePopManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object p0

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->asymmetricKeyExists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->generateAsymmetricKey()Ljava/lang/String;

    :cond_0
    invoke-interface {p2}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-interface {p2}, Lcom/microsoft/identity/common/java/crypto/CryptoSuite;->signingAlgorithm()Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor;->getKeyAccessor(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "AndroidKeyStore"

    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V

    new-instance p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$1;

    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$1;-><init>(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)V

    return-object p0
.end method

.method private static final getKeyAccessor(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;-><init>(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;)V

    return-object v0
.end method

.method public static importSymmetricKey(Landroid/content/Context;Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation is not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/AndroidPlatformComponents;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;->getDevicePopManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->generateAsymmetricKey()Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor;->getKeyAccessor(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;Z)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 11
    .param p0    # Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez p1, :cond_3

    const-string p1, "AndroidKeyStore"

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;->cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;

    move-result-object v4

    invoke-interface {v4}, Lcom/microsoft/identity/common/java/crypto/Algorithm;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-static {v6, p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1

    const/16 v6, 0x1c

    const/4 v7, 0x2

    const/4 v8, 0x7

    const/4 v9, 0x1

    if-lt v1, v6, :cond_0

    :try_start_0
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v1, v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;->keySize()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-array v6, v9, [Ljava/lang/String;

    aget-object v10, v4, v9

    aput-object v10, v6, v5

    invoke-virtual {v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-array v6, v9, [Ljava/lang/String;

    aget-object v10, v4, v7

    aput-object v10, v6, v5

    invoke-virtual {v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;->keySize()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v1, v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;->keySize()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-array v6, v9, [Ljava/lang/String;

    aget-object v10, v4, v9

    aput-object v10, v6, v5

    invoke-virtual {v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-array v6, v9, [Ljava/lang/String;

    aget-object v10, v4, v7

    aput-object v10, v6, v5

    invoke-virtual {v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;->keySize()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "StrongBoxUnavailableException"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    if-nez v3, :cond_1

    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v1, v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;->keySize()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/String;

    aget-object v6, v4, v9

    aput-object v6, v3, v5

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;->keySize()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-direct {p1, v2, v0}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$3;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$3;-><init>(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)V

    return-object v0

    :cond_2
    throw v1

    :cond_3
    const-string p1, "AES"

    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1

    iget v1, p0, Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;->mKeySize:I

    invoke-virtual {p1, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-static {}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;->builder()Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->suite(Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->key([B)Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->alias(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->build()Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;

    move-result-object p0

    return-object p0
.end method
