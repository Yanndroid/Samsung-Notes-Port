.class final Lio/netty/handler/codec/CodecOutputList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;,
        Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final CODEC_OUTPUT_LISTS_POOL:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOOP_RECYCLER:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;


# instance fields
.field private array:[Ljava/lang/Object;

.field private insertSinceRecycled:Z

.field private final recycler:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

.field private size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/CodecOutputList$1;

    invoke-direct {v0}, Lio/netty/handler/codec/CodecOutputList$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/CodecOutputList;->NOOP_RECYCLER:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    new-instance v0, Lio/netty/handler/codec/CodecOutputList$2;

    invoke-direct {v0}, Lio/netty/handler/codec/CodecOutputList$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/CodecOutputList;->CODEC_OUTPUT_LISTS_POOL:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/CodecOutputList;->recycler:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;ILio/netty/handler/codec/CodecOutputList$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/CodecOutputList;-><init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;I)V

    return-void
.end method

.method public static synthetic access$100()Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/CodecOutputList;->NOOP_RECYCLER:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    return-object v0
.end method

.method private checkIndex(I)V
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: index < ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "),but actual is ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private expandArray()V
    .locals 4

    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method

.method private insert(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/codec/CodecOutputList;->insertSinceRecycled:Z

    return-void
.end method

.method public static newInstance()Lio/netty/handler/codec/CodecOutputList;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/CodecOutputList;->CODEC_OUTPUT_LISTS_POOL:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;

    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->getOrCreate()Lio/netty/handler/codec/CodecOutputList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3

    const-string v0, "element"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecOutputList;->checkIndex(I)V

    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/CodecOutputList;->expandArray()V

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/CodecOutputList;->insert(ILjava/lang/Object;)V

    iget p1, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/CodecOutputList;->insert(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lio/netty/handler/codec/CodecOutputList;->expandArray()V

    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/CodecOutputList;->insert(ILjava/lang/Object;)V

    :goto_0
    iget p1, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecOutputList;->checkIndex(I)V

    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getUnsafe(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public insertSinceRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/CodecOutputList;->insertSinceRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    iput-boolean v0, p0, Lio/netty/handler/codec/CodecOutputList;->insertSinceRecycled:Z

    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->recycler:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    invoke-interface {v0, p0}, Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;->recycle(Lio/netty/handler/codec/CodecOutputList;)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecOutputList;->checkIndex(I)V

    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v2, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    const/4 v2, 0x0

    aput-object v2, p1, v0

    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "element"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecOutputList;->checkIndex(I)V

    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/CodecOutputList;->insert(ILjava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    return v0
.end method
