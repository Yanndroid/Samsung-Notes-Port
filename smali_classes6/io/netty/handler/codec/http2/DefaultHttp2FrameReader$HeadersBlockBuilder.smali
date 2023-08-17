.class public Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadersBlockBuilder"
.end annotation


# instance fields
.field private headerBlock:Lio/netty/buffer/ByteBuf;

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private headerSizeExceeded()V
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->close()V

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)Lio/netty/handler/codec/http2/Http2HeadersDecoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2HeadersDecoder;->configuration()Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderListSizeGoAway()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->headerListSizeExceeded(J)V

    return-void
.end method


# virtual methods
.method public final addFragment(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBufAllocator;Z)V
    .locals 4

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_2

    int-to-long v0, p2

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)Lio/netty/handler/codec/http2/Http2HeadersDecoder;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2HeadersDecoder;->configuration()Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderListSizeGoAway()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerSizeExceeded()V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p3, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    return-void

    :cond_2
    iget-object p4, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-static {p4}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)Lio/netty/handler/codec/http2/Http2HeadersDecoder;

    move-result-object p4

    invoke-interface {p4}, Lio/netty/handler/codec/http2/Http2HeadersDecoder;->configuration()Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;

    move-result-object p4

    invoke-interface {p4}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderListSizeGoAway()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iget-object p4, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p4

    int-to-long v2, p4

    cmp-long p4, v0, v2

    if-gez p4, :cond_3

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerSizeExceeded()V

    :cond_3
    iget-object p4, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p4, p2}, Lio/netty/buffer/ByteBuf;->isWritable(I)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_4
    iget-object p4, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p4

    add-int/2addr p4, p2

    invoke-interface {p3, p4}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p3

    iget-object p4, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, p4}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    iput-object p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    :goto_1
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    iput-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;->access$302(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;)Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;

    return-void
.end method

.method public headers()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)Lio/netty/handler/codec/http2/Http2HeadersDecoder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->headerBlock:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2HeadersDecoder;->decodeHeaders(ILio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->close()V

    throw v0
.end method
