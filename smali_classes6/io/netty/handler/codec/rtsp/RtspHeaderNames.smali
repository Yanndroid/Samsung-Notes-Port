.class public final Lio/netty/handler/codec/rtsp/RtspHeaderNames;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCEPT:Lio/netty/util/AsciiString;

.field public static final ACCEPT_ENCODING:Lio/netty/util/AsciiString;

.field public static final ACCEPT_LANGUAGE:Lio/netty/util/AsciiString;

.field public static final ALLOW:Lio/netty/util/AsciiString;

.field public static final AUTHORIZATION:Lio/netty/util/AsciiString;

.field public static final BANDWIDTH:Lio/netty/util/AsciiString;

.field public static final BLOCKSIZE:Lio/netty/util/AsciiString;

.field public static final CACHE_CONTROL:Lio/netty/util/AsciiString;

.field public static final CONFERENCE:Lio/netty/util/AsciiString;

.field public static final CONNECTION:Lio/netty/util/AsciiString;

.field public static final CONTENT_BASE:Lio/netty/util/AsciiString;

.field public static final CONTENT_ENCODING:Lio/netty/util/AsciiString;

.field public static final CONTENT_LANGUAGE:Lio/netty/util/AsciiString;

.field public static final CONTENT_LENGTH:Lio/netty/util/AsciiString;

.field public static final CONTENT_LOCATION:Lio/netty/util/AsciiString;

.field public static final CONTENT_TYPE:Lio/netty/util/AsciiString;

.field public static final CSEQ:Lio/netty/util/AsciiString;

.field public static final DATE:Lio/netty/util/AsciiString;

.field public static final EXPIRES:Lio/netty/util/AsciiString;

.field public static final FROM:Lio/netty/util/AsciiString;

.field public static final HOST:Lio/netty/util/AsciiString;

.field public static final IF_MATCH:Lio/netty/util/AsciiString;

.field public static final IF_MODIFIED_SINCE:Lio/netty/util/AsciiString;

.field public static final KEYMGMT:Lio/netty/util/AsciiString;

.field public static final LAST_MODIFIED:Lio/netty/util/AsciiString;

.field public static final PROXY_AUTHENTICATE:Lio/netty/util/AsciiString;

.field public static final PROXY_REQUIRE:Lio/netty/util/AsciiString;

.field public static final PUBLIC:Lio/netty/util/AsciiString;

.field public static final RANGE:Lio/netty/util/AsciiString;

.field public static final REFERER:Lio/netty/util/AsciiString;

.field public static final REQUIRE:Lio/netty/util/AsciiString;

.field public static final RETRT_AFTER:Lio/netty/util/AsciiString;

.field public static final RTP_INFO:Lio/netty/util/AsciiString;

.field public static final SCALE:Lio/netty/util/AsciiString;

.field public static final SERVER:Lio/netty/util/AsciiString;

.field public static final SESSION:Lio/netty/util/AsciiString;

.field public static final SPEED:Lio/netty/util/AsciiString;

.field public static final TIMESTAMP:Lio/netty/util/AsciiString;

.field public static final TRANSPORT:Lio/netty/util/AsciiString;

.field public static final UNSUPPORTED:Lio/netty/util/AsciiString;

.field public static final USER_AGENT:Lio/netty/util/AsciiString;

.field public static final VARY:Lio/netty/util/AsciiString;

.field public static final VIA:Lio/netty/util/AsciiString;

.field public static final WWW_AUTHENTICATE:Lio/netty/util/AsciiString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCEPT:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->ACCEPT:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCEPT_ENCODING:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->ACCEPT_ENCODING:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCEPT_LANGUAGE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->ACCEPT_LANGUAGE:Lio/netty/util/AsciiString;

    const-string v0, "allow"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->ALLOW:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->AUTHORIZATION:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->AUTHORIZATION:Lio/netty/util/AsciiString;

    const-string v0, "bandwidth"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->BANDWIDTH:Lio/netty/util/AsciiString;

    const-string v0, "blocksize"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->BLOCKSIZE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CACHE_CONTROL:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CACHE_CONTROL:Lio/netty/util/AsciiString;

    const-string v0, "conference"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONFERENCE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_BASE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONTENT_BASE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LANGUAGE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONTENT_LANGUAGE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LOCATION:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONTENT_LOCATION:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    const-string v0, "cseq"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CSEQ:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->DATE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->DATE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->EXPIRES:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->EXPIRES:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->FROM:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->FROM:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->HOST:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->IF_MATCH:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->IF_MATCH:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->IF_MODIFIED_SINCE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->IF_MODIFIED_SINCE:Lio/netty/util/AsciiString;

    const-string v0, "keymgmt"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->KEYMGMT:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->LAST_MODIFIED:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->LAST_MODIFIED:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->PROXY_AUTHENTICATE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->PROXY_AUTHENTICATE:Lio/netty/util/AsciiString;

    const-string v0, "proxy-require"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->PROXY_REQUIRE:Lio/netty/util/AsciiString;

    const-string v0, "public"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->PUBLIC:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->RANGE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->RANGE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->REFERER:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->REFERER:Lio/netty/util/AsciiString;

    const-string v0, "require"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->REQUIRE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->RETRY_AFTER:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->RETRT_AFTER:Lio/netty/util/AsciiString;

    const-string v0, "rtp-info"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->RTP_INFO:Lio/netty/util/AsciiString;

    const-string v0, "scale"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->SCALE:Lio/netty/util/AsciiString;

    const-string v0, "session"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->SESSION:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->SERVER:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->SERVER:Lio/netty/util/AsciiString;

    const-string v0, "speed"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->SPEED:Lio/netty/util/AsciiString;

    const-string v0, "timestamp"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->TIMESTAMP:Lio/netty/util/AsciiString;

    const-string v0, "transport"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->TRANSPORT:Lio/netty/util/AsciiString;

    const-string v0, "unsupported"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->UNSUPPORTED:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->USER_AGENT:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->USER_AGENT:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->VARY:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->VARY:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->VIA:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->VIA:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->WWW_AUTHENTICATE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->WWW_AUTHENTICATE:Lio/netty/util/AsciiString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
