.class public Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;
.super Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;
.source "SourceFile"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x6

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field public static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private bitWorkArea:I

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p2

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    sget-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->containsAlphabetOrPad([B)Z

    move-result v2

    if-nez v2, :cond_1

    if-lez p1, :cond_2

    array-length p1, p2

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    iput-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    :goto_1
    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeSize:I

    if-eqz p3, :cond_3

    sget-object p1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    :goto_2
    iput-object p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    sget-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0, p1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    new-instance v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    new-instance v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 4

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;

    invoke-direct {p1, p2}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;

    const/4 v0, 0x0

    sget-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p1, v0, v1, p2}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->getEncodedLength([B)J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long p2, v0, v2

    if-gtz p2, :cond_2

    invoke-virtual {p1, p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Input array too big, the output array would be bigger ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") than the specified maximum size of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 1

    const-string v0, "encodeInteger called with null parameter"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 0

    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result p0

    return p0
.end method

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

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

.method public static isBase64(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result p0

    return p0
.end method

.method public static isBase64([B)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    div-int/lit8 v4, v0, 0x8

    if-ne v2, v4, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    array-length v4, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    div-int/lit8 v0, v0, 0x8

    sub-int p0, v0, v4

    new-array v0, v0, [B

    invoke-static {v1, v3, v0, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public decode([BII)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->eof:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-gez p3, :cond_1

    iput-boolean v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->eof:Z

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(I)V

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    const/16 v3, 0x3d

    if-ne p2, v3, :cond_2

    iput-boolean v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->eof:Z

    goto :goto_1

    :cond_2
    if-ltz p2, :cond_3

    sget-object v3, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v4, v3

    if-ge p2, v4, :cond_3

    aget-byte p2, v3, p2

    if-ltz p2, :cond_3

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    add-int/2addr v3, v0

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, p2

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    if-nez v3, :cond_3

    iget-object p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p2, v3

    add-int/lit8 v3, v5, 0x1

    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->eof:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(I)V

    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/2addr p1, p2

    iput p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    iget-object p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    iget p3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    iput p3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    iget-object p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    iget p3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    :cond_7
    :goto_2
    return-void
.end method

.method public encode([BII)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->eof:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_5

    iput-boolean v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->eof:Z

    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(I)V

    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iget p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    const/16 p3, 0x3d

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iget-object v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v5, v4, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v3, v5

    aput-byte v5, p2, p1

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v3, v6

    aput-byte v6, p2, v2

    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    shl-int/lit8 v1, v4, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p2, v5

    sget-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    aput-byte p3, p2, v2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iget-object v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v3, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v2, v4

    aput-byte v4, p2, p1

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v2, v3

    aput-byte v3, p2, v1

    sget-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v2, v1, :cond_4

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    aput-byte p3, p2, v4

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    aput-byte p3, p2, v1

    :cond_4
    :goto_0
    iget p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->currentLinePos:I

    iget p3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    sub-int p1, p3, p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->currentLinePos:I

    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez p1, :cond_8

    if-lez p2, :cond_8

    iget-object p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    array-length v1, p1

    invoke-static {p1, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iget-object p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    goto/16 :goto_2

    :cond_5
    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_8

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v3}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(I)V

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    add-int/2addr v3, v1

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->modulus:I

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_6

    add-int/lit16 p2, p2, 0x100

    :cond_6
    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, p2

    iput v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    if-nez v3, :cond_7

    iget-object p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->buffer:[B

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iget-object v7, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p2, v3

    add-int/lit8 v3, v6, 0x1

    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p2, v6

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p2, v3

    add-int/lit8 v3, v6, 0x1

    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v7, v5

    aput-byte v5, p2, v6

    iget v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->currentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->currentLinePos:I

    iget v6, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v6, :cond_7

    if-gt v6, v5, :cond_7

    iget-object v5, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v5

    invoke-static {v5, v0, p2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iget-object v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v3, v3

    add-int/2addr p2, v3

    iput p2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->pos:I

    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/BaseNCodec;->currentLinePos:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    move p2, v4

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public isInAlphabet(B)Z
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-byte p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUrlSafe()Z
    .locals 2

    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
