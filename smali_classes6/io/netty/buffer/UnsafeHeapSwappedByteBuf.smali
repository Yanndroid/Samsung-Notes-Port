.class final Lio/netty/buffer/UnsafeHeapSwappedByteBuf;
.super Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/netty/buffer/AbstractByteBuf;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-void
.end method

.method private static idx(Lio/netty/buffer/ByteBuf;I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public _getInt(Lio/netty/buffer/AbstractByteBuf;I)I
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result p1

    invoke-static {v0, p1}, Lio/netty/util/internal/PlatformDependent;->getInt([BI)I

    move-result p1

    return p1
.end method

.method public _getLong(Lio/netty/buffer/AbstractByteBuf;I)J
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result p1

    invoke-static {v0, p1}, Lio/netty/util/internal/PlatformDependent;->getLong([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method public _getShort(Lio/netty/buffer/AbstractByteBuf;I)S
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result p1

    invoke-static {v0, p1}, Lio/netty/util/internal/PlatformDependent;->getShort([BI)S

    move-result p1

    return p1
.end method

.method public _setInt(Lio/netty/buffer/AbstractByteBuf;II)V
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result p1

    invoke-static {v0, p1, p3}, Lio/netty/util/internal/PlatformDependent;->putInt([BII)V

    return-void
.end method

.method public _setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result p1

    invoke-static {v0, p1, p3, p4}, Lio/netty/util/internal/PlatformDependent;->putLong([BIJ)V

    return-void
.end method

.method public _setShort(Lio/netty/buffer/AbstractByteBuf;IS)V
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result p1

    invoke-static {v0, p1, p3}, Lio/netty/util/internal/PlatformDependent;->putShort([BIS)V

    return-void
.end method
