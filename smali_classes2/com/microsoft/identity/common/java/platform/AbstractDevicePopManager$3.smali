.class Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->getRequestConfirmation(Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

.field public final synthetic val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

.field public final synthetic val$methodTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->val$methodTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    iget-object v0, v0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;->getEntry()Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getKeyPairForEntry(Ljava/security/KeyStore$PrivateKeyEntry;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Lcom/nimbusds/jose/jwk/RSAKey;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->access$000(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    invoke-interface {v1, v0}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;->onTaskCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "json_construction_failed"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "failed_to_compute_thumbprint_with_sha256"

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "protection_params_invalid"

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "no_such_algorithm"

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "keystore_not_initialized"

    :goto_0
    new-instance v2, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->val$methodTag:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    return-void
.end method
