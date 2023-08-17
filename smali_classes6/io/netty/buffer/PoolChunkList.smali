.class final Lio/netty/buffer/PoolChunkList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/PoolChunkListMetric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolChunkListMetric;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_METRICS:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/PoolChunkMetric;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final freeMaxThreshold:I

.field private final freeMinThreshold:I

.field private head:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final maxCapacity:I

.field private final maxUsage:I

.field private final minUsage:I

.field private final nextList:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prevList:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/buffer/PoolChunkList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolChunkList;->EMPTY_METRICS:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    iput-object p2, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    iput p3, p0, Lio/netty/buffer/PoolChunkList;->minUsage:I

    iput p4, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    invoke-static {p3, p5}, Lio/netty/buffer/PoolChunkList;->calculateMaxCapacity(II)I

    move-result p1

    iput p1, p0, Lio/netty/buffer/PoolChunkList;->maxCapacity:I

    const/4 p1, 0x0

    const-wide v0, 0x3feffffffaa19c47L    # 0.99999999

    const/16 p2, 0x64

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-ne p4, p2, :cond_0

    move p4, p1

    goto :goto_0

    :cond_0
    int-to-double v4, p5

    int-to-double v6, p4

    sub-double v6, v2, v6

    add-double/2addr v6, v0

    mul-double/2addr v4, v6

    div-double/2addr v4, v2

    double-to-int p4, v4

    :goto_0
    iput p4, p0, Lio/netty/buffer/PoolChunkList;->freeMinThreshold:I

    if-ne p3, p2, :cond_1

    goto :goto_1

    :cond_1
    int-to-double p1, p5

    int-to-double p3, p3

    sub-double p3, v2, p3

    add-double/2addr p3, v0

    mul-double/2addr p1, p3

    div-double/2addr p1, v2

    double-to-int p1, p1

    :goto_1
    iput p1, p0, Lio/netty/buffer/PoolChunkList;->freeMaxThreshold:I

    return-void
.end method

.method private static calculateMaxCapacity(II)I
    .locals 4

    invoke-static {p0}, Lio/netty/buffer/PoolChunkList;->minUsage0(I)I

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p1

    int-to-long p0, p0

    const-wide/16 v2, 0x64

    sub-long p0, v2, p0

    mul-long/2addr v0, p0

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static minUsage0(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private move(Lio/netty/buffer/PoolChunk;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)Z"
        }
    .end annotation

    iget v0, p1, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->freeMaxThreshold:I

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->move0(Lio/netty/buffer/PoolChunk;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolChunkList;->add0(Lio/netty/buffer/PoolChunk;)V

    const/4 p1, 0x1

    return p1
.end method

.method private move0(Lio/netty/buffer/PoolChunk;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {v0, p1}, Lio/netty/buffer/PoolChunkList;->move(Lio/netty/buffer/PoolChunk;)Z

    move-result p1

    return p1
.end method

.method private remove(Lio/netty/buffer/PoolChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-ne p1, v0, :cond_0

    iget-object p1, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    iget-object p1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    iput-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lio/netty/buffer/PoolChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    iget v0, p1, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->freeMinThreshold:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolChunkList;->add0(Lio/netty/buffer/PoolChunk;)V

    return-void
.end method

.method public add0(Lio/netty/buffer/PoolChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p0, p1, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    :cond_0
    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    iput-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    iput-object p1, v0, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    :goto_0
    return-void
.end method

.method public allocate(Lio/netty/buffer/PooledByteBuf;IILio/netty/buffer/PoolThreadCache;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II",
            "Lio/netty/buffer/PoolThreadCache;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, p3}, Lio/netty/buffer/SizeClasses;->sizeIdx2size(I)I

    move-result v0

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->maxCapacity:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/PoolChunk;->allocate(Lio/netty/buffer/PooledByteBuf;IILio/netty/buffer/PoolThreadCache;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, v0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget p2, p0, Lio/netty/buffer/PoolChunkList;->freeMinThreshold:I

    if-gt p1, p2, :cond_1

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunkList;->remove(Lio/netty/buffer/PoolChunk;)V

    iget-object p1, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    :cond_3
    return v2
.end method

.method public destroy(Lio/netty/buffer/PoolArena;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    return-void
.end method

.method public free(Lio/netty/buffer/PoolChunk;JILjava/nio/ByteBuffer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;JI",
            "Ljava/nio/ByteBuffer;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4, p5}, Lio/netty/buffer/PoolChunk;->free(JILjava/nio/ByteBuffer;)V

    iget p2, p1, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget p3, p0, Lio/netty/buffer/PoolChunkList;->freeMaxThreshold:I

    if-le p2, p3, :cond_0

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->remove(Lio/netty/buffer/PoolChunk;)V

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->move0(Lio/netty/buffer/PoolChunk;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/PoolChunkMetric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-nez v1, :cond_0

    sget-object v1, Lio/netty/buffer/PoolChunkList;->EMPTY_METRICS:Ljava/util/Iterator;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public maxUsage()I
    .locals 2

    iget v0, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public minUsage()I
    .locals 1

    iget v0, p0, Lio/netty/buffer/PoolChunkList;->minUsage:I

    invoke-static {v0}, Lio/netty/buffer/PoolChunkList;->minUsage0(I)I

    move-result v0

    return v0
.end method

.method public prevList(Lio/netty/buffer/PoolChunkList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-nez v2, :cond_0

    const-string v0, "none"

    monitor-exit v1

    return-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    if-nez v2, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_1
    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
