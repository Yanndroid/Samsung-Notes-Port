.class public Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field public static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public checkPosition(I)V
    .locals 2

    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Buffer overrun"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReadIndex()I
    .locals 1

    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return v0
.end method

.method public readByte()B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    return-void
.end method

.method public readFully([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    return-void
.end method

.method public readInt()I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    const-wide/16 v1, 0x4

    invoke-super {p0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return v0
.end method

.method public readLong()J
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    invoke-super {p0, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    return-void
.end method

.method public readShort()S
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    const-wide/16 v1, 0x2

    invoke-super {p0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return v0
.end method

.method public readUByte()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUInt()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUShort()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setReadIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
