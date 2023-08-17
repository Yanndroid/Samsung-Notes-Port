.class public interface abstract Lio/netty/channel/ChannelInboundHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelHandler;


# virtual methods
.method public abstract channelActive(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
.end method

.method public abstract channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
.end method

.method public abstract userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
.end method
