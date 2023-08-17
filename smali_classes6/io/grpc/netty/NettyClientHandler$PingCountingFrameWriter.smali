.class Lio/grpc/netty/NettyClientHandler$PingCountingFrameWriter;
.super Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/AbstractNettyHandler$PingLimiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyClientHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PingCountingFrameWriter"
.end annotation


# instance fields
.field private pingCount:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2FrameWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;-><init>(Lio/netty/handler/codec/http2/Http2FrameWriter;)V

    return-void
.end method


# virtual methods
.method public isPingAllowed()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/NettyClientHandler$PingCountingFrameWriter;->pingCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/netty/NettyClientHandler$PingCountingFrameWriter;->pingCount:I

    :cond_0
    invoke-super/range {p0 .. p6}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/netty/NettyClientHandler$PingCountingFrameWriter;->pingCount:I

    invoke-super/range {p0 .. p9}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/netty/NettyClientHandler$PingCountingFrameWriter;->pingCount:I

    invoke-super/range {p0 .. p6}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    if-nez p2, :cond_0

    iget v0, p0, Lio/grpc/netty/NettyClientHandler$PingCountingFrameWriter;->pingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/netty/NettyClientHandler$PingCountingFrameWriter;->pingCount:I

    :cond_0
    invoke-super/range {p0 .. p5}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeWindowUpdate(Lio/netty/channel/ChannelHandlerContext;IILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/netty/NettyClientHandler$PingCountingFrameWriter;->pingCount:I

    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeWindowUpdate(Lio/netty/channel/ChannelHandlerContext;IILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method
