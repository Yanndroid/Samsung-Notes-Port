.class Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->open0(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

.field public final synthetic val$promise:Lio/netty/util/concurrent/Promise;

.field public final synthetic val$streamChannel:Lio/netty/handler/codec/http2/Http2StreamChannel;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;Lio/netty/util/concurrent/Promise;Lio/netty/handler/codec/http2/Http2StreamChannel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$promise:Lio/netty/util/concurrent/Promise;

    iput-object p3, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$streamChannel:Lio/netty/handler/codec/http2/Http2StreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$promise:Lio/netty/util/concurrent/Promise;

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$streamChannel:Lio/netty/handler/codec/http2/Http2StreamChannel;

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$promise:Lio/netty/util/concurrent/Promise;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$streamChannel:Lio/netty/handler/codec/http2/Http2StreamChannel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$streamChannel:Lio/netty/handler/codec/http2/Http2StreamChannel;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$streamChannel:Lio/netty/handler/codec/http2/Http2StreamChannel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    :goto_1
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
