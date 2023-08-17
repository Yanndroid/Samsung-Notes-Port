.class public interface abstract Lio/netty/channel/socket/ServerSocketChannelConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelConfig;


# virtual methods
.method public abstract getBacklog()I
.end method

.method public abstract getReceiveBufferSize()I
.end method

.method public abstract isReuseAddress()Z
.end method

.method public abstract setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setAutoRead(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setBacklog(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setConnectTimeoutMillis(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setMaxMessagesPerRead(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setPerformancePreferences(III)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setReceiveBufferSize(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setReuseAddress(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method

.method public abstract setWriteSpinCount(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
.end method
