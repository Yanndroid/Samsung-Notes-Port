.class public Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;
.super Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;
.source "SourceFile"


# static fields
.field private static final CURRENT_ACTIVE_BROKER_SHARED_PREF_KEY:Ljava/lang/String; = "current_active_broker"

.field public static final KEY_STORE_ALIAS:Ljava/lang/String; = "AdalKey"

.field private static final TAG:Ljava/lang/String; = "AndroidBrokerStorageEncryptionManager"


# instance fields
.field public final LEGACY_AUTHENTICATOR_APP_KEY_ALIAS:Ljava/lang/String;

.field public final LEGACY_COMPANY_PORTAL_KEY_ALIAS:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mKeyStoreKeyLoader:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

.field private final mLegacyAuthAppKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

.field private final mLegacyCPKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

.field private final mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;-><init>()V

    const-string v0, "LEGACY_AUTHENTICATOR_APP_KEY"

    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->LEGACY_AUTHENTICATOR_APP_KEY_ALIAS:Ljava/lang/String;

    const-string v1, "LEGACY_COMPANY_PORTAL_KEY"

    iput-object v1, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->LEGACY_COMPANY_PORTAL_KEY_ALIAS:Ljava/lang/String;

    const-string v2, "context is marked non-null but is null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;

    new-instance v2, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    sget-object v3, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {v3}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getBrokerSecretKeys()Ljava/util/Map;

    move-result-object v4

    const-string v5, "com.azure.authenticator"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v2, v0, v4}, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;-><init>(Ljava/lang/String;[B)V

    iput-object v2, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mLegacyAuthAppKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    new-instance v0, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    invoke-virtual {v3}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getBrokerSecretKeys()Ljava/util/Map;

    move-result-object v2

    const-string v3, "com.microsoft.windowsintune.companyportal"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mLegacyCPKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    new-instance v0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    const-string v1, "AdalKey"

    invoke-direct {v0, v1, p1, p2}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mKeyStoreKeyLoader:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    return-void
.end method


# virtual methods
.method public getKeyLoaderForDecryption([B)Ljava/util/List;
    .locals 4
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

    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getKeyLoaderForDecryption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "U001"

    invoke-static {p1, v3}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->isEncryptedByThisKeyIdentifier([BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "com.microsoft.windowsintune.companyportal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.microsoft.identity.testuserapp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.azure.authenticator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mLegacyAuthAppKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mLegacyCPKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_1
    const-string p1, "Unexpected Broker package name. Cannot load key."

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mLegacyCPKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mLegacyAuthAppKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_3
    const-string v1, "A001"

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->isEncryptedByThisKeyIdentifier([BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mKeyStoreKeyLoader:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_4
    const-string p1, "Cannot find a matching key to decrypt the given blob"

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getKeyLoaderForEncryption()Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;
    .locals 4
    .annotation build Llombok/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.azure.authenticator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mLegacyAuthAppKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    return-object v0

    :cond_0
    const-string v1, "com.microsoft.windowsintune.companyportal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.microsoft.identity.testuserapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matching encryption key not found, package name in use was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mLegacyCPKeyLoader:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleDecryptionFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "keyAlias is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "exception is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handleDecryptionFailure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "current_active_broker"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decryption failed with key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Active broker: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Exception: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;->mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "decryption_error_v2"

    invoke-interface {p2, v3, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;->logEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
