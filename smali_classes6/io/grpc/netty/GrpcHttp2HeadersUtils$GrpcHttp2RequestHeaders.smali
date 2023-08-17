.class final Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;
.super Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/GrpcHttp2HeadersUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrpcHttp2RequestHeaders"
.end annotation


# static fields
.field private static final AUTHORITY_HEADER:Lio/netty/util/AsciiString;

.field private static final METHOD_HEADER:Lio/netty/util/AsciiString;

.field private static final PATH_HEADER:Lio/netty/util/AsciiString;

.field private static final SCHEME_HEADER:Lio/netty/util/AsciiString;


# instance fields
.field private authority:Lio/netty/util/AsciiString;

.field private method:Lio/netty/util/AsciiString;

.field private path:Lio/netty/util/AsciiString;

.field private scheme:Lio/netty/util/AsciiString;

.field private te:Lio/netty/util/AsciiString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ":path"

    invoke-static {v0}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->PATH_HEADER:Lio/netty/util/AsciiString;

    const-string v0, ":authority"

    invoke-static {v0}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->AUTHORITY_HEADER:Lio/netty/util/AsciiString;

    const-string v0, ":method"

    invoke-static {v0}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->METHOD_HEADER:Lio/netty/util/AsciiString;

    const-string v0, ":scheme"

    invoke-static {v0}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->SCHEME_HEADER:Lio/netty/util/AsciiString;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;-><init>(I)V

    return-void
.end method

.method private getPseudoHeader(Lio/netty/util/AsciiString;)Lio/netty/util/AsciiString;
    .locals 1

    sget-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->PATH_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->path:Lio/netty/util/AsciiString;

    return-object p1

    :cond_0
    sget-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->AUTHORITY_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->authority:Lio/netty/util/AsciiString;

    return-object p1

    :cond_1
    sget-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->METHOD_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->method:Lio/netty/util/AsciiString;

    return-object p1

    :cond_2
    sget-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->SCHEME_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->scheme:Lio/netty/util/AsciiString;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private setPseudoHeader(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)V
    .locals 2

    sget-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->PATH_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->path:Lio/netty/util/AsciiString;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->AUTHORITY_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->authority:Lio/netty/util/AsciiString;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->METHOD_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->method:Lio/netty/util/AsciiString;

    goto :goto_0

    :cond_2
    sget-object v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->SCHEME_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->scheme:Lio/netty/util/AsciiString;

    :goto_0
    return-void

    :cond_3
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Illegal pseudo-header \'%s\' in request."

    invoke-static {p2, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 3

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->requireAsciiString(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->validateName(Lio/netty/util/AsciiString;)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-static {p2}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->requireAsciiString(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p2

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->isPseudoHeader(Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->getPseudoHeader(Lio/netty/util/AsciiString;)Lio/netty/util/AsciiString;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Duplicate %s header"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->setPseudoHeader(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)V

    return-object p0

    :cond_1
    sget-object v0, Lio/grpc/netty/Utils;->TE_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->te:Lio/netty/util/AsciiString;

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->add(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public authority()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->authority:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->requireAsciiString(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->isPseudoHeader(Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->getPseudoHeader(Lio/netty/util/AsciiString;)Lio/netty/util/AsciiString;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lio/grpc/netty/Utils;->TE_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->te:Lio/netty/util/AsciiString;

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->get(Lio/netty/util/AsciiString;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getAll(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->requireAsciiString(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->isPseudoHeader(Lio/netty/util/AsciiString;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->getPseudoHeader(Lio/netty/util/AsciiString;)Lio/netty/util/AsciiString;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v1, Lio/grpc/netty/Utils;->TE_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v1, v0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->te:Lio/netty/util/AsciiString;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public method()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->method:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public path()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->path:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public remove(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->requireAsciiString(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->isPseudoHeader(Lio/netty/util/AsciiString;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->getPseudoHeader(Lio/netty/util/AsciiString;)Lio/netty/util/AsciiString;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, v3}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->setPseudoHeader(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)V

    return v2

    :cond_1
    sget-object v0, Lio/grpc/netty/Utils;->TE_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->equals(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->te:Lio/netty/util/AsciiString;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    iput-object v3, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->te:Lio/netty/util/AsciiString;

    return v1

    :cond_3
    invoke-super {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->remove(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->remove(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public scheme()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->scheme:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->path:Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->authority:Lio/netty/util/AsciiString;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->method:Lio/netty/util/AsciiString;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->scheme:Lio/netty/util/AsciiString;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->te:Lio/netty/util/AsciiString;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    invoke-super {p0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->path:Lio/netty/util/AsciiString;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v4, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->PATH_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, v4, v1, v3}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->appendNameAndValue(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    move v3, v2

    :cond_0
    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->authority:Lio/netty/util/AsciiString;

    if-eqz v1, :cond_1

    sget-object v4, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->AUTHORITY_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, v4, v1, v3}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->appendNameAndValue(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    move v3, v2

    :cond_1
    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->method:Lio/netty/util/AsciiString;

    if-eqz v1, :cond_2

    sget-object v4, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->METHOD_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, v4, v1, v3}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->appendNameAndValue(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    move v3, v2

    :cond_2
    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->scheme:Lio/netty/util/AsciiString;

    if-eqz v1, :cond_3

    sget-object v4, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->SCHEME_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, v4, v1, v3}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->appendNameAndValue(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;->te:Lio/netty/util/AsciiString;

    if-eqz v1, :cond_4

    sget-object v3, Lio/grpc/netty/Utils;->TE_HEADER:Lio/netty/util/AsciiString;

    invoke-static {v0, v3, v1, v2}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->appendNameAndValue(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_4
    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->namesAndValuesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
