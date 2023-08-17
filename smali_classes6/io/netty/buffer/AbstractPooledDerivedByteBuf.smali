.class abstract Lio/netty/buffer/AbstractPooledDerivedByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;,
        Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedDuplicateByteBuf;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private parent:Lio/netty/buffer/ByteBuf;

.field private final recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/AbstractPooledDerivedByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private rootParent:Lio/netty/buffer/AbstractByteBuf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;

    return-void
.end method

.method public constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "+",
            "Lio/netty/buffer/AbstractPooledDerivedByteBuf;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    iput-object p1, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    return-void
.end method


# virtual methods
.method public final alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public array()[B
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final deallocate()V
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->parent:Lio/netty/buffer/ByteBuf;

    iget-object v1, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v1, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void
.end method

.method public final duplicate0()Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    new-instance v0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedDuplicateByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedDuplicateByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/AbstractByteBuf;)V

    return-object v0
.end method

.method public hasArray()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0
.end method

.method public final init(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;III)Lio/netty/buffer/AbstractPooledDerivedByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lio/netty/buffer/AbstractPooledDerivedByteBuf;",
            ">(",
            "Lio/netty/buffer/AbstractByteBuf;",
            "Lio/netty/buffer/ByteBuf;",
            "III)TU;"
        }
    .end annotation

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    iput-object p2, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->parent:Lio/netty/buffer/ByteBuf;

    iput-object p1, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->rootParent:Lio/netty/buffer/AbstractByteBuf;

    :try_start_0
    invoke-virtual {p0, p5}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity(I)V

    invoke-virtual {p0, p3, p4}, Lio/netty/buffer/AbstractByteBuf;->setIndex0(II)V

    invoke-virtual {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetRefCnt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const/4 p3, 0x0

    iput-object p3, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->rootParent:Lio/netty/buffer/AbstractByteBuf;

    iput-object p3, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->parent:Lio/netty/buffer/ByteBuf;

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1
.end method

.method public final internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public isContiguous()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isContiguous()Z

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/AbstractByteBuf;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public final nioBufferCount()I
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final parent(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    iput-object p1, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->parent:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public final retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    new-instance v0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/AbstractByteBuf;II)V

    return-object v0
.end method

.method public final unwrap()Lio/netty/buffer/AbstractByteBuf;
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->rootParent:Lio/netty/buffer/AbstractByteBuf;

    return-object v0
.end method

.method public bridge synthetic unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    return-object v0
.end method
