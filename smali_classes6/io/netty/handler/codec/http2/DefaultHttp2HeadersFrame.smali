.class public final Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;
.super Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2HeadersFrame;


# instance fields
.field private final endStream:Z

.field private final headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private final padding:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;ZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;ZI)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;-><init>()V

    const-string v0, "headers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Headers;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iput-boolean p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    invoke-static {p3}, Lio/netty/handler/codec/http2/Http2CodecUtil;->verifyPadding(I)V

    iput p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iget-object v2, p1, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    iget-boolean v2, p1, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    iget p1, p1, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public headers()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public isEndStream()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "HEADERS"

    return-object v0
.end method

.method public padding()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    return v0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    move-result-object p1

    return-object p1
.end method

.method public stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;

    return-object p0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
