.class public final Lio/netty/buffer/UnpooledByteBufAllocator;
.super Lio/netty/buffer/AbstractByteBufAllocator;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocatorMetricProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledDirectByteBuf;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeHeapByteBuf;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;


# instance fields
.field private final disableLeakDetector:Z

.field private final metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

.field private final noCleaner:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnpooledByteBufAllocator;-><init>(Z)V

    sput-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;-><init>(Z)V

    new-instance p1, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator$1;)V

    iput-object p1, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iput-boolean p2, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->disableLeakDetector:Z

    if-eqz p3, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasDirectBufferNoCleanerConstructor()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->noCleaner:Z

    return-void
.end method


# virtual methods
.method public compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    new-instance v0, Lio/netty/buffer/CompositeByteBuf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI)V

    iget-boolean p1, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->disableLeakDetector:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/CompositeByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    new-instance v0, Lio/netty/buffer/CompositeByteBuf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI)V

    iget-boolean p1, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->disableLeakDetector:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/CompositeByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public decrementDirect(I)V
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iget-object v0, v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;->directCounter:Lio/netty/util/internal/LongCounter;

    neg-int p1, p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    return-void
.end method

.method public decrementHeap(I)V
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iget-object v0, v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;->heapCounter:Lio/netty/util/internal/LongCounter;

    neg-int p1, p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    return-void
.end method

.method public incrementDirect(I)V
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iget-object v0, v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;->directCounter:Lio/netty/util/internal/LongCounter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    return-void
.end method

.method public incrementHeap(I)V
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iget-object v0, v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;->heapCounter:Lio/netty/util/internal/LongCounter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    return-void
.end method

.method public isDirectBufferPooled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public metric()Lio/netty/buffer/ByteBufAllocatorMetric;
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    return-object v0
.end method

.method public newDirectBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->noCleaner:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledDirectByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    :goto_0
    iget-boolean p1, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->disableLeakDetector:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public newHeapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeHeapByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    :goto_0
    return-object v0
.end method
