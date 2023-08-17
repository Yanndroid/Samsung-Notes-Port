.class public interface abstract Lio/netty/handler/codec/http2/Http2LifecycleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract closeStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
.end method

.method public abstract closeStreamLocal(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
.end method

.method public abstract closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
.end method

.method public abstract goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V
.end method

.method public abstract resetStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method
