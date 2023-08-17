.class Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/json/JStylerObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MPAgressive"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;-><init>()V

    return-void
.end method


# virtual methods
.method public mustBeProtect(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eq v3, p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isSpecial(C)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-static {v3}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isUnicode(C)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_3
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isSpecialClose(C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isUnicode(C)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v2

    :cond_6
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-lt v3, v6, :cond_8

    if-le v3, v5, :cond_9

    :cond_8
    if-ne v3, v4, :cond_18

    :cond_9
    move v7, v2

    :goto_2
    if-ge v7, v1, :cond_b

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_b

    if-le v3, v5, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    if-ne v7, v1, :cond_c

    return v2

    :cond_c
    const/16 v8, 0x2e

    if-ne v3, v8, :cond_e

    :cond_d
    add-int/lit8 v7, v7, 0x1

    :cond_e
    if-ge v7, v1, :cond_f

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_f

    if-le v3, v5, :cond_d

    :cond_f
    if-ne v7, v1, :cond_10

    return v2

    :cond_10
    const/16 v8, 0x45

    if-eq v3, v8, :cond_11

    const/16 v8, 0x65

    if-ne v3, v8, :cond_14

    :cond_11
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v1, :cond_12

    return v0

    :cond_12
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2b

    if-eq v3, v8, :cond_13

    if-ne v3, v4, :cond_14

    :cond_13
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    :cond_14
    if-ne v7, v1, :cond_15

    return v0

    :cond_15
    :goto_4
    if-ge v7, v1, :cond_17

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_17

    if-le v3, v5, :cond_16

    goto :goto_5

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_17
    :goto_5
    if-ne v7, v1, :cond_18

    return v2

    :cond_18
    return v0

    :cond_19
    :goto_6
    return v2
.end method
