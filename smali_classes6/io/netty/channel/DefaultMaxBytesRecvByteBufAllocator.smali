.class public Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/MaxBytesRecvByteBufAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;
    }
.end annotation


# instance fields
.field private volatile maxBytesPerIndividualRead:I

.field private volatile maxBytesPerRead:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0, v0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->checkMaxBytesPerReadPair(II)V

    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    iput p2, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    return-void
.end method

.method private static checkMaxBytesPerReadPair(II)V
    .locals 3

    const-string v0, "maxBytesPerRead"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    const-string v0, "maxBytesPerIndividualRead"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    if-lt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBytesPerRead cannot be less than maxBytesPerIndividualRead ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public maxBytesPerIndividualRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    return v0
.end method

.method public maxBytesPerIndividualRead(I)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
    .locals 4

    const-string v0, "maxBytesPerIndividualRead"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead()I

    move-result v0

    if-gt p1, v0, :cond_0

    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    monitor-exit p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxBytesPerIndividualRead cannot be greater than maxBytesPerRead ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic maxBytesPerIndividualRead(I)Lio/netty/channel/MaxBytesRecvByteBufAllocator;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead(I)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    move-result-object p1

    return-object p1
.end method

.method public maxBytesPerRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    return v0
.end method

.method public maxBytesPerRead(I)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
    .locals 4

    const-string v0, "maxBytesPerRead"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead()I

    move-result v0

    if-lt p1, v0, :cond_0

    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    monitor-exit p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxBytesPerRead cannot be less than maxBytesPerIndividualRead ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic maxBytesPerRead(I)Lio/netty/channel/MaxBytesRecvByteBufAllocator;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead(I)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    move-result-object p1

    return-object p1
.end method

.method public maxBytesPerReadPair(II)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
    .locals 0

    invoke-static {p1, p2}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->checkMaxBytesPerReadPair(II)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    iput p2, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic maxBytesPerReadPair(II)Lio/netty/channel/MaxBytesRecvByteBufAllocator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerReadPair(II)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized maxBytesPerReadPair()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    iget v1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 2

    new-instance v0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;-><init>(Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$1;)V

    return-object v0
.end method
