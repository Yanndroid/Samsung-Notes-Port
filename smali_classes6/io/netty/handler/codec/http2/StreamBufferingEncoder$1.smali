.class Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGoAwayReceived(IJLio/netty/buffer/ByteBuf;)V
    .locals 5

    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    new-instance v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p4, v2, v3, v4}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B

    move-result-object p4

    invoke-direct {v1, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;-><init>(IJ[B)V

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->access$302(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    iget-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-static {p1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->access$300(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    move-result-object p2

    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->access$400(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V

    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    iget-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-static {p1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->access$500(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)V

    return-void
.end method
