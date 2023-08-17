.class final Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameReadListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)V

    return-void
.end method

.method private applyLocalSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 8

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->pushEnabled()Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameReader;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader;->configuration()Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;->headersConfiguration()Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;

    move-result-object v2

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;->frameSizePolicy()Lio/netty/handler/codec/http2/Http2FrameSizePolicy;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->allowPushTo(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Server sending SETTINGS frame with ENABLE_PUSH specified"

    invoke-static {p1, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxConcurrentStreams()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-interface {v3, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->maxActiveStreams(I)V

    :cond_2
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->headerTableSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderTableSize(J)V

    :cond_3
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->calculateMaxHeaderListSizeGoAway(J)J

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderListSize(JJ)V

    :cond_4
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxFrameSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2FrameSizePolicy;->maxFrameSize(I)V

    :cond_5
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2FlowController;->initialWindowSize(I)V

    :cond_6
    return-void
.end method

.method private shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_1

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p4, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "{} ignoring {} frame for stream {}. Stream sent after GOAWAY sent"

    invoke-interface {p3, p1, v0}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(I)V

    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p4, p3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v3

    const-string p4, "Received %s frame for an unknown stream %d"

    invoke-static {p2, p1, p4, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_1
    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Stream;->isResetSent()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/util/internal/logging/InternalLogger;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p4, v0, v3

    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Stream;->isResetSent()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "RST_STREAM sent."

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stream created after GOAWAY sent. Last known stream by peer "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {p3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p3

    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p3

    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamKnownByPeer()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, v0, v1

    const-string p1, "{} ignoring {} frame for stream {}"

    invoke-interface {p2, p1, v0}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v3
.end method

.method private streamCreatedAfterGoAwaySent(I)Z
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->goAwaySent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->isValidStreamId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamKnownByPeer()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private verifyStreamMayHaveExisted(I)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Stream %d does not exist"

    invoke-static {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, v4}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v9

    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int v11, v0, v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v7, "DATA"

    move-object/from16 v12, p1

    invoke-direct {v1, v12, v4, v9, v7}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    invoke-interface {v10, v9, v5, v6, v8}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    invoke-interface {v10, v9, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    invoke-direct {v1, v4}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(I)V

    return v11

    :cond_0
    const/4 v7, 0x0

    sget-object v13, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v3, :cond_2

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    const/4 v7, 0x3

    const-string v15, "Stream %d in unexpected state: %s"

    if-eq v13, v7, :cond_1

    const/4 v7, 0x4

    if-eq v13, v7, :cond_1

    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v7

    sget-object v13, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v2

    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    aput-object v2, v14, v3

    invoke-static {v7, v13, v15, v14}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v7

    sget-object v13, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v2

    invoke-interface {v9}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    aput-object v2, v14, v3

    invoke-static {v7, v13, v15, v14}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v7

    :cond_2
    :goto_0
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v2

    :try_start_1
    invoke-interface {v10, v9, v5, v6, v8}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    iget-object v3, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v3, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v13
    :try_end_1
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    :try_start_2
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2, v9, v0, v8}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;IZ)V

    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2FrameListener;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    move-result v11

    if-eqz v8, :cond_3

    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundInvoker;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    :try_end_2
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-interface {v10, v9, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    return v11

    :catch_0
    move-exception v0

    move v2, v13

    goto :goto_1

    :catch_1
    move-exception v0

    move v2, v13

    goto :goto_3

    :cond_4
    :try_start_3
    throw v7
    :try_end_3
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_1
    :try_start_4
    iget-object v3, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v3, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v3

    :goto_2
    sub-int/2addr v2, v3

    sub-int/2addr v11, v2

    throw v0

    :catch_3
    move-exception v0

    :goto_3
    iget-object v3, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v3, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_4
    invoke-interface {v10, v9, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    throw v0

    :catchall_1
    move-exception v0

    sget-object v5, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Unhandled error on data stream id %d"

    invoke-static {v5, v0, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    invoke-interface {v10, v9, v5, v6, v8}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    invoke-interface {v10, v9, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    throw v0
.end method

.method public onGoAwayRead(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V
    .locals 6

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->onGoAwayRead0(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v5, p3

    move/from16 v11, p8

    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v6, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v6}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v6

    invoke-interface {v6, v0}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v2

    invoke-interface {v2, v0, v11}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-ne v6, v7, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    move-object v12, v2

    move v2, v4

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersReceived()Z

    move-result v6

    move-object v12, v2

    move v2, v6

    move v6, v4

    goto :goto_1

    :cond_2
    move-object v12, v2

    move v2, v4

    move v6, v2

    :goto_1
    const-string v7, "HEADERS"

    move-object/from16 v13, p1

    invoke-direct {v1, v13, v0, v12, v7}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-void

    :cond_3
    iget-object v7, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v7}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v7

    invoke-interface {v7}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lio/netty/handler/codec/http/HttpStatusClass;->valueOf(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v7

    sget-object v8, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne v7, v8, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v7, :cond_5

    if-nez v11, :cond_6

    :cond_5
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersReceived()Z

    move-result v10

    if-nez v10, :cond_e

    :cond_6
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->isTrailersReceived()Z

    move-result v10

    if-nez v10, :cond_e

    sget-object v10, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v10, v10, v14

    if-eq v10, v3, :cond_b

    if-eq v10, v9, :cond_b

    const-string v14, "Stream %d in unexpected state: %s"

    if-eq v10, v8, :cond_9

    const/4 v6, 0x4

    if-eq v10, v6, :cond_8

    const/4 v6, 0x5

    if-ne v10, v6, :cond_7

    invoke-interface {v12, v11}, Lio/netty/handler/codec/http2/Http2Stream;->open(Z)Lio/netty/handler/codec/http2/Http2Stream;

    goto :goto_3

    :cond_7
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v14, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :cond_8
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v0, v2, v14, v5}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :cond_9
    if-eqz v6, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v0, v2, v14, v5}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :cond_b
    :goto_3
    if-nez v2, :cond_c

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {v5, v2}, Lio/netty/handler/codec/Headers;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    :try_start_0
    invoke-static {v6, v4, v3}, Lio/netty/handler/codec/http/HttpUtil;->normalizeAndGetContentLength(Ljava/util/List;ZZ)J

    move-result-wide v8

    const-wide/16 v14, -0x1

    cmp-long v3, v8, v14

    if-eqz v3, :cond_c

    invoke-interface {v5, v2, v8, v9}, Lio/netty/handler/codec/Headers;->setLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;

    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$600(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v2

    new-instance v3, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;

    invoke-direct {v3, v8, v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;-><init>(J)V

    invoke-interface {v12, v2, v3}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v2

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Multiple content-length headers received"

    invoke-static {v2, v3, v0, v5, v4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :cond_c
    :goto_4
    invoke-interface {v12, v7}, Lio/netty/handler/codec/http2/Http2Stream;->headersReceived(Z)Lio/netty/handler/codec/http2/Http2Stream;

    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2, v12, v4, v11}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;IZ)V

    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface {v2, v0, v6, v7, v8}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->updateDependencyTree(IISZ)V

    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    if-eqz v11, :cond_d

    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundInvoker;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    :cond_d
    return-void

    :cond_e
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    aput-object v3, v5, v9

    const-string v3, "Stream %d received too many headers EOS: %s state: %s"

    invoke-static {v0, v2, v3, v5}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 9

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    return-void
.end method

.method public onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V

    return-void
.end method

.method public onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 7

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1000(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object v2, p1

    move-wide v4, p2

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V

    return-void
.end method

.method public onPriorityRead(Lio/netty/channel/ChannelHandlerContext;IISZ)V
    .locals 7

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->updateDependencyTree(IISZ)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPriorityRead(Lio/netty/channel/ChannelHandlerContext;IISZ)V

    return-void
.end method

.method public onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 7

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    const-string v2, "PUSH_PROMISE"

    invoke-direct {p0, p1, p2, v0, v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p3

    aput-object p3, p2, v4

    const-string p3, "Stream %d in unexpected state for receiving push promise: %s"

    invoke-static {p1, p3, p2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v2

    invoke-interface {v2, p1, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isAuthoritative(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v2

    invoke-interface {v2, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isCacheable(Lio/netty/handler/codec/http2/Http2Headers;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v2

    invoke-interface {v2, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isSafe(Lio/netty/handler/codec/http2/Http2Headers;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2Stream;

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V

    return-void

    :cond_3
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v4

    const-string p2, "Promised request on stream %d for promised stream %d is not known to be safe"

    invoke-static {p3, p1, p2, p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_4
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v4

    const-string p2, "Promised request on stream %d for promised stream %d is not known to be cacheable"

    invoke-static {p3, p1, p2, p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_5
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v4

    const-string p2, "Promised request on stream %d for promised stream %d is not authoritative"

    invoke-static {p3, p1, p2, p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_6
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "A client cannot push."

    invoke-static {p1, p3, p2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(I)V

    return-void

    :cond_0
    sget-object v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2FrameListener;->onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V

    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object p2

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    return-void

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    const-string p2, "RST_STREAM received for IDLE stream %d"

    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_2
    return-void
.end method

.method public onSettingsAckRead(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->pollSentSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->applyLocalSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2FrameListener;->onSettingsAckRead(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$900(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$900(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;->consumeReceivedSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameListener;->onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V

    return-void
.end method

.method public onUnknownFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V
    .locals 6

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->onUnknownFrame0(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public onWindowUpdateRead(Lio/netty/channel/ChannelHandlerContext;II)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lio/netty/handler/codec/http2/Http2FlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onWindowUpdateRead(Lio/netty/channel/ChannelHandlerContext;II)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(I)V

    return-void
.end method
