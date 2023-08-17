.class public interface abstract Lio/netty/channel/ChannelConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAllocator()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public abstract getConnectTimeoutMillis()I
.end method

.method public abstract getMaxMessagesPerRead()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;
.end method

.method public abstract getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getOptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/RecvByteBufAllocator;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getWriteBufferHighWaterMark()I
.end method

.method public abstract getWriteBufferLowWaterMark()I
.end method

.method public abstract getWriteBufferWaterMark()Lio/netty/channel/WriteBufferWaterMark;
.end method

.method public abstract getWriteSpinCount()I
.end method

.method public abstract isAutoClose()Z
.end method

.method public abstract isAutoRead()Z
.end method

.method public abstract setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setAutoClose(Z)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setAutoRead(Z)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation
.end method

.method public abstract setOptions(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;)Z"
        }
    .end annotation
.end method

.method public abstract setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
.end method
