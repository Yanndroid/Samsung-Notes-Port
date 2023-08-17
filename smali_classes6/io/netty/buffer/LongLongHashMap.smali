.class final Lio/netty/buffer/LongLongHashMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MASK_TEMPLATE:I = -0x2


# instance fields
.field private array:[J

.field private final emptyVal:J

.field private mask:I

.field private maxProbe:I

.field private zeroVal:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->emptyVal:J

    iput-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    const/16 p1, 0x20

    new-array p1, p1, [J

    iput-object p1, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    const/16 p1, 0x1f

    iput p1, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    invoke-direct {p0}, Lio/netty/buffer/LongLongHashMap;->computeMaskAndProbe()V

    return-void
.end method

.method private computeMaskAndProbe()V
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    return-void
.end method

.method private expand()V
    .locals 6

    iget-object v0, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    iput-object v1, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    invoke-direct {p0}, Lio/netty/buffer/LongLongHashMap;->computeMaskAndProbe()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget-wide v4, v0, v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lio/netty/buffer/LongLongHashMap;->put(JJ)J

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private index(J)I
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p1, v0

    xor-long/2addr p1, v1

    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p1, v1

    ushr-long v1, p1, v0

    xor-long/2addr p1, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p1, v1

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    long-to-int p1, p1

    iget p2, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public get(J)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    return-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/LongLongHashMap;->index(J)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aget-wide v3, v2, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-wide p1, v2, v0

    return-wide p1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->emptyVal:J

    return-wide p1
.end method

.method public put(JJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    iput-wide p3, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    return-wide p1

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/LongLongHashMap;->index(J)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aget-wide v5, v4, v2

    cmp-long v7, v5, p1

    if-eqz v7, :cond_2

    cmp-long v7, v5, v0

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x2

    iget v4, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    cmp-long v5, v5, v0

    if-nez v5, :cond_3

    iget-wide v5, p0, Lio/netty/buffer/LongLongHashMap;->emptyVal:J

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v2, 0x1

    aget-wide v5, v4, v5

    :goto_3
    aput-wide p1, v4, v2

    add-int/lit8 v7, v2, 0x1

    aput-wide p3, v4, v7

    :goto_4
    iget p3, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    if-ge v3, p3, :cond_5

    add-int/lit8 v2, v2, 0x2

    iget p3, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int/2addr v2, p3

    iget-object p3, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aget-wide v7, p3, v2

    cmp-long p4, v7, p1

    if-nez p4, :cond_4

    aput-wide v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, p3, v2

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-wide v5

    :cond_6
    invoke-direct {p0}, Lio/netty/buffer/LongLongHashMap;->expand()V

    goto :goto_0
.end method

.method public remove(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->emptyVal:J

    iput-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/LongLongHashMap;->index(J)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aget-wide v5, v4, v2

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    aput-wide v0, v4, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    iget v4, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
