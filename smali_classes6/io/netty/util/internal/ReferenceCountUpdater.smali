.class public abstract Lio/netty/util/internal/ReferenceCountUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/netty/util/ReferenceCounted;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnsafeOffset(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/util/ReferenceCounted;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private nonFinalRelease0(Lio/netty/util/ReferenceCounted;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    if-ge p2, p4, :cond_0

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p4

    shl-int/lit8 v0, p2, 0x1

    sub-int v0, p3, v0

    invoke-virtual {p4, p1, p3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/ReferenceCountUpdater;->retryRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result p1

    return p1
.end method

.method private nonVolatileRawCnt(Lio/netty/util/ReferenceCounted;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->unsafeOffset()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt(Ljava/lang/Object;J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private static realRefCnt(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method private retain0(Lio/netty/util/ReferenceCounted;II)Lio/netty/util/ReferenceCounted;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lio/netty/util/IllegalReferenceCountException;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p1

    :cond_1
    :goto_0
    if-gtz v0, :cond_2

    add-int v1, v0, p3

    if-gez v1, :cond_3

    :cond_2
    if-ltz v0, :cond_4

    add-int v1, v0, p3

    if-lt v1, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    neg-int p3, p3

    invoke-virtual {v1, p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    new-instance p1, Lio/netty/util/IllegalReferenceCountException;

    invoke-static {v0}, Lio/netty/util/internal/ReferenceCountUpdater;->realRefCnt(I)I

    move-result p3

    invoke-direct {p1, p3, p2}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method private retryRelease0(Lio/netty/util/ReferenceCounted;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0, p2}, Lio/netty/util/internal/ReferenceCountUpdater;->toLiveRealRefCnt(II)I

    move-result v1

    if-ne p2, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/ReferenceCountUpdater;->tryFinalRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge p2, v1, :cond_2

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    shl-int/lit8 v2, p2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_2
    new-instance p1, Lio/netty/util/IllegalReferenceCountException;

    neg-int p2, p2

    invoke-direct {p1, v1, p2}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p1
.end method

.method private static toLiveRealRefCnt(II)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lio/netty/util/IllegalReferenceCountException;

    const/4 v0, 0x0

    neg-int p1, p1

    invoke-direct {p0, v0, p1}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p0

    :cond_1
    :goto_0
    ushr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private tryFinalRelease0(Lio/netty/util/ReferenceCounted;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final initialValue()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final isLiveNonVolatile(Lio/netty/util/ReferenceCounted;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->unsafeOffset()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt(Ljava/lang/Object;J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    and-int/2addr p1, v1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public final refCnt(Lio/netty/util/ReferenceCounted;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lio/netty/util/internal/ReferenceCountUpdater;->realRefCnt(I)I

    move-result p1

    return p1
.end method

.method public final release(Lio/netty/util/ReferenceCounted;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/internal/ReferenceCountUpdater;->nonVolatileRawCnt(Lio/netty/util/ReferenceCounted;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->tryFinalRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v2}, Lio/netty/util/internal/ReferenceCountUpdater;->retryRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Lio/netty/util/internal/ReferenceCountUpdater;->toLiveRealRefCnt(II)I

    move-result v1

    invoke-direct {p0, p1, v2, v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->nonFinalRelease0(Lio/netty/util/ReferenceCounted;III)Z

    move-result v2

    :cond_2
    :goto_0
    return v2
.end method

.method public final release(Lio/netty/util/ReferenceCounted;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/internal/ReferenceCountUpdater;->nonVolatileRawCnt(Lio/netty/util/ReferenceCounted;)I

    move-result v0

    const-string v1, "decrement"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->toLiveRealRefCnt(II)I

    move-result v1

    if-ne p2, v1, :cond_2

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/ReferenceCountUpdater;->tryFinalRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/ReferenceCountUpdater;->retryRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->nonFinalRelease0(Lio/netty/util/ReferenceCounted;III)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final resetRefCnt(Lio/netty/util/ReferenceCounted;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->initialValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public final retain(Lio/netty/util/ReferenceCounted;)Lio/netty/util/ReferenceCounted;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->retain0(Lio/netty/util/ReferenceCounted;II)Lio/netty/util/ReferenceCounted;

    move-result-object p1

    return-object p1
.end method

.method public final retain(Lio/netty/util/ReferenceCounted;I)Lio/netty/util/ReferenceCounted;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    const-string v0, "increment"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/internal/ReferenceCountUpdater;->retain0(Lio/netty/util/ReferenceCounted;II)Lio/netty/util/ReferenceCounted;

    move-result-object p1

    return-object p1
.end method

.method public setInitialValue(Lio/netty/util/ReferenceCounted;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->unsafeOffset()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->initialValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->initialValue()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->safeConstructPutInt(Ljava/lang/Object;JI)V

    :goto_0
    return-void
.end method

.method public final setRefCnt(Lio/netty/util/ReferenceCounted;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    shl-int/lit8 v1, p2, 0x1

    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public abstract unsafeOffset()J
.end method

.method public abstract updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "TT;>;"
        }
    .end annotation
.end method
