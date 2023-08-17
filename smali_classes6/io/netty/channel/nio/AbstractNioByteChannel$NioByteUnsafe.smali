.class public Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;
.super Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NioByteUnsafe"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/nio/AbstractNioByteChannel;


# direct methods
.method public constructor <init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    return-void
.end method

.method private closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->isInputShutdown0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->access$000(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->access$102(Lio/netty/channel/nio/AbstractNioByteChannel;Z)Z

    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    :goto_0
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    :goto_1
    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_1
    :goto_0
    invoke-interface {p5}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    if-nez p4, :cond_2

    instance-of p2, p3, Ljava/lang/OutOfMemoryError;

    if-nez p2, :cond_2

    instance-of p2, p3, Ljava/io/IOException;

    if-eqz p2, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final read()V
    .locals 9

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPending()V

    return-void

    :cond_0
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v7

    invoke-interface {v7, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v7, v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v6, v5}, Lio/netty/channel/nio/AbstractNioByteChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v6

    invoke-interface {v7, v6}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v6

    const/4 v8, 0x1

    if-gtz v6, :cond_4

    invoke-interface {v5}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move v8, v4

    :goto_0
    if-eqz v8, :cond_3

    :try_start_3
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iput-boolean v4, v1, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v4, v2

    move v6, v8

    goto :goto_3

    :cond_3
    :goto_1
    move v4, v8

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-interface {v7, v8}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iput-boolean v4, v6, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    invoke-interface {v3, v5}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_2
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    invoke-interface {v3}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v1, v1, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :catchall_1
    move-exception v1

    move v6, v4

    move-object v4, v5

    move-object v5, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v5, v1

    move v6, v4

    move-object v4, v2

    :goto_3
    move-object v2, p0

    :try_start_6
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v1, v1, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_4
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    :cond_6
    return-void

    :catchall_3
    move-exception v1

    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v2, v2, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez v2, :cond_7

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    :cond_7
    throw v1
.end method
