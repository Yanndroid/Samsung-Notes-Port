.class final Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;
.super Lio/netty/handler/codec/http/HttpResponseEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpServerCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HttpServerResponseEncoder"
.end annotation


# instance fields
.field private method:Lio/netty/handler/codec/http/HttpMethod;

.field public final synthetic this$0:Lio/netty/handler/codec/http/HttpServerCodec;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpResponseEncoder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;Lio/netty/handler/codec/http/HttpServerCodec$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;-><init>(Lio/netty/handler/codec/http/HttpServerCodec;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result p1

    return p1
.end method

.method public isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpServerCodec;->access$100(Lio/netty/handler/codec/http/HttpServerCodec;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpMethod;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;->method:Lio/netty/handler/codec/http/HttpMethod;

    sget-object v1, Lio/netty/handler/codec/http/HttpMethod;->HEAD:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpResponseEncoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;->sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpResponse;Z)V

    return-void
.end method

.method public sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpResponse;Z)V
    .locals 2

    if-nez p2, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->CONNECT:Lio/netty/handler/codec/http/HttpMethod;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;->method:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpStatusClass;->SUCCESS:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    sget-object p2, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/HttpResponseEncoder;->sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpResponse;Z)V

    return-void
.end method
