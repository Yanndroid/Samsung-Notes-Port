.class public Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final listener:Lio/netty/handler/codec/http2/Http2FrameListener;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    iput-object p2, p0, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    return-void
.end method

.method private static getStreamId(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http/HttpHeaders;)I
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p0

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->incrementAndGetNextStreamId()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static handle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 11

    :try_start_0
    invoke-interface {p3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->getStreamId(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http/HttpHeaders;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p1

    invoke-interface {p1, v0, v7}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    :cond_0
    move-object p1, v1

    invoke-interface {p3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    const/4 v8, 0x1

    invoke-static {p3, v8}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpMessage;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v4

    invoke-interface {p3}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v9

    invoke-interface {p3}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    const/4 v5, 0x0

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    move-object v1, p2

    move-object v2, p0

    move v3, v0

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V

    if-eqz v9, :cond_3

    invoke-interface {p3}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v10, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    move-object v1, p2

    move-object v2, p0

    move v3, v0

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    :cond_3
    if-eqz v10, :cond_4

    invoke-interface {p3}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-static {v1, v8}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p0

    move v3, v0

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V

    :cond_4
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->closeRemoteSide()Lio/netty/handler/codec/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p3}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p0
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    iget-object v1, p0, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    check-cast p2, Lio/netty/handler/codec/http/FullHttpMessage;

    invoke-static {p1, v0, v1, p2}, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->handle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Lio/netty/handler/codec/http/FullHttpMessage;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
