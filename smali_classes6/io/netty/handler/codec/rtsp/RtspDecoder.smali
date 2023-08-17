.class public Lio/netty/handler/codec/rtsp/RtspDecoder;
.super Lio/netty/handler/codec/http/HttpObjectDecoder;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_CONTENT_LENGTH:I = 0x2000

.field private static final UNKNOWN_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;

.field private static final versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private isDecodingRequest:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x3e7

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspDecoder;->UNKNOWN_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;

    const-string v0, "RTSP/\\d\\.\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspDecoder;->versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1000

    const/16 v1, 0x2000

    invoke-direct {p0, v0, v1, v1}, Lio/netty/handler/codec/rtsp/RtspDecoder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    mul-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    mul-int/lit8 v3, p3, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZ)V

    return-void
.end method


# virtual methods
.method public createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;
    .locals 5

    iget-boolean v0, p0, Lio/netty/handler/codec/rtsp/RtspDecoder;->isDecodingRequest:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    sget-object v1, Lio/netty/handler/codec/rtsp/RtspVersions;->RTSP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/rtsp/RtspMethods;->OPTIONS:Lio/netty/handler/codec/http/HttpMethod;

    iget-boolean v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    const-string v4, "/bad-request"

    invoke-direct {v0, v1, v2, v4, v3}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/rtsp/RtspVersions;->RTSP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/rtsp/RtspDecoder;->UNKNOWN_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;

    iget-boolean v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Z)V

    return-object v0
.end method

.method public createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 5

    sget-object v0, Lio/netty/handler/codec/rtsp/RtspDecoder;->versionPattern:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lio/netty/handler/codec/rtsp/RtspDecoder;->isDecodingRequest:Z

    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpResponse;

    aget-object v1, p1, v1

    invoke-static {v1}, Lio/netty/handler/codec/rtsp/RtspVersions;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    new-instance v4, Lio/netty/handler/codec/http/HttpResponseStatus;

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object p1, p1, v2

    invoke-direct {v4, v3, p1}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    iget-boolean p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v0, v1, v4, p1}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Z)V

    return-object v0

    :cond_0
    iput-boolean v3, p0, Lio/netty/handler/codec/rtsp/RtspDecoder;->isDecodingRequest:Z

    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpRequest;

    aget-object v2, p1, v2

    invoke-static {v2}, Lio/netty/handler/codec/rtsp/RtspVersions;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    aget-object v1, p1, v1

    invoke-static {v1}, Lio/netty/handler/codec/rtsp/RtspMethods;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    aget-object p1, p1, v3

    iget-boolean v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v0, v2, v1, p1, v3}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 1

    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    sget-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {p1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

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

.method public isDecodingRequest()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/rtsp/RtspDecoder;->isDecodingRequest:Z

    return v0
.end method
