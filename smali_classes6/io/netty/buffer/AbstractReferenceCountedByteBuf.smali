.class public abstract Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.super Lio/netty/buffer/AbstractByteBuf;
.source "SourceFile"


# static fields
.field private static final AIF_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/buffer/AbstractReferenceCountedByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFCNT_FIELD_OFFSET:J

.field private static final updater:Lio/netty/util/internal/ReferenceCountUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ReferenceCountUpdater<",
            "Lio/netty/buffer/AbstractReferenceCountedByteBuf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile refCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;

    const-string v1, "refCnt"

    invoke-static {v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->getUnsafeOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->REFCNT_FIELD_OFFSET:J

    const-class v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;

    const-string v1, "refCnt"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->AIF_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    new-instance v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractByteBuf;-><init>(I)V

    sget-object p1, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {p1, p0}, Lio/netty/util/internal/ReferenceCountUpdater;->setInitialValue(Lio/netty/util/ReferenceCounted;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->AIF_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    sget-wide v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->REFCNT_FIELD_OFFSET:J

    return-wide v0
.end method

.method private handleRelease(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->deallocate()V

    :cond_0
    return p1
.end method


# virtual methods
.method public abstract deallocate()V
.end method

.method isAccessible()Z
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/ReferenceCountUpdater;->isLiveNonVolatile(Lio/netty/util/ReferenceCounted;)Z

    move-result v0

    return v0
.end method

.method public refCnt()I
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/ReferenceCountUpdater;->refCnt(Lio/netty/util/ReferenceCounted;)I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/ReferenceCountUpdater;->release(Lio/netty/util/ReferenceCounted;)Z

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->handleRelease(Z)Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/internal/ReferenceCountUpdater;->release(Lio/netty/util/ReferenceCounted;I)Z

    move-result p1

    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->handleRelease(Z)Z

    move-result p1

    return p1
.end method

.method public final resetRefCnt()V
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/ReferenceCountUpdater;->resetRefCnt(Lio/netty/util/ReferenceCounted;)V

    return-void
.end method

.method public retain()Lio/netty/buffer/ByteBuf;
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/ReferenceCountUpdater;->retain(Lio/netty/util/ReferenceCounted;)Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public retain(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/internal/ReferenceCountUpdater;->retain(Lio/netty/util/ReferenceCounted;I)Lio/netty/util/ReferenceCounted;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBuf;

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public final setRefCnt(I)V
    .locals 1

    sget-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->updater:Lio/netty/util/internal/ReferenceCountUpdater;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/internal/ReferenceCountUpdater;->setRefCnt(Lio/netty/util/ReferenceCounted;I)V

    return-void
.end method

.method public touch()Lio/netty/buffer/ByteBuf;
    .locals 0

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method
