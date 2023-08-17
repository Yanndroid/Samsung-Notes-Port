.class Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/Channel$Unsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;


# direct methods
.method public constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginRead()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->beginRead()V

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object v0, v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object p1, p1, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public close(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object p1, p1, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public closeForcibly()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeForcibly()V

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object v0, v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object p1, p1, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->deregister(Lio/netty/channel/ChannelPromise;)V

    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object p1, p1, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->disconnect(Lio/netty/channel/ChannelPromise;)V

    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object p1, p1, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->flush()V

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object v0, v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    return-object v0
.end method

.method public recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->register(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelPromise;)V

    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object p1, p1, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;->this$1:Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object p1, p1, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    return-void
.end method
