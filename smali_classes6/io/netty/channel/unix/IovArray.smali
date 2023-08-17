.class public final Lio/netty/channel/unix/IovArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final ADDRESS_SIZE:I

.field public static final IOV_SIZE:I

.field private static final MAX_CAPACITY:I


# instance fields
.field private count:I

.field private maxBytes:J

.field private final memory:Lio/netty/buffer/ByteBuf;

.field private final memoryAddress:J

.field private size:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/netty/channel/unix/Buffer;->addressSize()I

    move-result v0

    sput v0, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    sget v1, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    mul-int/2addr v1, v0

    sput v1, Lio/netty/channel/unix/IovArray;->MAX_CAPACITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget v0, Lio/netty/channel/unix/IovArray;->MAX_CAPACITY:I

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/unix/IovArray;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_1

    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    return-void
.end method

.method private add(JJI)Z
    .locals 7

    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    int-to-long v2, p5

    sub-long/2addr v0, v2

    iget-wide v4, p0, Lio/netty/channel/unix/IovArray;->size:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    iget v1, p0, Lio/netty/channel/unix/IovArray;->count:I

    add-int/lit8 v4, v1, 0x1

    sget v5, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    mul-int/2addr v4, v5

    if-ge v0, v4, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-static {v1}, Lio/netty/channel/unix/IovArray;->idx(I)I

    move-result v0

    sget v1, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    add-int v4, v0, v1

    iget-wide v5, p0, Lio/netty/channel/unix/IovArray;->size:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lio/netty/channel/unix/IovArray;->size:J

    iget v5, p0, Lio/netty/channel/unix/IovArray;->count:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lio/netty/channel/unix/IovArray;->count:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_4

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result p5

    if-eqz p5, :cond_3

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-static {v0, v1, p3, p4}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    int-to-long p3, v4

    add-long/2addr p3, p1

    invoke-static {p3, p4, v2, v3}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v0, p3, p4}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    iget-object p1, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v4, v2, v3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_4
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v1

    if-eqz v1, :cond_5

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p3, p3

    invoke-static {v0, v1, p3}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    int-to-long p3, v4

    add-long/2addr p3, p1

    invoke-static {p3, p4, p5}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    long-to-int p2, p3

    invoke-virtual {p1, v0, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    iget-object p1, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v4, p5}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    :goto_0
    return v6
.end method

.method private static idx(I)I
    .locals 1

    sget v0, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    mul-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public add(Lio/netty/buffer/ByteBuf;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    move-result p1

    return p1
.end method

.method public add(Lio/netty/buffer/ByteBuf;II)Z
    .locals 11

    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    sget v1, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long p1, p2

    add-long v4, v0, p1

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/netty/channel/unix/IovArray;->add(JJI)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1, p2, p3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v1, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    invoke-static {p1}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v3, p1

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/unix/IovArray;->add(JJI)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1, p2, p3}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    array-length p2, p1

    move p3, v2

    :goto_0
    if-ge p3, p2, :cond_6

    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-eqz v8, :cond_5

    iget-wide v4, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v9, v0

    add-long/2addr v6, v9

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/netty/channel/unix/IovArray;->add(JJI)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    sget v3, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    if-ne v0, v3, :cond_5

    :cond_4
    return v2

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->size:J

    return-void
.end method

.method public count()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    return v0
.end method

.method public maxBytes()J
    .locals 2

    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    return-wide v0
.end method

.method public maxBytes(J)V
    .locals 3

    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    const-string v2, "maxBytes"

    invoke-static {p1, p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    return-void
.end method

.method public memoryAddress(I)J
    .locals 4

    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    invoke-static {p1}, Lio/netty/channel/unix/IovArray;->idx(I)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public processMessage(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->size:J

    return-wide v0
.end method
