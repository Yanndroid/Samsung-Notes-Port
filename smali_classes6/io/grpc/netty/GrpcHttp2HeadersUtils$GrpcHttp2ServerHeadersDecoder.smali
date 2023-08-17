.class final Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2ServerHeadersDecoder;
.super Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/GrpcHttp2HeadersUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrpcHttp2ServerHeadersDecoder"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZJ)V

    return-void
.end method


# virtual methods
.method public newHeaders()Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;
    .locals 2

    new-instance v0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->numberOfHeadersGuess()I

    move-result v1

    invoke-direct {v0, v1}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2RequestHeaders;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic newHeaders()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2ServerHeadersDecoder;->newHeaders()Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;

    move-result-object v0

    return-object v0
.end method
