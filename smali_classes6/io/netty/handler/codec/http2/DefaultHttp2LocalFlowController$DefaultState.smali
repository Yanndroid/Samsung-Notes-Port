.class Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultState"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private endOfStream:Z

.field private initialStreamWindowSize:I

.field private lowerBound:I

.field private processedWindow:I

.field private final stream:Lio/netty/handler/codec/http2/Http2Stream;

.field private streamWindowUpdateRatio:F

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

.field private window:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-virtual {p0, p3}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window(I)V

    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$600(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)F

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->streamWindowUpdateRatio:F

    return-void
.end method

.method private returnProcessedBytes(I)V
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->processedWindow:I

    sub-int v1, v0, p1

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->processedWindow:I

    return-void

    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Attempting to return too many bytes for stream %d"

    invoke-static {p1, v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private writeWindowUpdate()V
    .locals 5

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->initialStreamWindowSize:I

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->processedWindow:I

    sub-int/2addr v0, v1

    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->incrementFlowControlWindows(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v4}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeWindowUpdate(Lio/netty/channel/ChannelHandlerContext;IILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Attempting to return too many bytes for stream %d"

    invoke-static {v1, v0, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public consumeBytes(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->returnProcessedBytes(I)V

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->writeWindowUpdateIfNeeded()Z

    move-result p1

    return p1
.end method

.method public endOfStream(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->endOfStream:Z

    return-void
.end method

.method public incrementFlowControlWindows(I)V
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    const v2, 0x7fffffff

    sub-int/2addr v2, p1

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p1

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Flow control window overflowed for stream: %d"

    invoke-static {p1, v1, v0, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->processedWindow:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->processedWindow:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->lowerBound:I

    return-void
.end method

.method public incrementInitialStreamWindow(I)V
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->initialStreamWindowSize:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->initialStreamWindowSize:I

    sub-int/2addr p1, v0

    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->initialStreamWindowSize:I

    return-void
.end method

.method public initialWindowSize()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->initialStreamWindowSize:I

    return v0
.end method

.method public receiveFlowControlledFrame(I)V
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    iget p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->lowerBound:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Flow control window exceeded for stream: %d"

    invoke-static {p1, v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public unconsumedBytes()I
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->processedWindow:I

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public window(I)V
    .locals 0

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->initialStreamWindowSize:I

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->processedWindow:I

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    return-void
.end method

.method public windowSize()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->window:I

    return v0
.end method

.method public windowUpdateRatio()F
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->streamWindowUpdateRatio:F

    return v0
.end method

.method public windowUpdateRatio(F)V
    .locals 0

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->streamWindowUpdateRatio:F

    return-void
.end method

.method public writeWindowUpdateIfNeeded()Z
    .locals 3

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->endOfStream:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->initialStreamWindowSize:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$700(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->initialStreamWindowSize:I

    int-to-float v0, v0

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->streamWindowUpdateRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->processedWindow:I

    if-gt v2, v0, :cond_1

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->writeWindowUpdate()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method
