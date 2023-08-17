.class public Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;
.super Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;
.source "SourceFile"


# static fields
.field public static final KEY_STORE_ALIAS:Ljava/lang/String; = "AdalKey"

.field private static final TAG:Ljava/lang/String; = "AndroidAuthSdkStorageEncryptionManager"


# instance fields
.field private final mKeyStoreKeyLoader:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

.field private final mPredefinedKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;-><init>()V

    const-string v0, "context is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getSecretKeyData()[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mPredefinedKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getSecretKeyData()[B

    move-result-object v0

    const-string v2, "USER_DEFINED_KEY"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;-><init>(Ljava/lang/String;[B)V

    iput-object v1, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mPredefinedKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    const-string v1, "AdalKey"

    invoke-direct {v0, v1, p1, p2}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mKeyStoreKeyLoader:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    return-void
.end method


# virtual methods
.method public getKeyLoaderForDecryption([B)Ljava/util/List;
    .locals 2
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;",
            ">;"
        }
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "cipherText is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getKeyLoaderForDecryption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->getKeyIdentifierFromCipherText([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "U001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mPredefinedKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cipher Text is encrypted by USER_PROVIDED_KEY_IDENTIFIER, but mPredefinedKeyLoader is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v1, "A001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mKeyStoreKeyLoader:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "Cannot find a matching key to decrypt the given blob"

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getKeyLoaderForEncryption()Lcom/microsoft/identity/common/java/crypto/key/AES256KeyLoader;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mPredefinedKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mKeyStoreKeyLoader:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    return-object v0
.end method

.method public bridge synthetic getKeyLoaderForEncryption()Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->getKeyLoaderForEncryption()Lcom/microsoft/identity/common/java/crypto/key/AES256KeyLoader;

    move-result-object v0

    return-object v0
.end method
