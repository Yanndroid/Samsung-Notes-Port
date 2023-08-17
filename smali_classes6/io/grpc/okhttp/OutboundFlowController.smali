.class Lio/grpc/okhttp/OutboundFlowController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OutboundFlowController$StreamState;,
        Lio/grpc/okhttp/OutboundFlowController$Stream;,
        Lio/grpc/okhttp/OutboundFlowController$Transport;,
        Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    }
.end annotation


# instance fields
.field private final connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

.field private final frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

.field private initialWindowSize:I

.field private final transport:Lio/grpc/okhttp/OutboundFlowController$Transport;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OutboundFlowController$Transport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transport"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/okhttp/OutboundFlowController$Transport;

    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OutboundFlowController$Transport;

    const-string p1, "frameWriter"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    const p1, 0xffff

    iput p1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    new-instance p2, Lio/grpc/okhttp/OutboundFlowController$StreamState;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, p1, v1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;-><init>(Lio/grpc/okhttp/OutboundFlowController;IILio/grpc/okhttp/OutboundFlowController$Stream;)V

    iput-object p2, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    return-object p0
.end method

.method public static synthetic access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    return-object p0
.end method


# virtual methods
.method public createState(Lio/grpc/okhttp/OutboundFlowController$Stream;I)Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 3

    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$StreamState;

    iget v1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    const-string v2, "stream"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/okhttp/OutboundFlowController$Stream;

    invoke-direct {v0, p0, p2, v1, p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;-><init>(Lio/grpc/okhttp/OutboundFlowController;IILio/grpc/okhttp/OutboundFlowController$Stream;)V

    return-object v0
.end method

.method public data(ZLio/grpc/okhttp/OutboundFlowController$StreamState;Lokio/Buffer;Z)V
    .locals 4

    const-string v0, "source"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writableWindow()I

    move-result v0

    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->hasPendingData()Z

    move-result v1

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    invoke-virtual {p2, p3, v2, p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->write(Lokio/Buffer;IZ)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->write(Lokio/Buffer;IZ)V

    :cond_1
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p2, p3, v0, p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->enqueueData(Lokio/Buffer;IZ)V

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initialOutboundWindowSize(I)Z
    .locals 5

    if-ltz p1, :cond_2

    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    sub-int v0, p1, v0

    iput p1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    iget-object p1, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OutboundFlowController$Transport;

    invoke-interface {p1}, Lio/grpc/okhttp/OutboundFlowController$Transport;->getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4, v0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->incrementStreamWindow(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid initial window size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyWhenNoPendingData(Lio/grpc/okhttp/OutboundFlowController$StreamState;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "noPendingDataRunnable"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->notifyWhenNoPendingData(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I
    .locals 2
    .param p1    # Lio/grpc/okhttp/OutboundFlowController$StreamState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    invoke-virtual {p1, p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->incrementStreamWindow(I)I

    move-result p1

    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->incrementStreamWindow(I)I

    move-result p2

    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController$1;)V

    invoke-virtual {p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writableWindow()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method public writeStreams()V
    .locals 8

    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OutboundFlowController$Transport;

    invoke-interface {v0}, Lio/grpc/okhttp/OutboundFlowController$Transport;->getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window()I

    move-result v1

    array-length v2, v0

    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_2

    if-lez v1, :cond_2

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->unallocatedBytes()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v6, v7}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocateBytes(I)V

    sub-int/2addr v1, v7

    :cond_0
    invoke-virtual {v6}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->unallocatedBytes()I

    move-result v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v3, 0x1

    aput-object v6, v0, v3

    move v3, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController$1;)V

    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OutboundFlowController$Transport;

    invoke-interface {v1}, Lio/grpc/okhttp/OutboundFlowController$Transport;->getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocatedBytes()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    invoke-virtual {v4}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->clearAllocatedBytes()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    :cond_5
    return-void
.end method
