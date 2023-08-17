.class abstract Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
.super Lio/netty/util/DefaultAttributeMap;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;,
        Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;,
        Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;,
        Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;

.field private static final MIN_HTTP2_FRAME_SIZE:I = 0x9

.field private static final TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITABLE_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final channelId:Lio/netty/channel/ChannelId;

.field private final closePromise:Lio/netty/channel/ChannelPromise;

.field private final config:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;

.field private fireChannelWritabilityChangedTask:Ljava/lang/Runnable;

.field private firstFrameWritten:Z

.field private flowControlledBytes:I

.field private inboundBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private outboundClosed:Z

.field private final pipeline:Lio/netty/channel/ChannelPipeline;

.field private readCompletePending:Z

.field private readStatus:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

.field private volatile registered:Z

.field private final stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

.field private volatile totalPendingSize:J

.field private final unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

.field private volatile unwritable:I

.field private final windowUpdateFrameWriteListener:Lio/netty/channel/ChannelFutureListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    new-instance v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->WRITABLE_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    const-class v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    const-class v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const-string v1, "totalPendingSize"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const-string v1, "unwritable"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;ILio/netty/channel/ChannelHandler;)V
    .locals 2

    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap;-><init>()V

    new-instance v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$2;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$2;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->windowUpdateFrameWriteListener:Lio/netty/channel/ChannelFutureListener;

    new-instance v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;

    new-instance v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$1;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->readStatus:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iput-object p0, p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    new-instance p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$3;

    invoke-direct {p1, p0, p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$3;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/channel/Channel;)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline:Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closePromise:Lio/netty/channel/ChannelPromise;

    new-instance v0, Lio/netty/handler/codec/http2/Http2StreamChannelId;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/netty/handler/codec/http2/Http2StreamChannelId;-><init>(Lio/netty/channel/ChannelId;I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->channelId:Lio/netty/channel/ChannelId;

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Lio/netty/channel/ChannelHandler;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;)V
    .locals 0

    invoke-static {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->windowUpdateFrameWriteComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/channel/ChannelPipeline;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline:Lio/netty/channel/ChannelPipeline;

    return-object p0
.end method

.method public static synthetic access$1200()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static synthetic access$1300(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->readStatus:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    return-object p0
.end method

.method public static synthetic access$1302(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->readStatus:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    return-object p1
.end method

.method public static synthetic access$1400(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    return-object p0
.end method

.method public static synthetic access$1500(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->maybeAddChannelToReadCompletePendingQueue()V

    return-void
.end method

.method public static synthetic access$1600(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)I
    .locals 0

    iget p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->flowControlledBytes:I

    return p0
.end method

.method public static synthetic access$1602(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;I)I
    .locals 0

    iput p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->flowControlledBytes:I

    return p1
.end method

.method public static synthetic access$1700(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/channel/ChannelFutureListener;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->windowUpdateFrameWriteListener:Lio/netty/channel/ChannelFutureListener;

    return-object p0
.end method

.method public static synthetic access$1800(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->firstFrameWritten:Z

    return p0
.end method

.method public static synthetic access$1802(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->firstFrameWritten:Z

    return p1
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->incrementPendingOutboundBytes(JZ)V

    return-void
.end method

.method public static synthetic access$2200(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->decrementPendingOutboundBytes(JZ)V

    return-void
.end method

.method public static synthetic access$400(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->registered:Z

    return p0
.end method

.method public static synthetic access$402(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->registered:Z

    return p1
.end method

.method public static synthetic access$500(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/channel/ChannelPromise;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closePromise:Lio/netty/channel/ChannelPromise;

    return-object p0
.end method

.method public static synthetic access$600(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->readCompletePending:Z

    return p0
.end method

.method public static synthetic access$602(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->readCompletePending:Z

    return p1
.end method

.method public static synthetic access$700(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    return-object p0
.end method

.method public static synthetic access$800(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$802(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    return-object p1
.end method

.method public static synthetic access$900(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->outboundClosed:Z

    return p0
.end method

.method public static synthetic access$902(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->outboundClosed:Z

    return p1
.end method

.method private decrementPendingOutboundBytes(JZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long p1, p1

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->setWritable(Z)V

    :cond_1
    return-void
.end method

.method private fireChannelWritabilityChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChannelWritabilityChangedTask:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$4;

    invoke-direct {p1, p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$4;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/channel/ChannelPipeline;)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChannelWritabilityChangedTask:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelPipeline;

    :goto_0
    return-void
.end method

.method private incrementPendingOutboundBytes(JZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    invoke-direct {p0, p3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->setUnwritable(Z)V

    :cond_1
    return-void
.end method

.method private maybeAddChannelToReadCompletePendingQueue()V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->readCompletePending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->readCompletePending:Z

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->addChannelToReadCompletePendingQueue()V

    :cond_0
    return-void
.end method

.method private setUnwritable(Z)V
    .locals 3

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unwritable:I

    or-int/lit8 v1, v0, 0x1

    sget-object v2, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChannelWritabilityChanged(Z)V

    :cond_1
    return-void
.end method

.method private setWritable(Z)V
    .locals 3

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unwritable:I

    and-int/lit8 v1, v0, -0x2

    sget-object v2, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChannelWritabilityChanged(Z)V

    :cond_1
    return-void
.end method

.method private static windowUpdateFrameWriteComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;)V
    .locals 1

    invoke-interface {p0}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lio/netty/handler/codec/http2/Http2FrameStreamException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p0

    invoke-interface {p1}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract addChannelToReadCompletePendingQueue()V
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public bytesBeforeUnwritable()J
    .locals 5

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->totalPendingSize:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public bytesBeforeWritable()J
    .locals 5

    iget-wide v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->totalPendingSize:J

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public closeFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closePromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method public closeOutbound()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->outboundClosed:Z

    return-void
.end method

.method public compareTo(Lio/netty/channel/Channel;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->id()Lio/netty/channel/ChannelId;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/netty/channel/Channel;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->compareTo(Lio/netty/channel/Channel;)I

    move-result p1

    return p1
.end method

.method public config()Lio/netty/channel/ChannelConfig;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->deregister()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->disconnect()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public eventLoop()Lio/netty/channel/EventLoop;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method public fireChildRead(Lio/netty/handler/codec/http2/Http2Frame;)V
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->readStatus:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    sget-object v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v1, p1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->doRead0(Lio/netty/handler/codec/http2/Http2Frame;Lio/netty/channel/RecvByteBufAllocator$Handle;)V

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->maybeAddChannelToReadCompletePendingQueue()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->notifyReadComplete(Lio/netty/channel/RecvByteBufAllocator$Handle;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public fireChildReadComplete()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->notifyReadComplete(Lio/netty/channel/RecvByteBufAllocator$Handle;Z)V

    return-void
.end method

.method public flush()Lio/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->flush()Lio/netty/channel/ChannelPipeline;

    return-object p0
.end method

.method public bridge synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->flush()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public flush0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->id()Lio/netty/channel/ChannelId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()Lio/netty/channel/ChannelId;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->channelId:Lio/netty/channel/ChannelId;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isParentReadInProgress()Z
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->registered:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unwritable:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method public newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public newPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lio/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parentContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public abstract parentContext()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public pipeline()Lio/netty/channel/ChannelPipeline;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline:Lio/netty/channel/ChannelPipeline;

    return-object v0
.end method

.method public read()Lio/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->read()Lio/netty/channel/ChannelOutboundInvoker;

    return-object p0
.end method

.method public bridge synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->read()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public stream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    return-object v0
.end method

.method public streamClosed()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->readEOS()V

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->doBeginRead()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(H2 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trySetWritable()V
    .locals 4

    iget-wide v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->totalPendingSize:J

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->setWritable(Z)V

    :cond_0
    return-void
.end method

.method public unsafe()Lio/netty/channel/Channel$Unsafe;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    return-object v0
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public write0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-object v0
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method
