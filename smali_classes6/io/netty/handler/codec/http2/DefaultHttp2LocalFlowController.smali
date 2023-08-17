.class public Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2LocalFlowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;,
        Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;,
        Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;,
        Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$AutoRefillState;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_WINDOW_UPDATE_RATIO:F = 0.5f

.field private static final REDUCED_FLOW_STATE:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

.field private initialWindowSize:I

.field private final stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private windowUpdateRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$2;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->REDUCED_FLOW_STATE:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;FZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;FZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    const-string v0, "connection"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->windowUpdateRatio(F)V

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    if-eqz p3, :cond_0

    new-instance p3, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$AutoRefillState;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    invoke-direct {p3, p0, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$AutoRefillState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V

    goto :goto_0

    :cond_0
    new-instance p3, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    invoke-direct {p3, p0, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V

    :goto_0
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;

    invoke-direct {p2, p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)V

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object p0
.end method

.method public static synthetic access$100()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->REDUCED_FLOW_STATE:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    return-object v0
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)I
    .locals 0

    iget p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    return p0
.end method

.method public static synthetic access$300(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public static synthetic access$500(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->consumeAllBytes(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)F
    .locals 0

    iget p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->windowUpdateRatio:F

    return p0
.end method

.method public static synthetic access$700(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 0

    invoke-static {p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->isClosed(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    return-object p0
.end method

.method private static checkValidRatio(F)V
    .locals 4

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private connectionState()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    return-object v0
.end method

.method private consumeAllBytes(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connectionState()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->consumeBytes(I)Z

    move-result v0

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->consumeBytes(I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method private static isClosed(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 1

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    return-object p1
.end method


# virtual methods
.method public channelHandlerContext(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z
    .locals 2

    const-string v0, "numBytes"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->isClosed(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->consumeAllBytes(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Returning bytes for the connection window is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
    .locals 1

    const-string v0, "frameWriter"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameWriter;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    return-object p0
.end method

.method public bridge synthetic frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    move-result-object p1

    return-object p1
.end method

.method public incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->incrementInitialStreamWindow(I)V

    invoke-interface {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->writeWindowUpdateIfNeeded()Z

    return-void
.end method

.method public initialWindowSize()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    return v0
.end method

.method public initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->initialWindowSize()I

    move-result p1

    return p1
.end method

.method public initialWindowSize(I)V
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    sub-int v0, p1, v0

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    new-instance p1, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;

    invoke-direct {p1, p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;I)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->throwIfError()V

    return-void
.end method

.method public receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V
    .locals 1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p2

    add-int/2addr p2, p3

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connectionState()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->receiveFlowControlledFrame(I)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->isClosed(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p1

    invoke-interface {p1, p4}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->endOfStream(Z)V

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->receiveFlowControlledFrame(I)V

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    invoke-interface {p3, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->consumeBytes(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public unconsumedBytes(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->unconsumedBytes()I

    move-result p1

    return p1
.end method

.method public windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->windowSize()I

    move-result p1

    return p1
.end method

.method public windowUpdateRatio()F
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->windowUpdateRatio:F

    return v0
.end method

.method public windowUpdateRatio(Lio/netty/handler/codec/http2/Http2Stream;)F
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->windowUpdateRatio()F

    move-result p1

    return p1
.end method

.method public windowUpdateRatio(F)V
    .locals 0

    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->checkValidRatio(F)V

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->windowUpdateRatio:F

    return-void
.end method

.method public windowUpdateRatio(Lio/netty/handler/codec/http2/Http2Stream;F)V
    .locals 0

    invoke-static {p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->checkValidRatio(F)V

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->windowUpdateRatio(F)V

    invoke-interface {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->writeWindowUpdateIfNeeded()Z

    return-void
.end method
