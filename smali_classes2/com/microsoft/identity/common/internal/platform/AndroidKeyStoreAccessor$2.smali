.class Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/platform/AsymmetricKeyAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor;->getKeyAccessor(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$cipher:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

.field public final synthetic val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

.field public final synthetic val$signingAlg:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$cipher:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$signingAlg:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$cipher:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->decrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$cipher:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->encrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public generateDerivedKey([B[BLcom/microsoft/identity/common/java/crypto/CryptoSuite;)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This operation is not supported by asymmetric keys"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager<",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getKeyManager()Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$PublicKeyFormat;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getPublicKey(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$PublicKeyFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;

    move-result-object v0

    return-object v0
.end method

.method public getThumbprint()[B
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getAsymmetricKeyThumbprint()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public sign([B)[B
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$signingAlg:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->sign(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public verify([B[B)Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$2;->val$signingAlg:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-interface {v0, v1, p1, p2}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->verify(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;[B[B)Z

    move-result p1

    return p1
.end method
