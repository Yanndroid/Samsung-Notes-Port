.class public final Lio/netty/util/internal/DefaultPriorityQueue;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/internal/PriorityQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/netty/util/internal/PriorityQueueNode;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TT;>;",
        "Lio/netty/util/internal/PriorityQueue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lio/netty/util/internal/PriorityQueueNode;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private queue:[Lio/netty/util/internal/PriorityQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/netty/util/internal/PriorityQueueNode;

    sput-object v0, Lio/netty/util/internal/DefaultPriorityQueue;->EMPTY_ARRAY:[Lio/netty/util/internal/PriorityQueueNode;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz p2, :cond_0

    new-array p1, p2, [Lio/netty/util/internal/PriorityQueueNode;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/util/internal/DefaultPriorityQueue;->EMPTY_ARRAY:[Lio/netty/util/internal/PriorityQueueNode;

    :goto_0
    iput-object p1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    return-void
.end method

.method public static synthetic access$100(Lio/netty/util/internal/DefaultPriorityQueue;)I
    .locals 0

    iget p0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    return p0
.end method

.method public static synthetic access$200(Lio/netty/util/internal/DefaultPriorityQueue;)[Lio/netty/util/internal/PriorityQueueNode;
    .locals 0

    iget-object p0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    return-object p0
.end method

.method private bubbleDown(ILio/netty/util/internal/PriorityQueueNode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    ushr-int/lit8 v0, v0, 0x1

    :goto_0
    if-ge p1, v0, :cond_2

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aget-object v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lio/netty/util/internal/DefaultPriorityQueue;->comparator:Ljava/util/Comparator;

    aget-object v2, v2, v4

    invoke-interface {v5, v3, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aget-object v3, v1, v4

    move v1, v4

    :cond_0
    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aput-object v3, v2, p1

    invoke-interface {v3, p0, p1}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;I)V

    move p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aput-object p2, v0, p1

    invoke-interface {p2, p0, p1}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;I)V

    return-void
.end method

.method private bubbleUp(ILio/netty/util/internal/PriorityQueueNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aget-object v1, v1, v0

    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aput-object v1, v2, p1

    invoke-interface {v1, p0, p1}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;I)V

    move p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aput-object p2, v0, p1

    invoke-interface {p2, p0, p1}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;I)V

    return-void
.end method

.method private contains(Lio/netty/util/internal/PriorityQueueNode;I)Z
    .locals 1

    if-ltz p2, :cond_0

    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    invoke-interface {v2, p0, v3}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;I)V

    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    return-void
.end method

.method public clearIgnoringIndexes()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/netty/util/internal/PriorityQueueNode;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lio/netty/util/internal/PriorityQueueNode;

    invoke-interface {p1, p0}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/DefaultPriorityQueue;->contains(Lio/netty/util/internal/PriorityQueueNode;I)Z

    move-result p1

    return p1
.end method

.method public containsTyped(Lio/netty/util/internal/PriorityQueueNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p1, p0}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/DefaultPriorityQueue;->contains(Lio/netty/util/internal/PriorityQueueNode;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsTyped(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/netty/util/internal/PriorityQueueNode;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/DefaultPriorityQueue;->containsTyped(Lio/netty/util/internal/PriorityQueueNode;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;-><init>(Lio/netty/util/internal/DefaultPriorityQueue;Lio/netty/util/internal/DefaultPriorityQueue$1;)V

    return-object v0
.end method

.method public offer(Lio/netty/util/internal/PriorityQueueNode;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p1, p0}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    iget-object v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    array-length v0, v1

    array-length v2, v1

    const/16 v4, 0x40

    if-ge v2, v4, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    array-length v2, v1

    ushr-int/2addr v2, v3

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/internal/PriorityQueueNode;

    iput-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    :cond_1
    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/DefaultPriorityQueue;->bubbleUp(ILio/netty/util/internal/PriorityQueueNode;)V

    return v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e.priorityQueueIndex(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") + e: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/netty/util/internal/PriorityQueueNode;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/DefaultPriorityQueue;->offer(Lio/netty/util/internal/PriorityQueueNode;)Z

    move-result p1

    return p1
.end method

.method public peek()Lio/netty/util/internal/PriorityQueueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/internal/DefaultPriorityQueue;->peek()Lio/netty/util/internal/PriorityQueueNode;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lio/netty/util/internal/PriorityQueueNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v3, -0x1

    invoke-interface {v0, p0, v3}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;I)V

    iget-object v3, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    iget v4, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    aget-object v5, v3, v4

    aput-object v1, v3, v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v2, v5}, Lio/netty/util/internal/DefaultPriorityQueue;->bubbleDown(ILio/netty/util/internal/PriorityQueueNode;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/internal/DefaultPriorityQueue;->poll()Lio/netty/util/internal/PriorityQueueNode;

    move-result-object v0

    return-object v0
.end method

.method public priorityChanged(Lio/netty/util/internal/PriorityQueueNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/DefaultPriorityQueue;->contains(Lio/netty/util/internal/PriorityQueueNode;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/DefaultPriorityQueue;->bubbleDown(ILio/netty/util/internal/PriorityQueueNode;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, -0x1

    ushr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aget-object v1, v2, v1

    iget-object v2, p0, Lio/netty/util/internal/DefaultPriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/DefaultPriorityQueue;->bubbleUp(ILio/netty/util/internal/PriorityQueueNode;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic priorityChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/netty/util/internal/PriorityQueueNode;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/DefaultPriorityQueue;->priorityChanged(Lio/netty/util/internal/PriorityQueueNode;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    :try_start_0
    check-cast p1, Lio/netty/util/internal/PriorityQueueNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lio/netty/util/internal/DefaultPriorityQueue;->removeTyped(Lio/netty/util/internal/PriorityQueueNode;)Z

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeTyped(Lio/netty/util/internal/PriorityQueueNode;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p1, p0}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/DefaultPriorityQueue;->contains(Lio/netty/util/internal/PriorityQueueNode;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, -0x1

    invoke-interface {p1, p0, v1}, Lio/netty/util/internal/PriorityQueueNode;->priorityQueueIndex(Lio/netty/util/internal/DefaultPriorityQueue;I)V

    iget v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aget-object v5, v4, v1

    aput-object v5, v4, v0

    aput-object v3, v4, v1

    iget-object v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v1, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_2

    invoke-direct {p0, v0, v5}, Lio/netty/util/internal/DefaultPriorityQueue;->bubbleDown(ILio/netty/util/internal/PriorityQueueNode;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v5}, Lio/netty/util/internal/DefaultPriorityQueue;->bubbleUp(ILio/netty/util/internal/PriorityQueueNode;)V

    :goto_0
    return v2

    :cond_3
    :goto_1
    iget-object p1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    aput-object v3, p1, v0

    return v2
.end method

.method public bridge synthetic removeTyped(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/netty/util/internal/PriorityQueueNode;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/DefaultPriorityQueue;->removeTyped(Lio/netty/util/internal/PriorityQueueNode;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    iget v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)[TX;"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue;->queue:[Lio/netty/util/internal/PriorityQueueNode;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v1, p0, Lio/netty/util/internal/DefaultPriorityQueue;->size:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method
