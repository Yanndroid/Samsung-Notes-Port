.class Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor$3;
.super Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/platform/AndroidKeyStoreAccessor;->newInstance(Lcom/microsoft/identity/common/internal/platform/SymmetricCipher;Z)Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/platform/AndroidSecretKeyAccessor;-><init>(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)V

    return-void
.end method


# virtual methods
.method public sign([B)[B
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This key instance does not support signing"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verify([B[B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This key instance does not support verification"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
