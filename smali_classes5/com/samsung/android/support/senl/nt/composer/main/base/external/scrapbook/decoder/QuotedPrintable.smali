.class public Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/QuotedPrintable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ESCAPE_CHAR:B = 0x3dt


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

.method public static decodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/QuotedPrintable;->decodeQuotedPrintableFromByte([B)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static decodeQuotedPrintable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/QuotedPrintable;->decodeQuotedPrintableFromByte([B)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/QuotedPrintable;->decodeQuotedPrintableFromByte([B)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static decodeQuotedPrintableFromByte([B)Ljava/io/ByteArrayOutputStream;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-byte v4, p0, v3

    sget-byte v5, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/QuotedPrintable;->ESCAPE_CHAR:B

    if-ne v4, v5, :cond_4

    const/16 v4, 0xd

    add-int/lit8 v5, v3, 0x1

    :try_start_0
    aget-byte v6, p0, v5

    int-to-char v6, v6

    if-ne v4, v6, :cond_1

    const/16 v4, 0xa

    add-int/lit8 v3, v3, 0x2

    aget-byte v6, p0, v3

    int-to-char v6, v6

    if-ne v4, v6, :cond_1

    goto :goto_2

    :cond_1
    aget-byte v3, p0, v5

    int-to-char v3, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, p0, v5

    int-to-char v6, v6

    invoke-static {v6, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_2

    :catch_0
    :cond_3
    :goto_1
    return-object v0

    :cond_4
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method
