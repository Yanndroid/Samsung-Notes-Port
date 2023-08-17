.class final Lio/netty/buffer/LongPriorityQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_VALUE:I = -0x1


# instance fields
.field private array:[J

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    return-void
.end method

.method private lift(I)V
    .locals 2

    :goto_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/LongPriorityQueue;->subord(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/LongPriorityQueue;->swap(II)V

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sink(I)V
    .locals 3

    :goto_0
    shl-int/lit8 v0, p1, 0x1

    iget v1, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    if-gt v0, v1, :cond_2

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/buffer/LongPriorityQueue;->subord(II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, p1, v0}, Lio/netty/buffer/LongPriorityQueue;->subord(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v0}, Lio/netty/buffer/LongPriorityQueue;->swap(II)V

    move p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private subord(II)Z
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    aget-wide v1, v0, p1

    aget-wide p1, v0, p2

    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private swap(II)V
    .locals 5

    iget-object v0, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    aget-wide v1, v0, p1

    aget-wide v3, v0, p2

    aput-wide v3, v0, p1

    aput-wide v1, v0, p2

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    iget-object v1, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    iget v1, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    aput-wide p1, v0, v1

    invoke-direct {p0, v1}, Lio/netty/buffer/LongPriorityQueue;->lift(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The NO_VALUE (-1) cannot be added to the queue."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peek()J
    .locals 3

    iget v0, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public poll()J
    .locals 7

    iget v0, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v1, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    aget-wide v5, v1, v0

    aput-wide v5, v1, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v1, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    invoke-direct {p0, v2}, Lio/netty/buffer/LongPriorityQueue;->sink(I)V

    return-wide v3
.end method

.method public remove(J)V
    .locals 5

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    if-gt v0, v1, :cond_1

    iget-object v2, p0, Lio/netty/buffer/LongPriorityQueue;->array:[J

    aget-wide v3, v2, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    add-int/lit8 p1, v1, -0x1

    iput p1, p0, Lio/netty/buffer/LongPriorityQueue;->size:I

    aget-wide p1, v2, v1

    aput-wide p1, v2, v0

    invoke-direct {p0, v0}, Lio/netty/buffer/LongPriorityQueue;->lift(I)V

    invoke-direct {p0, v0}, Lio/netty/buffer/LongPriorityQueue;->sink(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
