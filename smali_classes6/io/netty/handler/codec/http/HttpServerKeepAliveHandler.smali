.class public Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# static fields
.field private static final MULTIPART_PREFIX:Ljava/lang/String; = "multipart"


# instance fields
.field private pendingResponses:I

.field private persistentConnection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    return-void
.end method

.method private static isInformational(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 1

    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMultipart(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 7

    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x9

    const-string v4, "multipart"

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSelfDefinedMessageLength(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 1

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->isMultipart(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->isInformational(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result p0

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private shouldKeepAlive()Z
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private trackResponse(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 0

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->isInformational(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    :cond_0
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->trackResponse(Lio/netty/handler/codec/http/HttpResponse;)V

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->isSelfDefinedMessageLength(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput v2, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    iput-boolean v2, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->shouldKeepAlive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v2}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V

    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->shouldKeepAlive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object p3

    sget-object v0, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p3

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method
