.class public Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;
.super Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;
.source "SourceFile"


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final FAILED_TO_GENERATE_ATTESTATION_CERTIFICATE_CHAIN:Ljava/lang/String; = "Failed to generate attestation certificate chain"

.field private static final RSA_KEY_SIZE:I = 0x800

.field public static final STRONG_BOX_UNAVAILABLE_EXCEPTION:Ljava/lang/String; = "StrongBoxUnavailableException"

.field private static final TAG:Ljava/lang/String; = "AndroidDevicePopManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "microsoft-device-pop"

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "context is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->createKeyStoreKeyManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;-><init>(Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;)V

    const-string v0, "context is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "alias is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static applyHardwareIsolation(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p0    # Landroid/security/keystore/KeyGenParameterSpec$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static createKeyStoreKeyManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager<",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "alias is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-static {}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;->builder()Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyAlias(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyStore(Ljava/security/KeyStore;)Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->build()Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    move-result-object p0

    return-object p0
.end method

.method private generateNewKeyPair(Landroid/content/Context;ZZZ)Ljava/security/KeyPair;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->isLocaleCalendarNonGregorian(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->LOCALE_CHANGE_LOCK:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->applyKeyStoreLocaleWorkarounds(Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v4, 0x800

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->getInitializedRsaKeyPairGenerator(Landroid/content/Context;IZZZ)Ljava/security/KeyPairGenerator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private generateNewRsaKeyPair(Landroid/content/Context;I)Ljava/security/KeyPair;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v0

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_1
    if-nez v4, :cond_4

    :try_start_0
    invoke-direct {p0, p1, v5, v6, v7}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->generateNewKeyPair(Landroid/content/Context;ZZZ)Ljava/security/KeyPair;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    goto :goto_1

    :catch_0
    move-exception v8

    if-eqz v5, :cond_0

    invoke-static {v8}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->isStrongBoxUnavailableException(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SecureKeyImportUnavailableException"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v6, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->TAG:Ljava/lang/String;

    const-string v9, "Import unsupported - skipping import flags."

    invoke-static {v6, v9, v8}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v5, :cond_1

    invoke-virtual {v8}, Ljava/security/ProviderException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v8}, Ljava/security/ProviderException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->isStrongBoxUnavailableException(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v0

    :cond_1
    move v6, v0

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v8}, Ljava/security/ProviderException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Failed to generate attestation certificate chain"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->TAG:Ljava/lang/String;

    const-string v9, "Failed to generate attestation cert - skipping flag."

    invoke-static {v7, v9, v8}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->clearAsymmetricKey()Z

    throw v8

    :cond_4
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v3}, Lcom/nimbusds/jose/crypto/impl/RSAKeyUtils;->keyBitLength(Ljava/security/PrivateKey;)I

    move-result v3

    if-ge v3, p2, :cond_6

    if-gez v3, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->getSecureHardwareState(Ljava/security/KeyPair;)Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;

    return-object v2

    :cond_7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->clearAsymmetricKey()Z

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Failed to generate valid KeyPair. Attempted 4 times."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getInitializedRsaKeyPairGenerator(Landroid/content/Context;IZZZ)Ljava/security/KeyPairGenerator;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    const-string v0, "RSA"

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->initialize(Landroid/content/Context;Ljava/security/KeyPairGenerator;IZZZ)V

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Ljava/security/KeyPairGenerator;IZZZ)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/KeyPairGenerator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p2, p3, p4, p6}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->initialize23(Ljava/security/KeyPairGenerator;IZZ)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->initialize28(Ljava/security/KeyPairGenerator;IZZZ)V

    :goto_0
    return-void
.end method

.method private initialize23(Ljava/security/KeyPairGenerator;IZZ)V
    .locals 3
    .param p1    # Ljava/security/KeyPairGenerator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const-string v0, "PKCS1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const-string v0, "NONE"

    const-string v1, "SHA-1"

    const-string v2, "SHA-256"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const-string v0, "OAEPPadding"

    const-string v1, "PKCS1Padding"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    if-eqz p4, :cond_0

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p4, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->setAttestationChallenge(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    :cond_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p4, v0, :cond_1

    if-eqz p3, :cond_1

    sget-object p3, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->TAG:Ljava/lang/String;

    const-string p4, "Attempting to apply StrongBox isolation."

    invoke-static {p3, p4}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->applyHardwareIsolation(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method private initialize28(Ljava/security/KeyPairGenerator;IZZZ)V
    .locals 3
    .param p1    # Ljava/security/KeyPairGenerator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    const/16 v0, 0x1c

    if-eqz p4, :cond_0

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p4, v0, :cond_0

    const/16 p4, 0x2f

    goto :goto_0

    :cond_0
    const/16 p4, 0xf

    :goto_0
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;

    invoke-interface {v2}, Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;->getKeyAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const-string p4, "PKCS1"

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const-string p4, "NONE"

    const-string v1, "SHA-1"

    const-string v2, "SHA-256"

    filled-new-array {p4, v1, v2}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const-string p4, "OAEPPadding"

    const-string v1, "PKCS1Padding"

    filled-new-array {p4, v1}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    if-eqz p5, :cond_1

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x18

    if-lt p4, p5, :cond_1

    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->setAttestationChallenge(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    :cond_1
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p4, v0, :cond_2

    if-eqz p3, :cond_2

    sget-object p3, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->TAG:Ljava/lang/String;

    const-string p4, "Attempting to apply StrongBox isolation."

    invoke-static {p3, p4}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->applyHardwareIsolation(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method private initializePre23(Landroid/content/Context;Ljava/security/KeyPairGenerator;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/KeyPairGenerator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->getNow(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x63

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v2, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;->getKeyAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object v0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$CertificateProperties;->SERIAL_NUMBER:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=device-pop"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v0, p3, v1}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method private static isStrongBoxUnavailableException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StrongBoxUnavailableException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":isStrongBoxUnavailableException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StrongBox not supported."

    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method private setAttestationChallenge(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1    # Landroid/security/keystore/KeyGenParameterSpec$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generateNewRsaKeyPair(I)Ljava/security/KeyPair;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->generateNewRsaKeyPair(Landroid/content/Context;I)Ljava/security/KeyPair;

    move-result-object p1

    return-object p1
.end method

.method public getSecureHardwareState(Ljava/security/KeyPair;)Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
    .locals 3
    .param p1    # Ljava/security/KeyPair;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "kp is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const-class v1, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    check-cast p1, Landroid/security/keystore/KeyInfo;

    invoke-virtual {p1}, Landroid/security/keystore/KeyInfo;->isInsideSecureHardware()Z

    move-result p1

    sget-object v0, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecretKey is secure hardware backed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;->TRUE_UNATTESTED:Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;->FALSE:Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    sget-object v0, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to query secure hardware state."

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;->UNKNOWN_QUERY_ERROR:Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;

    return-object p1
.end method

.method public performCleanupIfMintShrFails(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "e is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->TAG:Ljava/lang/String;

    const-string v0, "Unable to access asymmetric key - clearing."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->clearAsymmetricKey()Z

    :cond_0
    return-void
.end method
