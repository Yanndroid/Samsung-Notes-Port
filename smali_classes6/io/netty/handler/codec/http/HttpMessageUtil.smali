.class final Lio/netty/handler/codec/http/HttpMessageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1

    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(decodeResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendFullCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 1

    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(decodeResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", content: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static appendFullRequest(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpRequest;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendFullCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpMessage;)V

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)V

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->removeLastNewLine(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method public static appendFullResponse(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpResponse;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendFullCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpMessage;)V

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)V

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->removeLastNewLine(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method private static appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 2

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static appendRequest(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpMessage;)V

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)V

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->removeLastNewLine(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method public static appendResponse(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpMessage;)V

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)V

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->removeLastNewLine(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method private static removeLastNewLine(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method
