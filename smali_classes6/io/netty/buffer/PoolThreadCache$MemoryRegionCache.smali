.class abstract Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MemoryRegionCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allocations:I

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final size:I

.field private final sizeClass:Lio/netty/buffer/PoolArena$SizeClass;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$1;

    invoke-direct {v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method public constructor <init>(ILio/netty/buffer/PoolArena$SizeClass;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result p1

    iput p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size:I

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->newFixedMpscQueue(I)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    iput-object p2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->sizeClass:Lio/netty/buffer/PoolArena$SizeClass;

    return-void
.end method

.method private free(IZ)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;Z)V
    .locals 8

    iget-object v1, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    iget-wide v2, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    iget-object v6, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    iget v4, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->normCapacity:I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recycle()V

    :cond_0
    iget-object v0, v1, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v5, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->sizeClass:Lio/netty/buffer/PoolArena$SizeClass;

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lio/netty/buffer/PoolArena;->freeChunk(Lio/netty/buffer/PoolChunk;JILio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private static newEntry(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JI)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "*>;",
            "Ljava/nio/ByteBuffer;",
            "JI)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;"
        }
    .end annotation

    sget-object v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    iput-object p0, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    iput-object p1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    iput-wide p2, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    iput p4, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->normCapacity:I

    return-object v0
.end method


# virtual methods
.method public final add(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI)Z"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->newEntry(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JI)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    move-result-object p1

    iget-object p2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recycle()V

    :cond_0
    return p2
.end method

.method public final allocate(Lio/netty/buffer/PooledByteBuf;ILio/netty/buffer/PoolThreadCache;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I",
            "Lio/netty/buffer/PoolThreadCache;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v2, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v3, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    iget-wide v4, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->initBuf(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JLio/netty/buffer/PooledByteBuf;ILio/netty/buffer/PoolThreadCache;)V

    invoke-virtual {v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recycle()V

    iget p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    return p2
.end method

.method public final free(Z)I
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free(IZ)I

    move-result p1

    return p1
.end method

.method public abstract initBuf(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JLio/netty/buffer/PooledByteBuf;ILio/netty/buffer/PoolThreadCache;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation
.end method

.method public final trim()V
    .locals 2

    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size:I

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    if-lez v0, :cond_0

    invoke-direct {p0, v0, v1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free(IZ)I

    :cond_0
    return-void
.end method
