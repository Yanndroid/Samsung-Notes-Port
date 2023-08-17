.class public Lio/netty/handler/codec/http/HttpObjectAggregator;
.super Lio/netty/handler/codec/MessageAggregator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;,
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;,
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageAggregator<",
        "Lio/netty/handler/codec/http/HttpObject;",
        "Lio/netty/handler/codec/http/HttpMessage;",
        "Lio/netty/handler/codec/http/HttpContent;",
        "Lio/netty/handler/codec/http/FullHttpMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final TOO_LARGE_CLOSE:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final closeOnExpectationFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lio/netty/handler/codec/http/HttpObjectAggregator;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

    new-instance v2, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v4, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v2, v1, v4, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v2, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE_CLOSE:Lio/netty/handler/codec/http/FullHttpResponse;

    new-instance v5, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    invoke-direct {v5, v1, v4, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v5, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    invoke-interface {v5}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->CLOSE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/MessageAggregator;-><init>(I)V

    iput-boolean p2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->closeOnExpectationFailed:Z

    return-void
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method private static continueResponse(Lio/netty/handler/codec/http/HttpMessage;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isUnsupportedExpectation(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lio/netty/handler/codec/http/HttpExpectationFailedEvent;->INSTANCE:Lio/netty/handler/codec/http/HttpExpectationFailedEvent;

    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    sget-object p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

    :goto_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    int-to-long p0, p1

    cmp-long p0, v0, p0

    if-gtz p0, :cond_1

    sget-object p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

    goto :goto_0

    :cond_1
    sget-object p0, Lio/netty/handler/codec/http/HttpExpectationFailedEvent;->INSTANCE:Lio/netty/handler/codec/http/HttpExpectationFailedEvent;

    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    sget-object p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic aggregate(Lio/netty/buffer/ByteBufHolder;Lio/netty/buffer/ByteBufHolder;)V
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    check-cast p2, Lio/netty/handler/codec/http/HttpContent;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator;->aggregate(Lio/netty/handler/codec/http/FullHttpMessage;Lio/netty/handler/codec/http/HttpContent;)V

    return-void
.end method

.method public aggregate(Lio/netty/handler/codec/http/FullHttpMessage;Lio/netty/handler/codec/http/HttpContent;)V
    .locals 1

    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    check-cast p2, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p2}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setTrailingHeaders(Lio/netty/handler/codec/http/HttpHeaders;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpMessage;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator;->beginAggregation(Lio/netty/handler/codec/http/HttpMessage;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p1

    return-object p1
.end method

.method public beginAggregation(Lio/netty/handler/codec/http/HttpMessage;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/netty/handler/codec/http/HttpUtil;->setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;

    check-cast p1, Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {v0, p1, p2, v1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;

    check-cast p1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-direct {v0, p1, p2, v1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public closeAfterContinueResponse(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->closeOnExpectationFailed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic finishAggregation(Lio/netty/buffer/ByteBufHolder;)V
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->finishAggregation(Lio/netty/handler/codec/http/FullHttpMessage;)V

    return-void
.end method

.method public finishAggregation(Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 2

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    :cond_0
    return-void
.end method

.method public handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 2

    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-nez v0, :cond_1

    invoke-static {p2}, Lio/netty/handler/codec/http/HttpUtil;->is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p2

    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$2;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$2;-><init>(Lio/netty/handler/codec/http/HttpObjectAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE_CLOSE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p2

    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$1;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$1;-><init>(Lio/netty/handler/codec/http/HttpObjectAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    :goto_1
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void

    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    new-instance p1, Lio/netty/handler/codec/http/TooLongHttpContentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response entity too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/http/TooLongHttpContentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public bridge synthetic handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/netty/handler/codec/http/HttpMessage;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator;->handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)V

    return-void
.end method

.method public ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object p1

    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->CLIENT_ERROR:Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAggregated(Lio/netty/handler/codec/http/HttpObject;)Z
    .locals 0

    instance-of p1, p1, Lio/netty/handler/codec/http/FullHttpMessage;

    return p1
.end method

.method public bridge synthetic isAggregated(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isAggregated(Lio/netty/handler/codec/http/HttpObject;)Z

    move-result p1

    return p1
.end method

.method public isContentLengthInvalid(Lio/netty/handler/codec/http/HttpMessage;I)Z
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p1, p2

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :catch_0
    :cond_0
    return v2
.end method

.method public bridge synthetic isContentLengthInvalid(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpMessage;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isContentLengthInvalid(Lio/netty/handler/codec/http/HttpMessage;I)Z

    move-result p1

    return p1
.end method

.method public isContentMessage(Lio/netty/handler/codec/http/HttpObject;)Z
    .locals 0

    instance-of p1, p1, Lio/netty/handler/codec/http/HttpContent;

    return p1
.end method

.method public bridge synthetic isContentMessage(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isContentMessage(Lio/netty/handler/codec/http/HttpObject;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpContent;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isLastContentMessage(Lio/netty/handler/codec/http/HttpContent;)Z

    move-result p1

    return p1
.end method

.method public isLastContentMessage(Lio/netty/handler/codec/http/HttpContent;)Z
    .locals 0

    instance-of p1, p1, Lio/netty/handler/codec/http/LastHttpContent;

    return p1
.end method

.method public isStartMessage(Lio/netty/handler/codec/http/HttpObject;)Z
    .locals 0

    instance-of p1, p1, Lio/netty/handler/codec/http/HttpMessage;

    return p1
.end method

.method public bridge synthetic isStartMessage(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isStartMessage(Lio/netty/handler/codec/http/HttpObject;)Z

    move-result p1

    return p1
.end method

.method public newContinueResponse(Lio/netty/handler/codec/http/HttpMessage;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;->continueResponse(Lio/netty/handler/codec/http/HttpMessage;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    sget-object p3, Lio/netty/handler/codec/http/HttpHeaderNames;->EXPECT:Lio/netty/util/AsciiString;

    invoke-virtual {p1, p3}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    :cond_0
    return-object p2
.end method

.method public bridge synthetic newContinueResponse(Ljava/lang/Object;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpMessage;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;->newContinueResponse(Lio/netty/handler/codec/http/HttpMessage;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
