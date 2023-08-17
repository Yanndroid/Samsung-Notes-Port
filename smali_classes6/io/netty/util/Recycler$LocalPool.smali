.class final Lio/netty/util/Recycler$LocalPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalPool"
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
.field private volatile pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private ratioCounter:I

.field private final ratioInterval:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/netty/util/Recycler$LocalPool;->ratioInterval:I

    invoke-static {}, Lio/netty/util/Recycler;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p3, Lio/netty/util/Recycler$BlockingMessageQueue;

    invoke-direct {p3, p1}, Lio/netty/util/Recycler$BlockingMessageQueue;-><init>(I)V

    iput-object p3, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    goto :goto_0

    :cond_0
    invoke-static {p3, p1}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue(II)Ljava/util/Queue;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    iput-object p1, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    :goto_0
    iput p2, p0, Lio/netty/util/Recycler$LocalPool;->ratioCounter:I

    return-void
.end method

.method public static synthetic access$300(Lio/netty/util/Recycler$LocalPool;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
    .locals 0

    iget-object p0, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    return-object p0
.end method

.method public static synthetic access$302(Lio/netty/util/Recycler$LocalPool;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
    .locals 0

    iput-object p1, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    return-object p1
.end method


# virtual methods
.method public claim()Lio/netty/util/Recycler$DefaultHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/Recycler$DefaultHandle;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/netty/util/Recycler$DefaultHandle;->availableToClaim()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method public newHandle()Lio/netty/util/Recycler$DefaultHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lio/netty/util/Recycler$LocalPool;->ratioCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/Recycler$LocalPool;->ratioCounter:I

    iget v1, p0, Lio/netty/util/Recycler$LocalPool;->ratioInterval:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/Recycler$LocalPool;->ratioCounter:I

    new-instance v0, Lio/netty/util/Recycler$DefaultHandle;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$DefaultHandle;-><init>(Lio/netty/util/Recycler$LocalPool;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public release(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    invoke-virtual {p1}, Lio/netty/util/Recycler$DefaultHandle;->toAvailable()V

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->relaxedOffer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
