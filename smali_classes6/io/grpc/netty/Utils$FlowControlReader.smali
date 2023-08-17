.class final Lio/grpc/netty/Utils$FlowControlReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/TransportTracer$FlowControlReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowControlReader"
.end annotation


# instance fields
.field private final connectionStream:Lio/netty/handler/codec/http2/Http2Stream;

.field private final local:Lio/netty/handler/codec/http2/Http2FlowController;

.field private final remote:Lio/netty/handler/codec/http2/Http2FlowController;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/Utils$FlowControlReader;->local:Lio/netty/handler/codec/http2/Http2FlowController;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/Utils$FlowControlReader;->remote:Lio/netty/handler/codec/http2/Http2FlowController;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/Utils$FlowControlReader;->connectionStream:Lio/netty/handler/codec/http2/Http2Stream;

    return-void
.end method


# virtual methods
.method public read()Lio/grpc/internal/TransportTracer$FlowControlWindows;
    .locals 5

    new-instance v0, Lio/grpc/internal/TransportTracer$FlowControlWindows;

    iget-object v1, p0, Lio/grpc/netty/Utils$FlowControlReader;->local:Lio/netty/handler/codec/http2/Http2FlowController;

    iget-object v2, p0, Lio/grpc/netty/Utils$FlowControlReader;->connectionStream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http2/Http2FlowController;->windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lio/grpc/netty/Utils$FlowControlReader;->remote:Lio/netty/handler/codec/http2/Http2FlowController;

    iget-object v4, p0, Lio/grpc/netty/Utils$FlowControlReader;->connectionStream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v3, v4}, Lio/netty/handler/codec/http2/Http2FlowController;->windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/TransportTracer$FlowControlWindows;-><init>(JJ)V

    return-object v0
.end method
