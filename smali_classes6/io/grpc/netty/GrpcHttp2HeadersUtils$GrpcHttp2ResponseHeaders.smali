.class final Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2ResponseHeaders;
.super Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/GrpcHttp2HeadersUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrpcHttp2ResponseHeaders"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2ResponseHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->requireAsciiString(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->validateName(Lio/netty/util/AsciiString;)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-static {p2}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->requireAsciiString(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->add(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->requireAsciiString(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->get(Lio/netty/util/AsciiString;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2ResponseHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2ResponseHeaders;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->namesAndValuesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
