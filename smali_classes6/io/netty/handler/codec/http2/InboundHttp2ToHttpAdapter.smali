.class public Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;
.super Lio/netty/handler/codec/http2/Http2EventAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;
    }
.end annotation


# static fields
.field private static final DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;


# instance fields
.field public final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final maxContentLength:I

.field private final messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final propagateSettings:Z

.field private final sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

.field public final validateHttpHeaders:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;IZZ)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2EventAdapter;-><init>()V

    const-string v0, "connection"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    const-string v0, "maxContentLength"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->maxContentLength:I

    iput-boolean p3, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->validateHttpHeaders:Z

    iput-boolean p4, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->propagateSettings:Z

    sget-object p2, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    iput-object p2, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-void
.end method

.method private processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    .locals 0

    if-eqz p4, :cond_1

    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p4

    if-eq p4, p3, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0, p1, p3, p4, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->putMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    invoke-virtual {p0, p4, p3}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    invoke-interface {p2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p3

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p3

    int-to-long p3, p3

    invoke-static {p2, p3, p4}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    return-object p1
.end method

.method public newMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p1

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p4, p3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p4, p3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 9

    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    iget v7, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->maxContentLength:I

    sub-int v8, v7, v5

    if-gt v6, v8, :cond_1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p2

    invoke-virtual {v4, p3, p2, v5}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, v1, v3, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    :cond_0
    add-int/2addr v5, p4

    return v5

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    const-string p2, "Content length exceeded max of %d for stream id %d"

    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_2
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    const-string p2, "Data Frame received for unknown stream id %d"

    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 7

    iget-object p6, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {p6, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p8

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    invoke-interface {p3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p6

    sget-object p7, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_DEPENDENCY_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {p7}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object p7

    invoke-virtual {p6, p7, p4}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    :cond_0
    invoke-interface {p3}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p4

    sget-object p6, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {p6}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object p6

    invoke-virtual {p4, p6, p5}, Lio/netty/handler/codec/http/HttpHeaders;->setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;

    invoke-direct {p0, p1, p2, p3, p8}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    :cond_1
    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 7

    iget-object p4, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {p4, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3, p5}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    :cond_0
    return-void
.end method

.method public onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 7

    iget-object p5, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {p5, p3}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p5

    invoke-interface {p4}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-interface {p4, v0}, Lio/netty/handler/codec/http2/Http2Headers;->status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p3

    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_PROMISE_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    invoke-interface {p4}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p2

    sget-object p3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {p3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object p3

    const/16 v1, 0x10

    invoke-virtual {p2, p3, v1}, Lio/netty/handler/codec/http/HttpHeaders;->setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;

    invoke-direct {p0, p1, p5, p4, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    return-void

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Push Promise Frame received for pre-existing stream id %d"

    invoke-static {p1, p3, p2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->onRstStreamRead(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V

    :cond_0
    invoke-static {p3, p4}, Lio/netty/handler/codec/http2/Http2Error;->valueOf(J)Lio/netty/handler/codec/http2/Http2Error;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "HTTP/2 to HTTP layer caught stream reset"

    invoke-static {p2, p3, v0, p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public onRstStreamRead(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->propagateSettings:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method

.method public onStreamRemoved(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    return-void
.end method

.method public processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 3

    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean p5, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->validateHttpHeaders:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p6

    invoke-virtual {p0, p2, p3, p5, p6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->newMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p5

    invoke-static {p5, p3, v0, p6}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object p3, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    invoke-interface {p3, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;->mustSendImmediately(Lio/netty/handler/codec/http/FullHttpMessage;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p4

    invoke-interface {p3, p4, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;->copyIfNeeded(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/http/FullHttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, p1, v0, v2, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    return-object v1

    :cond_3
    return-object v0
.end method

.method public final putMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0, p2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_0
    return-void
.end method

.method public final removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->removeProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_0
    return-void
.end method
