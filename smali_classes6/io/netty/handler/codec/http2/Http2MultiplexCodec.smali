.class public Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.super Lio/netty/handler/codec/http2/Http2FrameCodec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private idCount:I

.field private final inboundStreamHandler:Lio/netty/channel/ChannelHandler;

.field private parentReadInProgress:Z

.field private final readCompletePendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final upgradeStreamHandler:Lio/netty/channel/ChannelHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelHandler;Lio/netty/channel/ChannelHandler;ZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameCodec;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V

    new-instance p1, Lio/netty/handler/codec/http2/MaxCapacityQueue;

    new-instance p2, Ljava/util/ArrayDeque;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Ljava/util/ArrayDeque;-><init>(I)V

    const/16 p3, 0x64

    invoke-direct {p1, p2, p3}, Lio/netty/handler/codec/http2/MaxCapacityQueue;-><init>(Ljava/util/Queue;I)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    iput-object p4, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->inboundStreamHandler:Lio/netty/channel/ChannelHandler;

    iput-object p5, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    return-void
.end method

.method public static synthetic access$004(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->idCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->idCount:I

    return v0
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    return p0
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->processPendingReadCompleteQueue()V

    return-void
.end method

.method private onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
    .locals 2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->lastStreamId()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method private processPendingReadCompleteQueue()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChildReadComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush0(Lio/netty/channel/ChannelHandlerContext;)V

    throw v1
.end method


# virtual methods
.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->processPendingReadCompleteQueue()V

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public final channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->WRITABLE_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    :cond_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public final flush0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public final handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EventExecutor must be EventLoop of Channel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final newOutboundStream()Lio/netty/handler/codec/http2/Http2StreamChannel;
    .locals 3

    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->newStream()Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    return-object v0
.end method

.method public final onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V
    .locals 1

    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2StreamFrame;

    if-eqz v0, :cond_0

    check-cast p2, Lio/netty/handler/codec/http2/Http2StreamFrame;

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object p1, p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {p1, p2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChildRead(Lio/netty/handler/codec/http2/Http2Frame;)V

    return-void

    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final onHttp2FrameStreamException(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStreamException;)V
    .locals 1

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object p1, p1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    :try_start_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {v0, p2}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    throw p2
.end method

.method public final onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)V
    .locals 3

    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$2;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->streamClosed()V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    invoke-direct {v0, p0, p2, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closeOutbound()V

    goto :goto_0

    :cond_4
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->inboundStreamHandler:Lio/netty/channel/ChannelHandler;

    invoke-direct {v0, p0, p2, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/netty/channel/EventLoopGroup;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->registerDone(Lio/netty/channel/ChannelFuture;)V

    goto :goto_1

    :cond_5
    sget-object p2, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :cond_6
    :goto_1
    return-void
.end method

.method public onHttpClientUpgrade()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onHttpClientUpgrade()V

    return-void

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Client is misconfigured for upgrade requests"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method
