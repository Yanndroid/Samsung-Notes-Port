.class public Lio/netty/buffer/SlicedByteBuf;
.super Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private length:I


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic array()[B
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic arrayOffset()I
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    iget v0, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    return v0
.end method

.method public bridge synthetic capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->capacity(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forEachByte(IILio/netty/util/ByteProcessor;)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic forEachByteDesc(IILio/netty/util/ByteProcessor;)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getByte(I)B
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getByte(I)B

    move-result p1

    return p1
.end method

.method public bridge synthetic getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 0

    invoke-super/range {p0 .. p5}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getInt(I)I
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getInt(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getIntLE(I)I
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getIntLE(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getLong(I)J
    .locals 2

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLongLE(I)J
    .locals 2

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getShort(I)S
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getShort(I)S

    move-result p1

    return p1
.end method

.method public bridge synthetic getShortLE(I)S
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getShortLE(I)S

    move-result p1

    return p1
.end method

.method public bridge synthetic getUnsignedMedium(I)I
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getUnsignedMedium(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getUnsignedMediumLE(I)I
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->getUnsignedMediumLE(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic hasArray()Z
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->hasArray()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasMemoryAddress()Z
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0
.end method

.method public final initLength(I)V
    .locals 0

    iput p1, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    return-void
.end method

.method public bridge synthetic isDirect()Z
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->isDirect()Z

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 1

    iget v0, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    return v0
.end method

.method public bridge synthetic memoryAddress()J
    .locals 2

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic nioBufferCount()I
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic order()Ljava/nio/ByteOrder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILjava/io/InputStream;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 0

    invoke-super/range {p0 .. p5}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
