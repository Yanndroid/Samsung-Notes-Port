.class final Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;
.super Lio/netty/buffer/ReadOnlyByteBufferBuf;
.source "SourceFile"


# instance fields
.field private final memoryAddress:J


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/buffer/ReadOnlyByteBufferBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lio/netty/buffer/ReadOnlyByteBufferBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->memoryAddress:J

    return-void
.end method

.method private addr(I)J
    .locals 4

    iget-wide v0, p0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->memoryAddress:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public _getByte(I)B
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getByte(J)B

    move-result p1

    return p1
.end method

.method public _getInt(I)I
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getInt(J)I

    move-result p1

    return p1
.end method

.method public _getLong(I)J
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public _getShort(I)S
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShort(J)S

    move-result p1

    return p1
.end method

.method public _getUnsignedMedium(I)I
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMedium(J)I

    move-result p1

    return p1
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 8

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBufferBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v4

    int-to-long v6, p2

    invoke-static/range {v2 .. v7}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 7

    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide p1

    int-to-long v3, p3

    add-long/2addr v3, p1

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p1

    add-int v4, p1, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    :goto_0
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dstIndex: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 7

    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    int-to-long v5, p4

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p3

    const/4 p3, 0x2

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p3

    const-string p2, "dstIndex: %d, length: %d (expected: range(0, %d))"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasMemoryAddress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    iget-wide v0, p0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->memoryAddress:J

    return-wide v0
.end method
