.class public Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

.field public static final DEFAULT_303_CACHING_ENABLED:Z = false

.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_CORE:I = 0x1

.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_MAX:I = 0x1

.field public static final DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS:I = 0x3c

.field public static final DEFAULT_HEURISTIC_CACHING_ENABLED:Z = false

.field public static final DEFAULT_HEURISTIC_COEFFICIENT:F = 0.1f

.field public static final DEFAULT_HEURISTIC_LIFETIME:J = 0x0L

.field public static final DEFAULT_MAX_CACHE_ENTRIES:I = 0x3e8

.field public static final DEFAULT_MAX_OBJECT_SIZE_BYTES:I = 0x2000

.field public static final DEFAULT_MAX_UPDATE_RETRIES:I = 0x1

.field public static final DEFAULT_REVALIDATION_QUEUE_SIZE:I = 0x64

.field public static final DEFAULT_WEAK_ETAG_ON_PUTDELETE_ALLOWED:Z = false


# instance fields
.field private final allow303Caching:Z

.field private asynchronousWorkerIdleLifetimeSecs:I

.field private asynchronousWorkersCore:I

.field private asynchronousWorkersMax:I

.field private heuristicCachingEnabled:Z

.field private heuristicCoefficient:F

.field private heuristicDefaultLifetime:J

.field private isSharedCache:Z

.field private maxCacheEntries:I

.field private maxObjectSize:J

.field private maxUpdateRetries:I

.field private neverCacheHTTP10ResponsesWithQuery:Z

.field private revalidationQueueSize:I

.field private final weakETagOnPutDeleteAllowed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->build()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2000

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    const/4 v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->allow303Caching:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->weakETagOnPutDeleteAllowed:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    const/16 v0, 0x3c

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    const/16 v0, 0x64

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return-void
.end method

.method public constructor <init>(JIIZZZFJZIIIIZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    move v1, p3

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    move v1, p4

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    move v1, p5

    iput-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->allow303Caching:Z

    move v1, p6

    iput-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->weakETagOnPutDeleteAllowed:Z

    move v1, p7

    iput-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    move v1, p8

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    move-wide v1, p9

    iput-wide v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    move v1, p11

    iput-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    move v1, p12

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    move/from16 v1, p13

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    move/from16 v1, p14

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    move/from16 v1, p15

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return-void
.end method

.method public static copy(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 3

    const-string v0, "Cache config"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setMaxObjectSize(J)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxCacheEntries()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setMaxCacheEntries(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxUpdateRetries()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setMaxUpdateRetries(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setHeuristicCachingEnabled(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setHeuristicCoefficient(F)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setHeuristicDefaultLifetime(J)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setSharedCache(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setAsynchronousWorkersMax(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersCore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setAsynchronousWorkersCore(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkerIdleLifetimeSecs()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setAsynchronousWorkerIdleLifetimeSecs(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getRevalidationQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setRevalidationQueueSize(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isNeverCacheHTTP10ResponsesWithQuery()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setNeverCacheHTTP10ResponsesWithQueryString(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clone()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->clone()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAsynchronousWorkerIdleLifetimeSecs()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    return v0
.end method

.method public getAsynchronousWorkersCore()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    return v0
.end method

.method public getAsynchronousWorkersMax()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    return v0
.end method

.method public getHeuristicCoefficient()F
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    return v0
.end method

.method public getHeuristicDefaultLifetime()J
    .locals 2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    return-wide v0
.end method

.method public getMaxCacheEntries()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    return v0
.end method

.method public getMaxObjectSize()J
    .locals 2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    return-wide v0
.end method

.method public getMaxObjectSizeBytes()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMaxUpdateRetries()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    return v0
.end method

.method public getRevalidationQueueSize()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return v0
.end method

.method public is303CachingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->allow303Caching:Z

    return v0
.end method

.method public isHeuristicCachingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    return v0
.end method

.method public isNeverCacheHTTP10ResponsesWithQuery()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->neverCacheHTTP10ResponsesWithQuery:Z

    return v0
.end method

.method public isSharedCache()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    return v0
.end method

.method public isWeakETagOnPutDeleteAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->weakETagOnPutDeleteAllowed:Z

    return v0
.end method

.method public setAsynchronousWorkerIdleLifetimeSecs(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    return-void
.end method

.method public setAsynchronousWorkersCore(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    return-void
.end method

.method public setAsynchronousWorkersMax(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    return-void
.end method

.method public setHeuristicCachingEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    return-void
.end method

.method public setHeuristicCoefficient(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    return-void
.end method

.method public setHeuristicDefaultLifetime(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    return-void
.end method

.method public setMaxCacheEntries(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    return-void
.end method

.method public setMaxObjectSize(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    return-void
.end method

.method public setMaxObjectSizeBytes(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7fffffff

    if-le p1, v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    :goto_0
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    return-void
.end method

.method public setMaxUpdateRetries(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    return-void
.end method

.method public setRevalidationQueueSize(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return-void
.end method

.method public setSharedCache(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[maxObjectSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxCacheEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxUpdateRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 303CachingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->allow303Caching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", weakETagOnPutDeleteAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->weakETagOnPutDeleteAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", heuristicCachingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", heuristicCoefficient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", heuristicDefaultLifetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSharedCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", asynchronousWorkersMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asynchronousWorkersCore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asynchronousWorkerIdleLifetimeSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", revalidationQueueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", neverCacheHTTP10ResponsesWithQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->neverCacheHTTP10ResponsesWithQuery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
