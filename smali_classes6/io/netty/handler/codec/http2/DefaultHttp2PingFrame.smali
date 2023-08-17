.class public Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2PingFrame;


# instance fields
.field private final ack:Z

.field private final content:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->content:J

    iput-boolean p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->ack:Z

    return-void
.end method


# virtual methods
.method public ack()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->ack:Z

    return v0
.end method

.method public content()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->content:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2PingFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/netty/handler/codec/http2/Http2PingFrame;

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->ack:Z

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2PingFrame;->ack()Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->content:J

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2PingFrame;->content()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->ack:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "PING"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->content:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;->ack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
