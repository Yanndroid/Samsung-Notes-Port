.class Lio/netty/handler/codec/spdy/SpdyFrameCodec$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/spdy/SpdyFrameCodec;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/spdy/SpdyFrameCodec;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyFrameCodec;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec$1;->this$0:Lio/netty/handler/codec/spdy/SpdyFrameCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 0

    iget-object p1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec$1;->this$0:Lio/netty/handler/codec/spdy/SpdyFrameCodec;

    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->access$000(Lio/netty/handler/codec/spdy/SpdyFrameCodec;)Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;->end()V

    iget-object p1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec$1;->this$0:Lio/netty/handler/codec/spdy/SpdyFrameCodec;

    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->access$100(Lio/netty/handler/codec/spdy/SpdyFrameCodec;)Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;->end()V

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/SpdyFrameCodec$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
