.class public final enum Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/crypto/impl/ECDH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlgorithmMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

.field public static final enum DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

.field public static final enum KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    new-instance v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    const-string v3, "KW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->$VALUES:[Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
    .locals 1

    const-class v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->$VALUES:[Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    invoke-virtual {v0}, [Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    return-object v0
.end method
