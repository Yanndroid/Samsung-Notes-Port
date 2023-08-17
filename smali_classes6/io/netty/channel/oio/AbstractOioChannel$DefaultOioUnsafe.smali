.class final Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/oio/AbstractOioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultOioUnsafe"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/oio/AbstractOioChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/oio/AbstractOioChannel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/channel/oio/AbstractOioChannel;Lio/netty/channel/oio/AbstractOioChannel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;-><init>(Lio/netty/channel/oio/AbstractOioChannel;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    invoke-interface {p3}, Lio/netty/util/concurrent/Promise;->setUncancellable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->ensureOpen(Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    iget-object v1, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-virtual {v1, p1, p2}, Lio/netty/channel/oio/AbstractOioChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    iget-object p2, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-interface {p2}, Lio/netty/channel/Channel;->isActive()Z

    move-result p2

    invoke-virtual {p0, p3}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-virtual {p2}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p2, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeIfClosed()V

    :cond_1
    :goto_0
    return-void
.end method
