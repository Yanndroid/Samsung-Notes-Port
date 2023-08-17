.class public Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;
.super Lio/netty/channel/socket/DefaultServerSocketChannelConfig;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/channel/socket/ServerSocketChannel;Ljava/net/ServerSocket;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;-><init>(Lio/netty/channel/socket/ServerSocketChannel;Ljava/net/ServerSocket;)V

    new-instance p1, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/socket/oio/OioServerSocketChannel;Ljava/net/ServerSocket;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;-><init>(Lio/netty/channel/socket/ServerSocketChannel;Ljava/net/ServerSocket;)V

    new-instance p1, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    return-void
.end method


# virtual methods
.method public autoReadCleared()V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    instance-of v1, v0, Lio/netty/channel/socket/oio/OioServerSocketChannel;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-virtual {v0}, Lio/netty/channel/socket/oio/OioServerSocketChannel;->clearReadPending0()V

    :cond_0
    return-void
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->getSoTimeout()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOptions()Ljava/util/Map;
    .locals 4
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

    invoke-super {p0}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/DefaultChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setBacklog(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setBacklog(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setBacklog(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setBacklog(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    sget-object v0, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setSoTimeout(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setPerformancePreferences(III)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setPerformancePreferences(III)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setReceiveBufferSize(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setReuseAddress(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReuseAddress(Z)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public setSoTimeout(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->javaSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method
