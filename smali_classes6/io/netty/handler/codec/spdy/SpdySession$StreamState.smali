.class final Lio/netty/handler/codec/spdy/SpdySession$StreamState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamState"
.end annotation


# instance fields
.field private localSideClosed:Z

.field private final pendingWriteQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;",
            ">;"
        }
    .end annotation
.end field

.field private final priority:B

.field private final receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private receiveWindowSizeLowerBound:I

.field private receivedReply:Z

.field private remoteSideClosed:Z

.field private final sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(BZZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/Queue;

    iput-byte p1, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->priority:B

    iput-boolean p2, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    iput-boolean p3, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public clearPendingWrites(Ljava/lang/Throwable;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeLocalSide()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    return-void
.end method

.method public closeRemoteSide()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    return-void
.end method

.method public getPendingWrite()Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;

    return-object v0
.end method

.method public getPriority()B
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->priority:B

    return v0
.end method

.method public getReceiveWindowSizeLowerBound()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSizeLowerBound:I

    return v0
.end method

.method public getSendWindowSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public hasReceivedReply()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->receivedReply:Z

    return v0
.end method

.method public isLocalSideClosed()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    return v0
.end method

.method public isRemoteSideClosed()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    return v0
.end method

.method public putPendingWrite(Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public receivedReply()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->receivedReply:Z

    return-void
.end method

.method public removePendingWrite()Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;

    return-object v0
.end method

.method public setReceiveWindowSizeLowerBound(I)V
    .locals 0

    iput p1, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSizeLowerBound:I

    return-void
.end method

.method public updateReceiveWindowSize(I)I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public updateSendWindowSize(I)I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method
