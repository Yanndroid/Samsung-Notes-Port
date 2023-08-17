.class public Lorg/apache/xmlbeans/impl/common/XmlWhitespace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WS_COLLAPSE:I = 0x3

.field public static final WS_PRESERVE:I = 0x1

.field public static final WS_REPLACE:I = 0x2

.field public static final WS_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->collapse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static collapse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x20

    if-ltz v2, :cond_1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_3
    move-object v1, p0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    return-object v1

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_b

    move v4, p0

    :goto_0
    if-ge v4, p1, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_8

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v5, p1, -0x1

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_8

    goto :goto_1

    :cond_8
    add-int/2addr v4, p0

    goto :goto_0

    :cond_9
    if-ne v4, p1, :cond_a

    add-int/lit8 p0, v4, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_a

    :goto_1
    move p0, v4

    goto :goto_3

    :cond_a
    return-object v1

    :cond_b
    move v4, v2

    :goto_2
    add-int/lit8 p0, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p0, v5, :cond_c

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_c

    move v4, p0

    goto :goto_2

    :cond_c
    move p0, v2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    :cond_d
    :goto_4
    add-int/2addr v4, v0

    if-lt v4, p1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_d

    :cond_f
    :goto_5
    add-int/lit8 v6, p0, 0x1

    add-int/lit8 v7, v4, 0x1

    aget-char v4, v5, v4

    aput-char v4, v5, p0

    if-lt v7, p1, :cond_10

    move p0, v6

    goto :goto_6

    :cond_10
    aget-char p0, v5, v7

    if-ne p0, v3, :cond_14

    add-int/lit8 p0, v6, 0x1

    add-int/lit8 v4, v7, 0x1

    aget-char v7, v5, v7

    aput-char v7, v5, v6

    if-lt v4, p1, :cond_13

    :goto_6
    new-instance p1, Ljava/lang/String;

    if-eqz p0, :cond_12

    add-int/lit8 v0, p0, -0x1

    aget-char v1, v5, v0

    if-eq v1, v3, :cond_11

    goto :goto_7

    :cond_11
    move p0, v0

    :cond_12
    :goto_7
    invoke-direct {p1, v5, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_13
    aget-char v6, v5, v4

    if-ne v6, v3, :cond_f

    goto :goto_4

    :cond_14
    move p0, v6

    move v4, v7

    goto :goto_5

    :cond_15
    :goto_8
    return-object p0
.end method

.method public static isAllSpace(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->isSpace(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllSpace(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->isSpace(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isSpace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
