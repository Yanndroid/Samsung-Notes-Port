.class public abstract Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;
.super Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final flushBits()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    iput v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    const/4 v2, -0x1

    rsub-int/lit8 v0, v0, 0x8

    shl-int v0, v2, v0

    and-int v2, v1, v0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    :cond_1
    return-void
.end method

.method public abstract write(I)V
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public abstract write([BII)V
.end method

.method public writeBit(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeBits(JI)V

    return-void
.end method

.method public writeBits(JI)V
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-ltz p3, :cond_a

    const/16 v0, 0x40

    if-gt p3, v0, :cond_a

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    const/16 v5, 0x8

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    if-lez v0, :cond_4

    :cond_1
    iget v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v6

    if-eq v6, v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {p0, v7, v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    add-int v7, p3, v0

    if-ge v7, v5, :cond_3

    rsub-int/lit8 v0, v7, 0x8

    rsub-int/lit8 p3, p3, 0x20

    ushr-int p3, v4, p3

    shl-int v8, p3, v0

    not-int v8, v8

    and-int/2addr v6, v8

    int-to-long v8, v6

    int-to-long v10, p3

    and-long/2addr v10, p1

    shl-long/2addr v10, v0

    or-long/2addr v8, v10

    long-to-int p3, v8

    invoke-virtual {p0, p3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {p0, v8, v9}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    iput v7, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    move p3, v1

    goto :goto_1

    :cond_3
    rsub-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v7, v0, 0x20

    ushr-int v7, v4, v7

    not-int v8, v7

    and-int/2addr v6, v8

    int-to-long v8, v6

    sub-int/2addr p3, v0

    shr-long v10, p1, p3

    int-to-long v6, v7

    and-long/2addr v6, v10

    or-long/2addr v6, v8

    long-to-int v0, v6

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    :cond_4
    :goto_1
    const/4 v0, 0x7

    if-le p3, v0, :cond_7

    rem-int/lit8 v0, p3, 0x8

    div-int/lit8 p3, p3, 0x8

    :goto_2
    if-lez p3, :cond_6

    add-int/lit8 v6, p3, -0x1

    mul-int/2addr v6, v5

    add-int/2addr v6, v0

    const-wide/16 v7, 0xff

    if-nez v6, :cond_5

    and-long v6, p1, v7

    goto :goto_3

    :cond_5
    shr-long v9, p1, v6

    and-long v6, v9, v7

    :goto_3
    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_6
    move p3, v0

    :cond_7
    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    move v1, v0

    :cond_8
    rsub-int/lit8 v0, p3, 0x8

    rsub-int/lit8 v5, p3, 0x20

    ushr-int/2addr v4, v5

    shl-int v5, v4, v0

    not-int v5, v5

    and-int/2addr v1, v5

    int-to-long v5, v1

    int-to-long v7, v4

    and-long/2addr p1, v7

    shl-long/2addr p1, v0

    or-long/2addr p1, v5

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    iput p3, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad value for numBits!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBoolean(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    return-void
.end method

.method public writeByte(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeChar(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    move v3, v5

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v4

    add-int/lit8 v4, v7, 0x1

    ushr-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v8, v6, 0x0

    int-to-byte v8, v8

    aput-byte v8, v2, v4

    add-int/lit8 v4, v7, 0x1

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v5, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public writeChars([CII)V
    .locals 8

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    mul-int/lit8 v0, p3, 0x2

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    aget-char v5, p1, v5

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    move v3, v2

    :goto_1
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    aget-char v5, p1, v5

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x0

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > c.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDouble(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeLong(J)V

    return-void
.end method

.method public writeDoubles([DII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    if-ltz p2, :cond_2

    if-ltz v2, :cond_2

    add-int v3, p2, v2

    array-length v4, v1

    if-gt v3, v4, :cond_2

    if-ltz v3, :cond_2

    mul-int/lit8 v3, v2, 0x8

    new-array v4, v3, [B

    iget-object v5, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v7, 0x38

    const/16 v8, 0x30

    const/16 v9, 0x28

    const/16 v10, 0x20

    const/16 v11, 0x18

    const/16 v12, 0x10

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    add-int v15, p2, v5

    aget-wide v15, v1, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v15

    add-int/lit8 v17, v6, 0x1

    ushr-long v13, v15, v7

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v4, v6

    add-int/lit8 v6, v17, 0x1

    ushr-long v13, v15, v8

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v4, v17

    add-int/lit8 v13, v6, 0x1

    ushr-long v7, v15, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v13, 0x1

    ushr-long v7, v15, v10

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v13

    add-int/lit8 v7, v6, 0x1

    ushr-long v9, v15, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v7, 0x1

    ushr-long v9, v15, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    add-int/lit8 v7, v6, 0x1

    const/16 v9, 0x8

    ushr-long v13, v15, v9

    long-to-int v9, v13

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v7, 0x1

    const/4 v9, 0x0

    ushr-long v13, v15, v9

    long-to-int v9, v13

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x38

    const/16 v8, 0x30

    const/16 v9, 0x28

    const/16 v10, 0x20

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_1

    add-int v6, p2, v9

    aget-wide v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-int/lit8 v13, v5, 0x1

    move/from16 v16, v9

    const/4 v14, 0x0

    ushr-long v8, v6, v14

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    add-int/lit8 v5, v13, 0x1

    const/16 v8, 0x8

    ushr-long v10, v6, v8

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v13

    add-int/lit8 v10, v5, 0x1

    ushr-long v8, v6, v12

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    add-int/lit8 v5, v10, 0x1

    const/16 v8, 0x18

    ushr-long v12, v6, v8

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    add-int/lit8 v10, v5, 0x1

    const/16 v11, 0x20

    ushr-long v12, v6, v11

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    add-int/lit8 v5, v10, 0x1

    const/16 v12, 0x28

    ushr-long v8, v6, v12

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v10

    add-int/lit8 v8, v5, 0x1

    const/16 v9, 0x30

    ushr-long v11, v6, v9

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v4, v5

    add-int/lit8 v5, v8, 0x1

    const/16 v11, 0x38

    ushr-long/2addr v6, v11

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v8

    add-int/lit8 v6, v16, 0x1

    move v9, v6

    const/16 v11, 0x18

    const/16 v12, 0x10

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "off < 0 || len < 0 || off + len > d.length!"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeFloat(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    return-void
.end method

.method public writeFloats([FII)V
    .locals 8

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    mul-int/lit8 v0, p3, 0x4

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    move v3, v2

    :goto_1
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    aget v5, p1, v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x0

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > f.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    ushr-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v5, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public writeInts([III)V
    .locals 8

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    mul-int/lit8 v0, p3, 0x4

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    aget v5, p1, v5

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    move v3, v2

    :goto_1
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    aget v5, p1, v5

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x0

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > i.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLong(J)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x38

    const/16 v5, 0x30

    const/16 v7, 0x28

    const/4 v8, 0x5

    const/16 v9, 0x20

    const/16 v10, 0x18

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/16 v14, 0x8

    const/4 v15, 0x1

    const/4 v4, 0x4

    const/4 v6, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    ushr-long v2, p1, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    ushr-long v2, p1, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v15

    ushr-long v2, p1, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    ushr-long v2, p1, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    ushr-long v2, p1, v10

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    ushr-long v2, p1, v12

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    ushr-long v2, p1, v14

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    ushr-long v2, p1, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    ushr-long v7, p1, v6

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    ushr-long v7, p1, v14

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v15

    ushr-long v7, p1, v12

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v13

    ushr-long v7, p1, v10

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v11

    ushr-long v7, p1, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    const/16 v2, 0x28

    ushr-long v7, p1, v2

    long-to-int v2, v7

    int-to-byte v2, v2

    const/4 v7, 0x5

    aput-byte v2, v1, v7

    ushr-long v7, p1, v5

    long-to-int v2, v7

    int-to-byte v2, v2

    const/4 v5, 0x6

    aput-byte v2, v1, v5

    ushr-long v2, p1, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    :goto_0
    iget-object v1, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-virtual {v0, v1, v6, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    iget-object v1, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-virtual {v0, v1, v4, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public writeLongs([JII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    if-ltz p2, :cond_2

    if-ltz v2, :cond_2

    add-int v3, p2, v2

    array-length v4, v1

    if-gt v3, v4, :cond_2

    if-ltz v3, :cond_2

    mul-int/lit8 v3, v2, 0x8

    new-array v4, v3, [B

    iget-object v5, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v7, 0x38

    const/16 v8, 0x30

    const/16 v9, 0x28

    const/16 v10, 0x20

    const/16 v11, 0x18

    const/16 v12, 0x10

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    add-int v15, p2, v5

    aget-wide v15, v1, v15

    add-int/lit8 v17, v6, 0x1

    ushr-long v13, v15, v7

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v4, v6

    add-int/lit8 v6, v17, 0x1

    ushr-long v13, v15, v8

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v4, v17

    add-int/lit8 v13, v6, 0x1

    ushr-long v7, v15, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v13, 0x1

    ushr-long v7, v15, v10

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v13

    add-int/lit8 v7, v6, 0x1

    ushr-long v9, v15, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v7, 0x1

    ushr-long v9, v15, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    add-int/lit8 v7, v6, 0x1

    const/16 v9, 0x8

    ushr-long v13, v15, v9

    long-to-int v9, v13

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v7, 0x1

    const/4 v9, 0x0

    ushr-long v13, v15, v9

    long-to-int v9, v13

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x38

    const/16 v8, 0x30

    const/16 v9, 0x28

    const/16 v10, 0x20

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_1

    add-int v6, p2, v9

    aget-wide v6, v1, v6

    add-int/lit8 v13, v5, 0x1

    move/from16 v16, v9

    const/4 v14, 0x0

    ushr-long v8, v6, v14

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    add-int/lit8 v5, v13, 0x1

    const/16 v8, 0x8

    ushr-long v10, v6, v8

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v13

    add-int/lit8 v10, v5, 0x1

    ushr-long v8, v6, v12

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    add-int/lit8 v5, v10, 0x1

    const/16 v8, 0x18

    ushr-long v12, v6, v8

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    add-int/lit8 v10, v5, 0x1

    const/16 v11, 0x20

    ushr-long v12, v6, v11

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    add-int/lit8 v5, v10, 0x1

    const/16 v12, 0x28

    ushr-long v8, v6, v12

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v10

    add-int/lit8 v8, v5, 0x1

    const/16 v9, 0x30

    ushr-long v11, v6, v9

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v4, v5

    add-int/lit8 v5, v8, 0x1

    const/16 v11, 0x38

    ushr-long/2addr v6, v11

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v8

    add-int/lit8 v6, v16, 0x1

    move v9, v6

    const/16 v11, 0x18

    const/16 v12, 0x10

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "off < 0 || len < 0 || off + len > l.length!"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeShort(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    ushr-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public writeShorts([SII)V
    .locals 8

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    mul-int/lit8 v0, p3, 0x2

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    aget-short v5, p1, v5

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    move v3, v2

    :goto_1
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    aget-short v5, p1, v5

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v7, v5, 0x0

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > s.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    move p1, v2

    move v3, p1

    :goto_0
    const/16 v4, 0x7f

    const/16 v5, 0x7ff

    const/4 v6, 0x1

    if-ge p1, v0, :cond_2

    aget-char v7, v1, p1

    if-lt v7, v6, :cond_0

    if-gt v7, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-le v7, v5, :cond_1

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const p1, 0xffff

    if-gt v3, p1, :cond_6

    add-int/lit8 p1, v3, 0x2

    new-array v7, p1, [B

    ushr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    ushr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v7, v6

    const/4 v3, 0x2

    move v8, v2

    :goto_2
    if-ge v8, v0, :cond_5

    aget-char v9, v1, v8

    if-lt v9, v6, :cond_3

    if-gt v9, v4, :cond_3

    add-int/lit8 v10, v3, 0x1

    int-to-byte v9, v9

    aput-byte v9, v7, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v3, 0x1

    if-le v9, v5, :cond_4

    shr-int/lit8 v11, v9, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v7, v3

    add-int/lit8 v3, v10, 0x1

    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    add-int/lit8 v10, v3, 0x1

    shr-int/lit8 v9, v9, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v3

    :goto_3
    move v3, v10

    goto :goto_4

    :cond_4
    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v7, v3

    add-int/lit8 v3, v10, 0x1

    shr-int/lit8 v9, v9, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v10

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v7, v2, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void

    :cond_6
    new-instance p1, Ljava/io/UTFDataFormatException;

    const-string/jumbo v0, "utflen > 65536!"

    invoke-direct {p1, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
