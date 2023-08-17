.class public interface abstract Lio/netty/channel/socket/DuplexChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/Channel;


# virtual methods
.method public abstract isInputShutdown()Z
.end method

.method public abstract isOutputShutdown()Z
.end method

.method public abstract isShutdown()Z
.end method

.method public abstract shutdown()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownInput()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownOutput()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method
