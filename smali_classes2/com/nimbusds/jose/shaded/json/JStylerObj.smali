.class Lcom/nimbusds/jose/shaded/json/JStylerObj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;
    }
.end annotation


# static fields
.field public static final ESCAPE4Web:Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;

.field public static final ESCAPE_LT:Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;

.field public static final MP_AGGRESIVE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;

.field public static final MP_SIMPLE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;

.field public static final MP_TRUE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_SIMPLE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_TRUE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_AGGRESIVE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->ESCAPE_LT:Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->ESCAPE4Web:Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKeyword(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/16 v2, 0x74

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_2
    const/16 v2, 0x66

    if-ne v0, v2, :cond_3

    const-string v0, "false"

    goto :goto_0

    :cond_3
    const/16 v2, 0x4e

    if-ne v0, v2, :cond_4

    const-string v0, "NaN"

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static isSpace(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSpecial(C)Z
    .locals 1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSpecialChar(C)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSpecialClose(C)Z
    .locals 1

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSpecialOpen(C)Z
    .locals 1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isUnicode(C)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1

    const/16 v0, 0x9f

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x2000

    if-lt p0, v0, :cond_3

    const/16 v0, 0x20ff

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
