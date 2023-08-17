.class public interface abstract Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;,
        Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$PublicKeyFormat;
    }
.end annotation


# static fields
.field public static final MGF_1:Ljava/lang/String; = "MGF1"

.field public static final SHA_1:Ljava/lang/String; = "SHA-1"


# virtual methods
.method public abstract asymmetricKeyExists()Z
.end method

.method public abstract asymmetricKeyExists(Ljava/lang/String;)Z
.end method

.method public abstract clearAsymmetricKey()Z
.end method

.method public abstract decrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract decrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;[B)[B
    .param p1    # Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
.end method

.method public abstract encrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;[B)[B
    .param p1    # Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
.end method

.method public abstract generateAsymmetricKey()Ljava/lang/String;
.end method

.method public abstract generateAsymmetricKey(Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/exception/ClientException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAsymmetricKeyCreationDate()Ljava/util/Date;
.end method

.method public abstract getAsymmetricKeyThumbprint()Ljava/lang/String;
.end method

.method public abstract getCertificateChain()[Ljava/security/cert/Certificate;
.end method

.method public abstract getKeyManager()Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager<",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublicKey(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$PublicKeyFormat;)Ljava/lang/String;
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public abstract getRequestConfirmation()Ljava/lang/String;
.end method

.method public abstract getRequestConfirmation(Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/exception/ClientException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
.end method

.method public abstract mintSignedAccessToken(Ljava/lang/String;JLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract mintSignedAccessToken(Ljava/lang/String;JLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract mintSignedHttpRequest(Ljava/lang/String;JLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sign(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sign(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;[B)[B
    .param p1    # Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
.end method

.method public abstract verify(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract verify(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;[B[B)Z
    .param p1    # Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
.end method
