.class Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->open(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

.field public final synthetic val$finalCtx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$finalCtx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->access$000(Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;)Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$finalCtx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->open0(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$promise:Lio/netty/util/concurrent/Promise;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    :goto_0
    return-void
.end method
