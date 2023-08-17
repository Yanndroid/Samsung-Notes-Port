.class public abstract Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/stream/ImageInputStream;


# static fields
.field private static final BYTE_BUF_LENGTH:I = 0x2000


# instance fields
.field public bitOffset:I

.field public byteBuf:[B

.field public byteOrder:Ljava/nio/ByteOrder;

.field public flushedPos:J

.field private isClosed:Z

.field private markBitStack:Ljava/util/Stack;

.field private markByteStack:Ljava/util/Stack;

.field public streamPos:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->markByteStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->markBitStack:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->isClosed:Z

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    return-void
.end method

.method private toChars([B[CII)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    if-ge v2, p4, :cond_1

    aget-byte v1, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v4, p3, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, p2, v4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    if-ge v2, p4, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int v4, p3, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, p2, v4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private toDoubles([B[DII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    iget-object v2, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-ne v2, v3, :cond_0

    move v2, v7

    :goto_0
    if-ge v7, v1, :cond_1

    aget-byte v3, p1, v2

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v2, 0x4

    aget-byte v11, p1, v11

    add-int/lit8 v12, v2, 0x5

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v2, 0x6

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v2, 0x7

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v8, v9, 0x8

    or-int/2addr v3, v8

    or-int/2addr v3, v10

    shl-int/lit8 v8, v11, 0x18

    shl-int/lit8 v9, v12, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v13, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v14

    int-to-long v9, v3

    shl-long/2addr v9, v6

    int-to-long v11, v8

    and-long/2addr v11, v4

    or-long v8, v9, v11

    add-int v3, p3, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    aput-wide v8, p2, v3

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_1
    if-ge v7, v1, :cond_1

    add-int/lit8 v3, v2, 0x7

    aget-byte v3, p1, v3

    add-int/lit8 v8, v2, 0x6

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v2, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v2, 0x3

    aget-byte v11, p1, v11

    add-int/lit8 v12, v2, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v2, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    aget-byte v14, p1, v2

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v8, v9, 0x8

    or-int/2addr v3, v8

    or-int/2addr v3, v10

    shl-int/lit8 v8, v11, 0x18

    shl-int/lit8 v9, v12, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v13, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v14

    int-to-long v9, v3

    shl-long/2addr v9, v6

    int-to-long v11, v8

    and-long/2addr v11, v4

    or-long v8, v9, v11

    add-int v3, p3, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    aput-wide v8, p2, v3

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private toFloats([B[FII)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    if-ge v2, p4, :cond_1

    aget-byte v1, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v1, v3

    or-int/2addr v1, v5

    add-int v3, p3, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p2, v3

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    if-ge v2, p4, :cond_1

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v1, v3

    or-int/2addr v1, v5

    add-int v3, p3, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p2, v3

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private toInts([B[III)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    if-ge v2, p4, :cond_1

    aget-byte v1, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int v6, p3, v2

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, p2, v6

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    if-ge v2, p4, :cond_1

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    add-int v6, p3, v2

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, p2, v6

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private toLongs([B[JII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    iget-object v2, v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-ne v2, v3, :cond_0

    move v2, v7

    :goto_0
    if-ge v7, v1, :cond_1

    aget-byte v3, p1, v2

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v2, 0x4

    aget-byte v11, p1, v11

    add-int/lit8 v12, v2, 0x5

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v2, 0x6

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v2, 0x7

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v8, v9, 0x8

    or-int/2addr v3, v8

    or-int/2addr v3, v10

    shl-int/lit8 v8, v11, 0x18

    shl-int/lit8 v9, v12, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v13, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v14

    add-int v9, p3, v7

    int-to-long v10, v3

    shl-long/2addr v10, v6

    int-to-long v12, v8

    and-long/2addr v12, v4

    or-long/2addr v10, v12

    aput-wide v10, p2, v9

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_1
    if-ge v7, v1, :cond_1

    add-int/lit8 v3, v2, 0x7

    aget-byte v3, p1, v3

    add-int/lit8 v8, v2, 0x6

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v2, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v2, 0x3

    aget-byte v11, p1, v11

    add-int/lit8 v12, v2, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v2, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    aget-byte v14, p1, v2

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v8, v9, 0x8

    or-int/2addr v3, v8

    or-int/2addr v3, v10

    shl-int/lit8 v8, v11, 0x18

    shl-int/lit8 v9, v12, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v13, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v14

    add-int v9, p3, v7

    int-to-long v10, v3

    shl-long/2addr v10, v6

    int-to-long v12, v8

    and-long/2addr v12, v4

    or-long/2addr v10, v12

    aput-wide v10, p2, v9

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private toShorts([B[SII)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    if-ge v2, p4, :cond_1

    aget-byte v1, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v4, p3, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p2, v4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    if-ge v2, p4, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int v4, p3, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p2, v4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->isClosed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->isClosed:Z

    return-void
.end method

.method public finalize()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->isClosed:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public flush()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    return-void
.end method

.method public flushBefore(J)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "pos > getStreamPosition()!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "pos < flushedPos!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBitOffset()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return v0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public getFlushedPosition()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    return-wide v0
.end method

.method public getStreamPosition()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-wide v0
.end method

.method public isCached()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCachedFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCachedMemory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public mark()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->markByteStack:Ljava/util/Stack;

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->markBitStack:Ljava/util/Stack;

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getBitOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public abstract read()I
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result p1

    return p1
.end method

.method public abstract read([BII)I
.end method

.method public readBit()I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    rsub-int/lit8 v2, v0, 0x8

    shr-int/2addr v1, v2

    :cond_0
    iput v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    and-int/lit8 v0, v1, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readBits(I)J
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-ltz p1, :cond_4

    const/16 v0, 0x40

    if-gt p1, v0, :cond_4

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    return-wide v1

    :cond_0
    iget v3, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    add-int v4, p1, v3

    add-int/2addr v3, p1

    and-int/lit8 v3, v3, 0x7

    :goto_0
    if-lez v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/16 v6, 0x8

    shl-long/2addr v1, v6

    int-to-long v5, v5

    or-long/2addr v1, v5

    add-int/lit8 v4, v4, -0x8

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    :cond_3
    iput v3, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    neg-int v3, v4

    ushr-long/2addr v1, v3

    const-wide/16 v3, -0x1

    sub-int/2addr v0, p1

    ushr-long/2addr v3, v0

    and-long v0, v1, v3

    return-wide v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public readBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readByte()B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;I)V
    .locals 2

    if-ltz p2, :cond_0

    const-string v0, "buf == null!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result p2

    invoke-virtual {p1, v0}, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->setData([B)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->setOffset(I)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->setLength(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "len < 0!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readChar()C
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    :goto_0
    if-lez p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > b.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully([CII)V
    .locals 4

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v2, 0x0

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->toChars([B[CII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > c.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully([DII)V
    .locals 4

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v2, 0x0

    mul-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->toDoubles([B[DII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > d.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully([FII)V
    .locals 4

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v2, 0x0

    mul-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->toFloats([B[FII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > f.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully([III)V
    .locals 4

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v2, 0x0

    mul-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->toInts([B[III)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > i.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully([JII)V
    .locals 4

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v2, 0x0

    mul-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->toLongs([B[JII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > l.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully([SII)V
    .locals 4

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v2, 0x0

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->toShorts([B[SII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off + len > s.length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readInt()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v0, v0, v5

    :goto_0
    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v0, v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v4

    if-eq v4, v2, :cond_1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_0

    int-to-char v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    if-ne v4, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    if-ne v2, v3, :cond_0

    int-to-long v2, v0

    shl-long/2addr v2, v6

    int-to-long v0, v1

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    int-to-long v1, v1

    shl-long/2addr v1, v6

    int-to-long v6, v0

    and-long v3, v6, v4

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public readShort()S
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v0, v0, v3

    :goto_0
    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v0, v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    :try_start_0
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    throw v1
.end method

.method public readUnsignedByte()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedInt()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->markByteStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->markByteStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->markBitStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->setBitOffset(I)V

    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Previous marked position has been discarded!"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seek(J)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "pos < flushedPos!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBitOffset(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitOffset must be betwwen 0 and 7!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public skipBytes(I)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p1, v2

    return p1
.end method

.method public skipBytes(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide p1

    sub-long/2addr p1, v0

    return-wide p1
.end method
