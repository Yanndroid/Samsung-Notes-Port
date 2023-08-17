.class public final Lio/netty/handler/codec/http2/UniformStreamByteDistributor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/StreamByteDistributor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    }
.end annotation


# instance fields
.field private minAllocationChunk:I

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;",
            ">;"
        }
    .end annotation
.end field

.field private final stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private totalStreamableBytes:J


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    invoke-direct {v2, p0, v1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;-><init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)V

    invoke-interface {v1, v0, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;-><init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)V

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    return-wide v0
.end method

.method public static synthetic access$202(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;J)J
    .locals 0

    iput-wide p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    return-wide p1
.end method

.method public static synthetic access$300(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    return-object p0
.end method

.method private state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Stream;

    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    return-object p1
.end method


# virtual methods
.method public distribute(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)Z
    .locals 7

    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-wide p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    iget v5, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    div-int v0, p1, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v5, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    :cond_2
    iput-boolean v4, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    iget-boolean v6, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->windowNegative:Z

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    iget v6, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    if-lez v6, :cond_4

    iget-object p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    invoke-interface {p1, v5}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    iput-boolean v3, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    goto :goto_2

    :cond_4
    iget v6, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr p1, v6

    invoke-virtual {v5, v6, p2}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->write(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)V

    :goto_1
    iget-object v5, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    if-nez v5, :cond_2

    :goto_2
    iget-wide p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    cmp-long p1, p1, v1

    if-lez p1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    return v3
.end method

.method public minAllocationChunk(I)V
    .locals 1

    const-string v0, "minAllocationChunk"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    iput p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    return-void
.end method

.method public updateDependencyTree(IISZ)V
    .locals 0

    return-void
.end method

.method public updateStreamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->stream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    move-result-object v0

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->streamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)I

    move-result v1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->hasFrame()Z

    move-result v2

    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->windowSize()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->updateStreamableBytes(IZI)V

    return-void
.end method
