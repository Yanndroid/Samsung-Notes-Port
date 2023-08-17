.class public abstract Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lio/netty/handler/codec/spdy/SpdyVersion;III)Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    new-instance p2, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;

    invoke-direct {p2, p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V

    return-object p2

    :cond_0
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;III)V

    return-object v0
.end method


# virtual methods
.method public abstract encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract end()V
.end method
