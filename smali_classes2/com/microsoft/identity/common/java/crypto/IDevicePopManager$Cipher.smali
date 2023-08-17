.class public enum Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/AsymmetricAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Cipher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;",
        ">;",
        "Lcom/microsoft/identity/common/java/crypto/AsymmetricAlgorithm;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

.field public static final enum RSA_ECB_OAEPWithSHA_1AndMGF1Padding:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

.field public static final enum RSA_ECB_OAEPWithSHA_256AndMGF1Padding:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

.field public static final enum RSA_ECB_PKCS1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

.field public static final enum RSA_NONE_OAEPWithSHA_1AndMGF1Padding:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    const-string v1, "RSA_ECB_PKCS1_PADDING"

    const/4 v2, 0x0

    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->RSA_ECB_PKCS1_PADDING:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    new-instance v1, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher$1;

    const-string v3, "RSA_NONE_OAEPWithSHA_1AndMGF1Padding"

    const/4 v4, 0x1

    const-string v5, "RSA/NONE/OAEPWithSHA-1AndMGF1Padding"

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->RSA_NONE_OAEPWithSHA_1AndMGF1Padding:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    new-instance v3, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher$2;

    const-string v5, "RSA_ECB_OAEPWithSHA_1AndMGF1Padding"

    const/4 v6, 0x2

    const-string v7, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->RSA_ECB_OAEPWithSHA_1AndMGF1Padding:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    new-instance v5, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher$3;

    const-string v7, "RSA_ECB_OAEPWithSHA_256AndMGF1Padding"

    const/4 v8, 0x3

    const-string v9, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->RSA_ECB_OAEPWithSHA_256AndMGF1Padding:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->$VALUES:[Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string/jumbo p1, "value is marked non-null but is null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->mValue:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->$VALUES:[Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;

    return-object v0
.end method


# virtual methods
.method public cipherName()Lcom/microsoft/identity/common/java/crypto/Algorithm;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/crypto/AsymmetricAlgorithm$Builder;->of(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/AsymmetricAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public supportsShr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$Cipher;->mValue:Ljava/lang/String;

    return-object v0
.end method
