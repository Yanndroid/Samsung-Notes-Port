.class Lio/grpc/netty/CreateStreamCommand;
.super Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;
.source "SourceFile"


# instance fields
.field private final get:Z

.field private final headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private final shouldBeCountedForInUse:Z

.field private final stream:Lio/grpc/netty/NettyClientStream$TransportState;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/NettyClientStream$TransportState;ZZ)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;-><init>()V

    const-string v0, "stream"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/NettyClientStream$TransportState;

    iput-object p2, p0, Lio/grpc/netty/CreateStreamCommand;->stream:Lio/grpc/netty/NettyClientStream$TransportState;

    const-string p2, "headers"

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Headers;

    iput-object p1, p0, Lio/grpc/netty/CreateStreamCommand;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iput-boolean p3, p0, Lio/grpc/netty/CreateStreamCommand;->shouldBeCountedForInUse:Z

    iput-boolean p4, p0, Lio/grpc/netty/CreateStreamCommand;->get:Z

    return-void
.end method


# virtual methods
.method public headers()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/CreateStreamCommand;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public isGet()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/CreateStreamCommand;->get:Z

    return v0
.end method

.method public shouldBeCountedForInUse()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/CreateStreamCommand;->shouldBeCountedForInUse:Z

    return v0
.end method

.method public stream()Lio/grpc/netty/NettyClientStream$TransportState;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/CreateStreamCommand;->stream:Lio/grpc/netty/NettyClientStream$TransportState;

    return-object v0
.end method
