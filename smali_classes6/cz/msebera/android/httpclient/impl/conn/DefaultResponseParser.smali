.class public Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.source "SourceFile"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser<",
        "Lcz/msebera/android/httpclient/HttpMessage;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxGarbageLines:I

.field private final responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    new-instance p1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p1, "Response factory"

    invoke-static {p3, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0, p4}, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->getMaxGarbageLines(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    return-void
.end method


# virtual methods
.method public getMaxGarbageLines(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .locals 2

    const-string v0, "http.connection.max-status-line-garbage"

    const v1, 0x7fffffff

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcz/msebera/android/httpclient/NoHttpResponseException;

    const-string v0, "The target server failed to respond"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v5, v6, v4}, Lcz/msebera/android/httpclient/message/LineParser;->hasProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v0, v4}, Lcz/msebera/android/httpclient/message/LineParser;->parseStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_2
    if-eq v2, v3, :cond_4

    iget v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Garbage in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    const-string v0, "The server failed to respond with a valid HTTP response"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method