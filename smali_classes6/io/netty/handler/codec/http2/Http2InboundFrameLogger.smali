.class public Lio/netty/handler/codec/http2/Http2InboundFrameLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameReader;


# instance fields
.field private final logger:Lio/netty/handler/codec/http2/Http2FrameLogger;

.field private final reader:Lio/netty/handler/codec/http2/Http2FrameReader;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2FrameLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "reader"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameReader;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;->reader:Lio/netty/handler/codec/http2/Http2FrameReader;

    const-string p1, "logger"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameLogger;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;->logger:Lio/netty/handler/codec/http2/Http2FrameLogger;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/codec/http2/Http2InboundFrameLogger;)Lio/netty/handler/codec/http2/Http2FrameLogger;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;->logger:Lio/netty/handler/codec/http2/Http2FrameLogger;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;->reader:Lio/netty/handler/codec/http2/Http2FrameReader;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameReader;->close()V

    return-void
.end method

.method public configuration()Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;->reader:Lio/netty/handler/codec/http2/Http2FrameReader;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameReader;->configuration()Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public readFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2FrameListener;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;->reader:Lio/netty/handler/codec/http2/Http2FrameReader;

    new-instance v1, Lio/netty/handler/codec/http2/Http2InboundFrameLogger$1;

    invoke-direct {v1, p0, p3}, Lio/netty/handler/codec/http2/Http2InboundFrameLogger$1;-><init>(Lio/netty/handler/codec/http2/Http2InboundFrameLogger;Lio/netty/handler/codec/http2/Http2FrameListener;)V

    invoke-interface {v0, p1, p2, v1}, Lio/netty/handler/codec/http2/Http2FrameReader;->readFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2FrameListener;)V

    return-void
.end method
