.class Lio/netty/handler/codec/http2/Http2FrameCodec$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2FrameCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

.field public final synthetic val$streamVisitor:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->val$streamVisitor:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->val$streamVisitor:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;->visit(Lio/netty/handler/codec/http2/Http2FrameStream;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v1, v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    return v2
.end method
