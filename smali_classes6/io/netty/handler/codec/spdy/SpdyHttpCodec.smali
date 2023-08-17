.class public final Lio/netty/handler/codec/spdy/SpdyHttpCodec;
.super Lio/netty/channel/CombinedChannelDuplexHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/CombinedChannelDuplexHandler<",
        "Lio/netty/handler/codec/spdy/SpdyHttpDecoder;",
        "Lio/netty/handler/codec/spdy/SpdyHttpEncoder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V

    new-instance p2, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-direct {p2, p1}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V

    invoke-direct {p0, v0, p2}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;IZ)V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;

    invoke-direct {v0, p1, p2, p3}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;IZ)V

    new-instance p2, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-direct {p2, p1}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V

    invoke-direct {p0, v0, p2}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    return-void
.end method
