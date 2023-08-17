.class public abstract Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyStreamFrame;


# instance fields
.field private last:Z

.field private streamId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    return-void
.end method


# virtual methods
.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->last:Z

    return v0
.end method

.method public setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->last:Z

    return-object p0
.end method

.method public setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 1

    const-string v0, "streamId"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    iput p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->streamId:I

    return-object p0
.end method

.method public streamId()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->streamId:I

    return v0
.end method
