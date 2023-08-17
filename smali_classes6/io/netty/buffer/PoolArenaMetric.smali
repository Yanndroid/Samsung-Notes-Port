.class public interface abstract Lio/netty/buffer/PoolArenaMetric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/SizeClassesMetric;


# virtual methods
.method public abstract chunkLists()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolChunkListMetric;",
            ">;"
        }
    .end annotation
.end method

.method public abstract numActiveAllocations()J
.end method

.method public abstract numActiveBytes()J
.end method

.method public abstract numActiveHugeAllocations()J
.end method

.method public abstract numActiveNormalAllocations()J
.end method

.method public abstract numActiveSmallAllocations()J
.end method

.method public abstract numActiveTinyAllocations()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract numAllocations()J
.end method

.method public abstract numChunkLists()I
.end method

.method public abstract numDeallocations()J
.end method

.method public abstract numHugeAllocations()J
.end method

.method public abstract numHugeDeallocations()J
.end method

.method public abstract numNormalAllocations()J
.end method

.method public abstract numNormalDeallocations()J
.end method

.method public abstract numSmallAllocations()J
.end method

.method public abstract numSmallDeallocations()J
.end method

.method public abstract numSmallSubpages()I
.end method

.method public abstract numThreadCaches()I
.end method

.method public abstract numTinyAllocations()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract numTinyDeallocations()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract numTinySubpages()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract smallSubpages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tinySubpages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
