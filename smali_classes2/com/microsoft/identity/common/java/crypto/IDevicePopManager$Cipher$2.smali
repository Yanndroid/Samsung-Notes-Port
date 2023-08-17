.class final enum Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher$2;
.super Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$1;)V

    return-void
.end method


# virtual methods
.method public getParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 5

    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v1, Ljava/security/spec/MGF1ParameterSpec;

    const-string v2, "SHA-1"

    invoke-direct {v1, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v4, "MGF1"

    invoke-direct {v0, v2, v4, v1, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    return-object v0
.end method
