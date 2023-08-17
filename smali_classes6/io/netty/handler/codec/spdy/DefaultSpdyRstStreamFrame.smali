.class public Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;
.super Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;


# instance fields
.field private status:Lio/netty/handler/codec/spdy/SpdyStreamStatus;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-static {p2}, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->valueOf(I)Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    return-void
.end method

.method public constructor <init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;-><init>(I)V

    invoke-virtual {p0, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStatus(Lio/netty/handler/codec/spdy/SpdyStreamStatus;)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    return-void
.end method


# virtual methods
.method public setLast(Z)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    return-object p0
.end method

.method public bridge synthetic setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(Lio/netty/handler/codec/spdy/SpdyStreamStatus;)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object p0
.end method

.method public setStreamId(I)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    return-object p0
.end method

.method public bridge synthetic setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    move-result-object p1

    return-object p1
.end method

.method public status()Lio/netty/handler/codec/spdy/SpdyStreamStatus;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--> Stream-ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->streamId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status()Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
