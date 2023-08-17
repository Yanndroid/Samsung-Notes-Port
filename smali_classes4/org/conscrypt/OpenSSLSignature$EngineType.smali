.class final enum Lorg/conscrypt/OpenSSLSignature$EngineType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/OpenSSLSignature$EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum EC:Lorg/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum RSA:Lorg/conscrypt/OpenSSLSignature$EngineType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/conscrypt/OpenSSLSignature$EngineType;

    const-string v1, "RSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/OpenSSLSignature$EngineType;->RSA:Lorg/conscrypt/OpenSSLSignature$EngineType;

    new-instance v1, Lorg/conscrypt/OpenSSLSignature$EngineType;

    const-string v3, "EC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/conscrypt/OpenSSLSignature$EngineType;->EC:Lorg/conscrypt/OpenSSLSignature$EngineType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/conscrypt/OpenSSLSignature$EngineType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/conscrypt/OpenSSLSignature$EngineType;->$VALUES:[Lorg/conscrypt/OpenSSLSignature$EngineType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/OpenSSLSignature$EngineType;
    .locals 1

    const-class v0, Lorg/conscrypt/OpenSSLSignature$EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/OpenSSLSignature$EngineType;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/OpenSSLSignature$EngineType;
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLSignature$EngineType;->$VALUES:[Lorg/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v0}, [Lorg/conscrypt/OpenSSLSignature$EngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/OpenSSLSignature$EngineType;

    return-object v0
.end method
