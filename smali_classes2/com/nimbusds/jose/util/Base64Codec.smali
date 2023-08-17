.class final Lcom/nimbusds/jose/util/Base64Codec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkedCast(J)I
    .locals 3

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " cannot be cast to int without changing its value."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeEncodedLength(IZ)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_2

    div-int/lit8 p1, p0, 0x3

    shl-int/lit8 p1, p1, 0x2

    rem-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v1, p0

    int-to-long v2, v1

    const-wide/16 v4, 0x6

    mul-long/2addr v2, v4

    const/4 v4, 0x3

    shr-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/nimbusds/jose/util/Base64Codec;->checkedCast(J)I

    move-result v2

    new-array v2, v2, [B

    move v3, v0

    move v5, v3

    :cond_1
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_5

    move v6, v0

    move v7, v6

    :goto_1
    const/4 v8, 0x4

    if-ge v6, v8, :cond_3

    if-ge v3, v1, :cond_3

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/nimbusds/jose/util/Base64Codec;->decodeDigit(B)I

    move-result v3

    if-ltz v3, :cond_2

    mul-int/lit8 v9, v6, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v3, v9

    or-int/2addr v7, v3

    add-int/lit8 v6, v6, 0x1

    :cond_2
    move v3, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x2

    if-lt v6, v9, :cond_1

    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    aput-byte v10, v2, v5

    if-lt v6, v4, :cond_4

    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    if-lt v6, v8, :cond_1

    add-int/lit8 v6, v5, 0x1

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    move v5, v6

    goto :goto_0

    :cond_4
    move v5, v9

    goto :goto_0

    :cond_5
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    new-array p0, v0, [B

    return-object p0
.end method

.method public static decodeDigit(B)I
    .locals 9

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v0

    const/16 v1, 0x5b

    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0x60

    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v1

    const/16 v2, 0x7b

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v2

    and-int/2addr v1, v2

    const/16 v2, 0x2f

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v3

    const/16 v4, 0x3a

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v4

    and-int/2addr v3, v4

    const/16 v4, 0x2d

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v4

    const/16 v5, 0x2b

    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x5f

    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v5

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v2

    or-int/2addr v2, v5

    or-int v5, v0, v1

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    or-int/2addr v5, v2

    add-int/lit8 v6, p0, -0x41

    const/4 v7, 0x0

    add-int/2addr v6, v7

    add-int/lit8 v8, p0, -0x61

    add-int/lit8 v8, v8, 0x1a

    add-int/lit8 p0, p0, -0x30

    add-int/lit8 p0, p0, 0x34

    invoke-static {v0, v6, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    invoke-static {v1, v8, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v3, p0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result p0

    or-int/2addr p0, v0

    const/16 v0, 0x3e

    invoke-static {v4, v0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    const/16 v0, 0x3f

    invoke-static {v2, v0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    const/4 v0, -0x1

    invoke-static {v5, v7, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    return p0
.end method

.method public static encodeDigitBase64(I)B
    .locals 8

    const/16 v0, 0x1a

    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v0

    const/16 v1, 0x19

    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v1

    const/16 v2, 0x34

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x33

    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v3

    const/16 v4, 0x3e

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v5

    and-int/2addr v3, v5

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v4

    const/16 v5, 0x3f

    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v5

    add-int/lit8 v6, p0, 0x0

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v7, p0, -0x1a

    add-int/lit8 v7, v7, 0x61

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x30

    const/4 v2, 0x0

    invoke-static {v0, v6, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    invoke-static {v1, v7, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v3, p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result p0

    or-int/2addr p0, v0

    const/16 v0, 0x2b

    invoke-static {v4, v0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    const/16 v0, 0x2f

    invoke-static {v5, v0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public static encodeDigitBase64URL(I)B
    .locals 8

    const/16 v0, 0x1a

    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v0

    const/16 v1, 0x19

    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v1

    const/16 v2, 0x34

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x33

    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v3

    const/16 v4, 0x3e

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v5

    and-int/2addr v3, v5

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v4

    const/16 v5, 0x3f

    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v5

    add-int/lit8 v6, p0, 0x0

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v7, p0, -0x1a

    add-int/lit8 v7, v7, 0x61

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x30

    const/4 v2, 0x0

    invoke-static {v0, v6, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    invoke-static {v1, v7, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v3, p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result p0

    or-int/2addr p0, v0

    const/16 v0, 0x2d

    invoke-static {v4, v0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    const/16 v0, 0x5f

    invoke-static {v5, v0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public static encodeToString([BZ)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    div-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, p1}, Lcom/nimbusds/jose/util/Base64Codec;->computeEncodedLength(IZ)I

    move-result v3

    new-array v4, v3, [B

    move v5, v0

    move v6, v5

    :goto_1
    if-ge v5, v2, :cond_3

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v5, 0x12

    and-int/lit8 v9, v9, 0x3f

    if-eqz p1, :cond_2

    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v9

    aput-byte v9, v4, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v5, v5, 0x3f

    invoke-static {v5}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v5

    aput-byte v5, v4, v8

    goto :goto_2

    :cond_2
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v9

    aput-byte v9, v4, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v5, v5, 0x3f

    invoke-static {v5}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v5

    aput-byte v5, v4, v8

    :goto_2
    move v5, v7

    goto :goto_1

    :cond_3
    sub-int v5, v1, v2

    if-lez v5, :cond_8

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, p0, 0x2

    :cond_4
    or-int p0, v2, v0

    if-eqz p1, :cond_6

    if-ne v5, v6, :cond_5

    add-int/lit8 p1, v3, -0x3

    shr-int/lit8 v0, p0, 0xc

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 p1, v3, -0x2

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 p0, p0, 0x3f

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result p0

    aput-byte p0, v4, v3

    goto :goto_4

    :cond_5
    add-int/lit8 p1, v3, -0x2

    shr-int/lit8 v0, p0, 0xc

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 v3, v3, -0x1

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result p0

    aput-byte p0, v4, v3

    goto :goto_4

    :cond_6
    add-int/lit8 p1, v3, -0x4

    shr-int/lit8 v0, p0, 0xc

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 p1, v3, -0x3

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 p1, v3, -0x2

    const/16 v0, 0x3d

    if-ne v5, v6, :cond_7

    and-int/lit8 p0, p0, 0x3f

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result p0

    goto :goto_3

    :cond_7
    move p0, v0

    :goto_3
    aput-byte p0, v4, p1

    add-int/lit8 v3, v3, -0x1

    aput-byte v0, v4, v3

    :cond_8
    :goto_4
    new-instance p0, Ljava/lang/String;

    sget-object p1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v4, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static tpEq(II)I
    .locals 0

    xor-int/2addr p0, p1

    add-int/lit8 p1, p0, -0x1

    not-int p0, p0

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static tpGT(II)I
    .locals 2

    int-to-long v0, p1

    int-to-long p0, p0

    sub-long/2addr v0, p0

    const/16 p0, 0x3f

    ushr-long p0, v0, p0

    long-to-int p0, p0

    return p0
.end method

.method public static tpLT(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    const/16 p0, 0x3f

    ushr-long p0, v0, p0

    long-to-int p0, p0

    return p0
.end method

.method public static tpSelect(III)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    xor-int/2addr p2, p1

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method
