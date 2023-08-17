.class public Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/platform/AsymmetricRsaKey;


# static fields
.field public static final RSA_ECB_PKCS_1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation
.end field

.field public static final SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation
.end field


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->RSA_ECB_PKCS1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    sput-object v0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->RSA_ECB_PKCS_1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    sget-object v0, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    sput-object v0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mAlias:Ljava/lang/String;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->asymmetricKeyExists()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->generateAsymmetricKey()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->RSA_ECB_PKCS_1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->decrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decrypt([B)[B
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->RSA_ECB_PKCS_1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->encrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->RSA_ECB_PKCS_1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->encrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->RSA_ECB_PKCS_1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->encrypt(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedOn()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getAsymmetricKeyCreationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$PublicKeyFormat;->JWK:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$PublicKeyFormat;

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getPublicKey(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$PublicKeyFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;

    move-result-object v0

    return-object v0
.end method

.method public getThumbprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->getAsymmetricKeyThumbprint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->sign(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sign([B)[B
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->sign(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-interface {v0, v1, p1, p2}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->verify(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public verify([B[B)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    sget-object v1, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;->SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-interface {v0, v1, p1, p2}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->verify(Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;[B[B)Z

    move-result p1

    return p1
.end method
