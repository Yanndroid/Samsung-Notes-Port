.class public Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;
.super Lio/netty/handler/codec/http2/Http2ConnectionHandler;
.source "SourceFile"


# instance fields
.field private currentStreamId:I

.field private httpScheme:Lio/netty/handler/codec/http/HttpScheme;

.field private final validateHeaders:Z


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)V

    iput-boolean p4, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZLio/netty/handler/codec/http/HttpScheme;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZLio/netty/handler/codec/http/HttpScheme;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V

    iput-boolean p4, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    iput-object p6, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZZLio/netty/handler/codec/http/HttpScheme;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V

    iput-boolean p4, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    iput-object p7, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    return-void
.end method

.method private getStreamId(Lio/netty/handler/codec/http/HttpHeaders;)I
    .locals 2

    sget-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->incrementAndGetNextStreamId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method private static writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V
    .locals 13

    move-object/from16 v0, p3

    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_DEPENDENCY_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v7

    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getShort(Ljava/lang/CharSequence;S)S

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move-object/from16 v6, p4

    move/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method


# virtual methods
.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p2

    instance-of v0, v2, Lio/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_0

    instance-of v0, v2, Lio/netty/handler/codec/http/HttpContent;

    if-nez v0, :cond_0

    invoke-interface/range {p1 .. p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void

    :cond_0
    new-instance v10, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-direct {v10, v4, v0, v3}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    instance-of v3, v2, Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {v3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->getStreamId(Lio/netty/handler/codec/http/HttpHeaders;)I

    move-result v4

    iput v4, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    iget-object v4, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v5}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v5}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v5

    iget-object v6, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v6}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    :cond_1
    iget-boolean v4, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    invoke-static {v3, v4}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpMessage;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v7

    instance-of v4, v2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lio/netty/handler/codec/http/FullHttpMessage;

    invoke-interface {v4}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-nez v4, :cond_2

    move v13, v12

    goto :goto_0

    :cond_2
    move v13, v11

    :goto_0
    iget v5, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    invoke-interface {v3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    move-object/from16 v3, p1

    move-object v4, v0

    move v8, v13

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V

    goto :goto_1

    :cond_3
    move v13, v11

    :goto_1
    if-nez v13, :cond_6

    instance-of v3, v2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v3, :cond_6

    sget-object v3, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    sget-object v4, Lio/netty/handler/codec/http2/EmptyHttp2Headers;->INSTANCE:Lio/netty/handler/codec/http2/EmptyHttp2Headers;

    instance-of v5, v2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v5, :cond_4

    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {v3}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    iget-boolean v4, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    invoke-static {v3, v4}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v4

    move-object v13, v3

    move-object v14, v4

    move v3, v12

    goto :goto_2

    :cond_4
    move-object v13, v3

    move-object v14, v4

    move v3, v11

    :goto_2
    move-object v4, v2

    check-cast v4, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v4}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    if-eqz v3, :cond_5

    invoke-virtual {v13}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    move v8, v12

    goto :goto_3

    :cond_5
    move v8, v11

    :goto_3
    iget v5, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    const/4 v7, 0x0

    invoke-virtual {v10}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v9

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lio/netty/handler/codec/http2/Http2DataWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v13}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget v5, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    const/4 v8, 0x1

    move-object/from16 v3, p1

    move-object v4, v0

    move-object v6, v13

    move-object v7, v14

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_5

    :cond_6
    move v11, v12

    :cond_7
    :goto_4
    if-eqz v11, :cond_8

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move v11, v12

    :goto_5
    :try_start_2
    invoke-virtual {p0, v3, v12, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    invoke-virtual {v10, v0}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v11, :cond_8

    :goto_6
    invoke-static/range {p2 .. p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v10}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    return-void

    :catchall_2
    move-exception v0

    if-eqz v11, :cond_9

    invoke-static/range {p2 .. p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v10}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    throw v0
.end method
