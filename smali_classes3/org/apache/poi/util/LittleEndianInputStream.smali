.class public Lorg/apache/poi/util/LittleEndianInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field private static final EOF:I = -0x1


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private _read([BII)I
    .locals 3

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    sub-int v1, p3, v0

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p3, v0

    return p3
.end method

.method private static checkEOF(II)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected end-of-file"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "just delegating"
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readByte()B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->_read([BII)I

    move-result p1

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public readInt()I
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v2

    invoke-static {v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readLong()J
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v2

    invoke-static {v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getLong([B)J

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readPlain([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    return-void
.end method

.method public readShort()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v2

    invoke-static {v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([B)S

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readUInt()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUShort()I
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v2

    invoke-static {v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
