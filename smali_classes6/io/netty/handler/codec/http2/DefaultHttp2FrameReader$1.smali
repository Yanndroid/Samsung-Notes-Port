.class Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;
.super Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;->readHeadersFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;ILio/netty/handler/codec/http2/Http2FrameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic val$exclusive:Z

.field public final synthetic val$headersFlags:Lio/netty/handler/codec/http2/Http2Flags;

.field public final synthetic val$headersStreamId:I

.field public final synthetic val$padding:I

.field public final synthetic val$streamDependency:I

.field public final synthetic val$weight:S


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;ILio/netty/channel/ChannelHandlerContext;ISZILio/netty/handler/codec/http2/Http2Flags;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$headersStreamId:I

    iput-object p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput p4, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$streamDependency:I

    iput-short p5, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$weight:S

    iput-boolean p6, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$exclusive:Z

    iput p7, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$padding:I

    iput-object p8, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$headersFlags:Lio/netty/handler/codec/http2/Http2Flags;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;)V

    return-void
.end method


# virtual methods
.method public getStreamId()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$headersStreamId:I

    return v0
.end method

.method public processFragment(ZLio/netty/buffer/ByteBuf;ILio/netty/handler/codec/http2/Http2FrameListener;)V
    .locals 11

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;->headersBlockBuilder()Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1, p1}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->addFragment(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBufAllocator;Z)V

    if-eqz p1, :cond_0

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$headersStreamId:I

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v5

    iget v6, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$streamDependency:I

    iget-short v7, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$weight:S

    iget-boolean v8, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$exclusive:Z

    iget v9, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$padding:I

    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;->val$headersFlags:Lio/netty/handler/codec/http2/Http2Flags;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Flags;->endOfStream()Z

    move-result v10

    move-object v2, p4

    invoke-interface/range {v2 .. v10}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    :cond_0
    return-void
.end method
