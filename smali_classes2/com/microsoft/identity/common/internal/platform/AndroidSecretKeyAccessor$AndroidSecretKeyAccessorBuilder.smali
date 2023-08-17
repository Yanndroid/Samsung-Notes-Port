.class public Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidSecretKeyAccessorBuilder"
.end annotation


# instance fields
.field private keyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager<",
            "Ljava/security/KeyStore$SecretKeyEntry;",
            ">;"
        }
    .end annotation
.end field

.field private suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;
    .locals 3

    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;->keyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;-><init>(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)V

    return-object v0
.end method

.method public keyManager(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;)Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager<",
            "Ljava/security/KeyStore$SecretKeyEntry;",
            ">;)",
            "Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;->keyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    return-object p0
.end method

.method public suite(Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidSecretKeyAccessor.AndroidSecretKeyAccessorBuilder(keyManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;->keyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", suite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor$AndroidSecretKeyAccessorBuilder;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
