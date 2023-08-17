.class public final Lorg/apache/xmlbeans/impl/util/HexBin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASELENGTH:I = 0xff

.field private static final LOOKUPLENGTH:I = 0x10

.field private static hexNumberTable:[B

.field private static lookUpHexAlphabet:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/xmlbeans/impl/util/HexBin;->hexNumberTable:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/xmlbeans/impl/util/HexBin;->lookUpHexAlphabet:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lorg/apache/xmlbeans/impl/util/HexBin;->hexNumberTable:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    sget-object v2, Lorg/apache/xmlbeans/impl/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v3, v0, -0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x46

    :goto_2
    const/16 v2, 0x41

    const/16 v3, 0xa

    if-lt v0, v2, :cond_2

    sget-object v2, Lorg/apache/xmlbeans/impl/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v0, -0x41

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x66

    :goto_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    sget-object v2, Lorg/apache/xmlbeans/impl/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v1, v3, :cond_4

    sget-object v0, Lorg/apache/xmlbeans/impl/util/HexBin;->lookUpHexAlphabet:[B

    add-int/lit8 v2, v1, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_5
    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    sget-object v1, Lorg/apache/xmlbeans/impl/util/HexBin;->lookUpHexAlphabet:[B

    add-int/lit8 v2, v0, 0x41

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/HexBin;->encode([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/HexBin;->decode([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    return-object v0
.end method

.method public static decode([B)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    mul-int/lit8 v4, v3, 0x2

    aget-byte v5, p0, v4

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/util/HexBin;->isHex(B)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p0, v5

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/util/HexBin;->isHex(B)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    sget-object v6, Lorg/apache/xmlbeans/impl/util/HexBin;->hexNumberTable:[B

    aget-byte v4, p0, v4

    aget-byte v4, v6, v4

    shl-int/lit8 v4, v4, 0x4

    aget-byte v5, p0, v5

    aget-byte v5, v6, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    return-object v2
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/HexBin;->encode([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    return-object v0
.end method

.method public static encode([B)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lorg/apache/xmlbeans/impl/util/HexBin;->lookUpHexAlphabet:[B

    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-byte v5, v4, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static isHex(B)Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/util/HexBin;->hexNumberTable:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/HexBin;->decode([B)[B

    move-result-object p0

    return-object p0
.end method
