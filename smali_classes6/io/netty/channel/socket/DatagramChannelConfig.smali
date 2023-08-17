.class public interface abstract Lio/netty/channel/socket/DatagramChannelConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelConfig;


# virtual methods
.method public abstract getInterface()Ljava/net/InetAddress;
.end method

.method public abstract getNetworkInterface()Ljava/net/NetworkInterface;
.end method

.method public abstract getReceiveBufferSize()I
.end method

.method public abstract getSendBufferSize()I
.end method

.method public abstract getTimeToLive()I
.end method

.method public abstract getTrafficClass()I
.end method

.method public abstract isBroadcast()Z
.end method

.method public abstract isLoopbackModeDisabled()Z
.end method

.method public abstract isReuseAddress()Z
.end method

.method public abstract setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setAutoClose(Z)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setBroadcast(Z)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setConnectTimeoutMillis(I)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setMaxMessagesPerRead(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setReceiveBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setReuseAddress(Z)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setSendBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setTimeToLive(I)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setTrafficClass(I)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract setWriteSpinCount(I)Lio/netty/channel/socket/DatagramChannelConfig;
.end method
