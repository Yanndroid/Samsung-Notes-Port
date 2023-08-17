.class public final Lio/netty/buffer/PooledByteBufAllocatorMetric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocatorMetric;


# instance fields
.field private final allocator:Lio/netty/buffer/PooledByteBufAllocator;


# direct methods
.method public constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    return-void
.end method


# virtual methods
.method public chunkSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize()I

    move-result v0

    return v0
.end method

.method public directArenas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->directArenas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public heapArenas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public normalCacheSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize()I

    move-result v0

    return v0
.end method

.method public numDirectArenas()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->numDirectArenas()I

    move-result v0

    return v0
.end method

.method public numHeapArenas()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->numHeapArenas()I

    move-result v0

    return v0
.end method

.method public numThreadLocalCaches()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->numThreadLocalCaches()I

    move-result v0

    return v0
.end method

.method public smallCacheSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize()I

    move-result v0

    return v0
.end method

.method public tinyCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(usedHeapMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocatorMetric;->usedHeapMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; usedDirectMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocatorMetric;->usedDirectMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; numHeapArenas: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocatorMetric;->numHeapArenas()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; numDirectArenas: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocatorMetric;->numDirectArenas()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; smallCacheSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocatorMetric;->smallCacheSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; normalCacheSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocatorMetric;->normalCacheSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; numThreadLocalCaches: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocatorMetric;->numThreadLocalCaches()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; chunkSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocatorMetric;->chunkSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usedDirectMemory()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->usedDirectMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public usedHeapMemory()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocatorMetric;->allocator:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->usedHeapMemory()J

    move-result-wide v0

    return-wide v0
.end method
