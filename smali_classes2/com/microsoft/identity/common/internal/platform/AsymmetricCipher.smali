.class public abstract enum Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/CryptoSuite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;",
        ">;",
        "Lcom/microsoft/identity/common/java/crypto/CryptoSuite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

.field public static final enum RSA_ECB_PKCS1_PADDING_HMACSHA256:Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

.field public static final enum RSA_NONE_OAEPWithSHA_1AndMGF1PaddingAndHmacSha256:Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher$1;

    const-string v1, "RSA_NONE_OAEPWithSHA_1AndMGF1PaddingAndHmacSha256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;->RSA_NONE_OAEPWithSHA_1AndMGF1PaddingAndHmacSha256:Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

    new-instance v1, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher$2;

    const-string v3, "RSA_ECB_PKCS1_PADDING_HMACSHA256"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;->RSA_ECB_PKCS1_PADDING_HMACSHA256:Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;->$VALUES:[Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/microsoft/identity/common/internal/platform/AsymmetricCipher$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;->$VALUES:[Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/internal/platform/AsymmetricCipher;

    return-object v0
.end method
