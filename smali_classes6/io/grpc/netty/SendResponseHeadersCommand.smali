.class final Lio/grpc/netty/SendResponseHeadersCommand;
.super Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;
.source "SourceFile"


# instance fields
.field private final headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private final status:Lio/grpc/Status;

.field private final stream:Lio/grpc/netty/StreamIdHolder;


# direct methods
.method private constructor <init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/handler/codec/http2/Http2Headers;Lio/grpc/Status;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;-><init>()V

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/StreamIdHolder;

    iput-object p1, p0, Lio/grpc/netty/SendResponseHeadersCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    const-string p1, "headers"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Headers;

    iput-object p1, p0, Lio/grpc/netty/SendResponseHeadersCommand;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iput-object p3, p0, Lio/grpc/netty/SendResponseHeadersCommand;->status:Lio/grpc/Status;

    return-void
.end method

.method public static createHeaders(Lio/grpc/netty/StreamIdHolder;Lio/netty/handler/codec/http2/Http2Headers;)Lio/grpc/netty/SendResponseHeadersCommand;
    .locals 2

    new-instance v0, Lio/grpc/netty/SendResponseHeadersCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/netty/SendResponseHeadersCommand;-><init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/handler/codec/http2/Http2Headers;Lio/grpc/Status;)V

    return-object v0
.end method

.method public static createTrailers(Lio/grpc/netty/StreamIdHolder;Lio/netty/handler/codec/http2/Http2Headers;Lio/grpc/Status;)Lio/grpc/netty/SendResponseHeadersCommand;
    .locals 2

    new-instance v0, Lio/grpc/netty/SendResponseHeadersCommand;

    const-string v1, "status"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/Status;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/netty/SendResponseHeadersCommand;-><init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/handler/codec/http2/Http2Headers;Lio/grpc/Status;)V

    return-object v0
.end method


# virtual methods
.method public endOfStream()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendResponseHeadersCommand;->status:Lio/grpc/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/grpc/netty/SendResponseHeadersCommand;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/grpc/netty/SendResponseHeadersCommand;

    iget-object v1, p1, Lio/grpc/netty/SendResponseHeadersCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    iget-object v2, p0, Lio/grpc/netty/SendResponseHeadersCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lio/grpc/netty/SendResponseHeadersCommand;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iget-object v2, p0, Lio/grpc/netty/SendResponseHeadersCommand;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lio/grpc/netty/SendResponseHeadersCommand;->status:Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/netty/SendResponseHeadersCommand;->status:Lio/grpc/Status;

    invoke-virtual {p1, v1}, Lio/grpc/Status;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/netty/SendResponseHeadersCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/netty/SendResponseHeadersCommand;->status:Lio/grpc/Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public headers()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendResponseHeadersCommand;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public status()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendResponseHeadersCommand;->status:Lio/grpc/Status;

    return-object v0
.end method

.method public stream()Lio/grpc/netty/StreamIdHolder;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendResponseHeadersCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/grpc/netty/SendResponseHeadersCommand;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/SendResponseHeadersCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    invoke-interface {v1}, Lio/grpc/netty/StreamIdHolder;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/SendResponseHeadersCommand;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/SendResponseHeadersCommand;->status:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
