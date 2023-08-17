.class final Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;
.super Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NioMessageUnsafe"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final readBuf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/channel/nio/AbstractNioMessageChannel;

    return-void
.end method

.method private constructor <init>(Lio/netty/channel/nio/AbstractNioMessageChannel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/channel/nio/AbstractNioMessageChannel;Lio/netty/channel/nio/AbstractNioMessageChannel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioMessageChannel;)V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 10

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iget-object v7, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-virtual {v6, v7}, Lio/netty/channel/nio/AbstractNioMessageChannel;->doReadMessages(Ljava/util/List;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    if-gez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    invoke-interface {v2, v6}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v6, v2}, Lio/netty/channel/nio/AbstractNioMessageChannel;->continueReading(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    :goto_1
    move v6, v5

    :goto_2
    :try_start_1
    iget-object v7, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_3

    iget-object v9, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iput-boolean v5, v9, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    iget-object v9, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v2, v3}, Lio/netty/channel/nio/AbstractNioMessageChannel;->closeOnReadError(Ljava/lang/Throwable;)Z

    move-result v6

    invoke-interface {v1, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    :cond_4
    if-eqz v6, :cond_5

    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iput-boolean v4, v1, Lio/netty/channel/nio/AbstractNioMessageChannel;->inputShutdown:Z

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iget-boolean v1, v1, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    :cond_6
    return-void

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iget-boolean v2, v2, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez v2, :cond_7

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    :cond_7
    throw v1
.end method
