.class final Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;
.super Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeadersFrame"
.end annotation


# instance fields
.field public final endOfStream:Z

.field public final exclusive:Z

.field public final headers:Lio/netty/handler/codec/http2/Http2Headers;

.field public final padding:I

.field public final streamDependency:I

.field public final synthetic this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

.field public final weight:S


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-direct {p0, p8}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;-><init>(Lio/netty/channel/ChannelPromise;)V

    iput-object p2, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iput p3, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->streamDependency:I

    iput-short p4, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->weight:S

    iput-boolean p5, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->exclusive:Z

    iput p6, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->padding:I

    iput-boolean p7, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->endOfStream:Z

    return-void
.end method


# virtual methods
.method public send(Lio/netty/channel/ChannelHandlerContext;I)V
    .locals 10

    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    iget-object v3, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iget v4, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->streamDependency:I

    iget-short v5, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->weight:S

    iget-boolean v6, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->exclusive:Z

    iget v7, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->padding:I

    iget-boolean v8, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;->endOfStream:Z

    iget-object v9, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;->promise:Lio/netty/channel/ChannelPromise;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
