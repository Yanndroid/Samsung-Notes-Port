.class abstract Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;
.super Lio/netty/buffer/SwappedByteBuf;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final nativeByteOrder:Z

.field private final wrapped:Lio/netty/buffer/AbstractByteBuf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/AbstractByteBuf;)V
    .locals 4

    invoke-direct {p0, p1}, Lio/netty/buffer/SwappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    iput-object p1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    sget-boolean p1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    invoke-virtual {p0}, Lio/netty/buffer/SwappedByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    return-void
.end method


# virtual methods
.method public abstract _getInt(Lio/netty/buffer/AbstractByteBuf;I)I
.end method

.method public abstract _getLong(Lio/netty/buffer/AbstractByteBuf;I)J
.end method

.method public abstract _getShort(Lio/netty/buffer/AbstractByteBuf;I)S
.end method

.method public abstract _setInt(Lio/netty/buffer/AbstractByteBuf;II)V
.end method

.method public abstract _setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V
.end method

.method public abstract _setShort(Lio/netty/buffer/AbstractByteBuf;IS)V
.end method

.method public final getChar(I)C
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getShort(I)S

    move-result p1

    int-to-char p1, p1

    return p1
.end method

.method public final getDouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat(I)F
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final getInt(I)I
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_getInt(Lio/netty/buffer/AbstractByteBuf;I)I

    move-result p1

    iget-boolean v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getLong(I)J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_getLong(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide v0

    iget-boolean p1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getShort(I)S
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_getShort(Lio/netty/buffer/AbstractByteBuf;I)S

    move-result p1

    iget-boolean v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :goto_0
    return p1
.end method

.method public final getUnsignedInt(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final getUnsignedShort(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public final setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public final setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public final setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget-boolean v1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setInt(Lio/netty/buffer/AbstractByteBuf;II)V

    return-object p0
.end method

.method public final setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget-boolean v1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :goto_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V

    return-object p0
.end method

.method public final setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget-boolean v1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    int-to-short p2, p2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setShort(Lio/netty/buffer/AbstractByteBuf;IS)V

    return-object p0
.end method

.method public final writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public final writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public final writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public final writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 4

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget-boolean v3, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setInt(Lio/netty/buffer/AbstractByteBuf;II)V

    iget-object p1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v0, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v0, v1

    iput v0, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return-object p0
.end method

.method public final writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 4

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget-boolean v3, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_0
    invoke-virtual {p0, v0, v2, p1, p2}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V

    iget-object p1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget p2, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr p2, v1

    iput p2, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return-object p0
.end method

.method public final writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 4

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget-boolean v3, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    int-to-short p1, p1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setShort(Lio/netty/buffer/AbstractByteBuf;IS)V

    iget-object p1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v0, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v0, v1

    iput v0, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return-object p0
.end method
