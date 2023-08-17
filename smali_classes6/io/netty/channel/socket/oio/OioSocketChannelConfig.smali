.class public interface abstract Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/socket/SocketChannelConfig;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getSoTimeout()I
.end method

.method public abstract setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setAllowHalfClosure(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setAutoClose(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setAutoRead(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setKeepAlive(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setPerformancePreferences(III)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setReuseAddress(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setSendBufferSize(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setSoLinger(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setSoTimeout(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setTcpNoDelay(Z)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setTrafficClass(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method

.method public abstract setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioSocketChannelConfig;
.end method
