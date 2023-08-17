.class final enum Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLX509CertPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/OpenSSLX509CertPath$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKCS7:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKI_PATH:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;


# instance fields
.field private final apiName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    const-string v1, "PKI_PATH"

    const/4 v2, 0x0

    const-string v3, "PkiPath"

    invoke-direct {v0, v1, v2, v3}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    new-instance v1, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    const-string v3, "PKCS7"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    return-object p0
.end method

.method public static findByApiName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 5

    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1

    const-class v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-virtual {v0}, [Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method
