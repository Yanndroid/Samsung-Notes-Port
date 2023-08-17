.class Lio/netty/buffer/SimpleLeakAwareByteBuf;
.super Lio/netty/buffer/WrappedByteBuf;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private final trackedByteBuf:Lio/netty/buffer/ByteBuf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/buffer/SimpleLeakAwareByteBuf;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/buffer/WrappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    const-string p1, "trackedByteBuf"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBuf;

    iput-object p1, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->trackedByteBuf:Lio/netty/buffer/ByteBuf;

    const-string p1, "leak"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/ResourceLeakTracker;

    iput-object p1, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    return-void
.end method

.method private closeLeak()V
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    iget-object v1, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->trackedByteBuf:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0, v1}, Lio/netty/util/ResourceLeakTracker;->close(Ljava/lang/Object;)Z

    return-void
.end method

.method private newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/SimpleLeakAwareByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/SimpleLeakAwareByteBuf;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object p1

    return-object p1
.end method

.method private newSharedLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/SimpleLeakAwareByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->trackedByteBuf:Lio/netty/buffer/ByteBuf;

    iget-object v1, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object p1

    return-object p1
.end method

.method private static unwrapSwapped(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    instance-of v0, p0, Lio/netty/buffer/SwappedByteBuf;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    instance-of v0, p0, Lio/netty/buffer/SwappedByteBuf;

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method private unwrappedDerived(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-static {p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->unwrapSwapped(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    instance-of v1, v0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;

    if-eqz v1, :cond_1

    check-cast v0, Lio/netty/buffer/AbstractPooledDerivedByteBuf;

    invoke-virtual {v0, p0}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->parent(Lio/netty/buffer/ByteBuf;)V

    sget-object v0, Lio/netty/buffer/AbstractByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p1}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p1, v0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newSharedLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public asReadOnly()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newSharedLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newSharedLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/SimpleLeakAwareByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/SimpleLeakAwareByteBuf;"
        }
    .end annotation

    new-instance v0, Lio/netty/buffer/SimpleLeakAwareByteBuf;

    invoke-direct {v0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/WrappedByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lio/netty/buffer/WrappedByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newSharedLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readRetainedSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/WrappedByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->unwrappedDerived(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/WrappedByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newSharedLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public release()Z
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->closeLeak()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/WrappedByteBuf;->release(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->closeLeak()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->unwrappedDerived(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->unwrappedDerived(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/WrappedByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->unwrappedDerived(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newSharedLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/buffer/WrappedByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->newSharedLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/SimpleLeakAwareByteBuf;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method
