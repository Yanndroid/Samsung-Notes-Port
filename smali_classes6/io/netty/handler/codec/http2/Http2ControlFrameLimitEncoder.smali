.class final Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;
.super Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;
.source "SourceFile"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

.field private limitReached:Z

.field private final maxOutstandingControlFrames:I

.field private outstandingControlFrames:I

.field private final outstandingControlFramesListener:Lio/netty/channel/ChannelFutureListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    new-instance p1, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder$1;

    invoke-direct {p1, p0}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder$1;-><init>(Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFramesListener:Lio/netty/channel/ChannelFutureListener;

    const-string p1, "maxOutstandingControlFrames"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    return-void
.end method

.method public static synthetic access$010(Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;)I
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    return v0
.end method

.method private handleOutstandingControlFrames(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 6

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->limitReached:Z

    if-nez v0, :cond_2

    iget v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    iget v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    iget v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->limitReached:Z

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Maximum number %d of outstanding control frames reached"

    invoke-static {v0, v1, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string v4, "Maximum number {} of outstanding control frames reached. Closing channel {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v1, p1, v2, v0}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    :cond_1
    iget p1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    iget-object p2, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFramesListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method


# virtual methods
.method public lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V

    return-void
.end method

.method public writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p5}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->handleOutstandingControlFrames(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    move-result-object v5

    if-nez v5, :cond_0

    return-object p5

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super/range {p0 .. p5}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6

    invoke-direct {p0, p1, p5}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->handleOutstandingControlFrames(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    move-result-object v5

    if-nez v5, :cond_0

    return-object p5

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->handleOutstandingControlFrames(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-super {p0, p1, v0}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method
