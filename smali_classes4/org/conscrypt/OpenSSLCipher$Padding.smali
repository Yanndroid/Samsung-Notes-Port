.class final enum Lorg/conscrypt/OpenSSLCipher$Padding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Padding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/OpenSSLCipher$Padding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/OpenSSLCipher$Padding;

.field public static final enum NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

.field public static final enum PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

.field public static final enum PKCS7PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/conscrypt/OpenSSLCipher$Padding;

    const-string v1, "NOPADDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    new-instance v1, Lorg/conscrypt/OpenSSLCipher$Padding;

    const-string v3, "PKCS5PADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    new-instance v3, Lorg/conscrypt/OpenSSLCipher$Padding;

    const-string v5, "PKCS7PADDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS7PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/conscrypt/OpenSSLCipher$Padding;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lorg/conscrypt/OpenSSLCipher$Padding;

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

.method public static getNormalized(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/OpenSSLCipher$Padding;->valueOf(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object p0

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS7PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    const-class v0, Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/OpenSSLCipher$Padding;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v0}, [Lorg/conscrypt/OpenSSLCipher$Padding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method
