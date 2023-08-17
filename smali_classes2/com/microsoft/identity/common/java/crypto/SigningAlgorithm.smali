.class public final enum Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

.field public static final enum NONE_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

.field public static final enum SHA_1_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

.field public static final enum SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    const-string v1, "NONE_WITH_RSA"

    const/4 v2, 0x0

    const-string v3, "NONEwithRSA"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->NONE_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    new-instance v1, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    const-string v3, "SHA_1_WITH_RSA"

    const/4 v4, 0x1

    const-string v5, "SHA1withRSA"

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->SHA_1_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    new-instance v3, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    const-string v5, "SHA_256_WITH_RSA"

    const/4 v6, 0x2

    const-string v7, "SHA256withRSA"

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->SHA_256_WITH_RSA:Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->$VALUES:[Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

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

    iput-object p3, p0, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->$VALUES:[Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;->mValue:Ljava/lang/String;

    return-object v0
.end method
