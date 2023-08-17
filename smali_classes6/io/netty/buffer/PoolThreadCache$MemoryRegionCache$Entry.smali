.class final Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field public handle:J

.field public nioBuffer:Ljava/nio/ByteBuffer;

.field public normCapacity:I

.field public final recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    iput-object p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    return-void
.end method
