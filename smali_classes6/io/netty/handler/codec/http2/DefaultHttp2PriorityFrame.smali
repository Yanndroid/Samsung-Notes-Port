.class public final Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;
.super Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2PriorityFrame;


# instance fields
.field private final exclusive:Z

.field private final streamDependency:I

.field private final weight:S


# direct methods
.method public constructor <init>(ISZ)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;-><init>()V

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    iput-short p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    iput-boolean p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    iget v2, p1, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    if-ne v0, v2, :cond_1

    iget-short v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    iget-short v2, p1, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    iget-boolean p1, p1, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public exclusive()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "PRIORITY_FRAME"

    return-object v0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    move-result-object p1

    return-object p1
.end method

.method public stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;

    return-object p0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2PriorityFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    move-result-object p1

    return-object p1
.end method

.method public streamDependency()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultHttp2PriorityFrame(stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamDependency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weight()S
    .locals 1

    iget-short v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    return v0
.end method
