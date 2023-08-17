.class public interface abstract Lio/netty/channel/ChannelOutboundHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelHandler;


# virtual methods
.method public abstract bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract flush(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract read(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
.end method
