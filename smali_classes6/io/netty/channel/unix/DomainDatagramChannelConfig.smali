.class public interface abstract Lio/netty/channel/unix/DomainDatagramChannelConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelConfig;


# virtual methods
.method public abstract getSendBufferSize()I
.end method

.method public abstract setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract setAutoClose(Z)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract setAutoRead(Z)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract setConnectTimeoutMillis(I)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract setMaxMessagesPerRead(I)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract setSendBufferSize(I)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract setWriteSpinCount(I)Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method
