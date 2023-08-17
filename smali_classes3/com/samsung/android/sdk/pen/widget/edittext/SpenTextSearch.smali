.class public Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch$SearchInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenTextSearch"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v2, "[$*()+|<>?{}\\[\\]\\{\\}\\^\\\\\\.]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_4

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\\"

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    const-string v1, "[\\s]{0,}"

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method private isHalant(C)Z
    .locals 1

    const/16 v0, 0x94d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9cd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa4d

    if-eq p1, v0, :cond_1

    const/16 v0, 0xacd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbcd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc4d

    if-eq p1, v0, :cond_1

    const/16 v0, 0xccd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd4d

    if-eq p1, v0, :cond_1

    const/16 v0, 0xddf

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isIndianChar(C)Z
    .locals 1

    const/16 v0, 0x900

    if-lt p1, v0, :cond_0

    const/16 v0, 0xdff

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isKhmerChar(C)Z
    .locals 1

    const/16 v0, 0x1780

    if-lt p1, v0, :cond_0

    const/16 v0, 0x17f9

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isLaoChar(C)Z
    .locals 1

    const/16 v0, 0xe81

    if-lt p1, v0, :cond_0

    const/16 v0, 0xedd

    if-le p1, v0, :cond_1

    :cond_0
    const v0, 0xe001

    if-lt p1, v0, :cond_2

    const v0, 0xe018

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isMyanmarChar(C)Z
    .locals 1

    const/16 v0, 0x1000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1097

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSurrogate(C)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p1, v0

    const v0, 0xd800

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isThaiChar(C)Z
    .locals 1

    const/16 v0, 0xe01

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe5b

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private searchTextWithPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;[FLjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[F",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch$SearchInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpenTextSearch"

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    if-eqz p3, :cond_f

    if-nez p5, :cond_0

    goto/16 :goto_b

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_2

    aget-char v5, p2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isCombinedCode(C)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move p2, v3

    move v4, p2

    :goto_1
    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_e

    if-nez p2, :cond_3

    new-instance p3, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch$SearchInfo;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-direct {p3, v5, v6}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch$SearchInfo;-><init>(II)V

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    array-length v5, p3

    if-lt v4, v5, :cond_4

    const-string p3, "highlightMessage:: combine index greater than length."

    :goto_3
    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-ge v5, v6, :cond_6

    array-length v6, p3

    if-ge v5, v6, :cond_6

    aget-char v6, p3, v5

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isCombinedCode(C)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    array-length v6, p3

    if-lt v5, v6, :cond_7

    const-string p3, "highlightMessage:: current combine index is greater than length."

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-lt v5, v6, :cond_8

    const-string p3, "highlightMessage:: it is not combined."

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    aget-char p3, p3, v5

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isIndianChar(C)Z

    move-result p3

    const/4 v5, 0x0

    if-eqz p3, :cond_a

    :goto_6
    if-le v6, v3, :cond_9

    add-int/lit8 p3, v6, -0x1

    aget-char p3, v1, p3

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isHalant(C)Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/lit8 v6, v6, -0x2

    goto :goto_6

    :cond_9
    if-ge v6, v3, :cond_b

    const-string p3, "highlightMessage:: pre pos halant is smaller than min."

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    goto :goto_8

    :cond_a
    :goto_7
    if-le v6, v3, :cond_b

    aget p3, p4, v6

    cmpl-float p3, p3, v5

    if-nez p3, :cond_b

    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_b
    :goto_8
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p3

    :goto_9
    if-ge p3, v2, :cond_d

    aget v3, p4, p3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_c

    add-int/lit8 v3, p3, -0x1

    aget-char v3, v1, v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isHalant(C)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    add-int/lit8 v3, p3, -0x1

    new-instance v5, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch$SearchInfo;

    invoke-direct {v5, v6, p3}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch$SearchInfo;-><init>(II)V

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    const-string p1, "IllegalArgumentException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :cond_f
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "searchTextWithPattern -"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " #out is empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isCombinedCode(C)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isIndianChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isThaiChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isKhmerChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isMyanmarChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->isLaoChar(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[FLjava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[F",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch$SearchInfo;",
            ">;)I"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SpenTextSearch"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "search -"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " #search text is empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    move-object v5, p0

    move-object v7, p2

    move-object v8, p1

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->searchTextWithPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;[FLjava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "search - count:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method
