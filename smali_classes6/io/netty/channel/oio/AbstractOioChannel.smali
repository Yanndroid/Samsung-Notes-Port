.class public abstract Lio/netty/channel/oio/AbstractOioChannel;
.super Lio/netty/channel/AbstractChannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SO_TIMEOUT:I = 0x3e8


# instance fields
.field private final clearReadPendingRunnable:Ljava/lang/Runnable;

.field public readPending:Z

.field public final readTask:Ljava/lang/Runnable;

.field public readWhenInactive:Z


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    new-instance p1, Lio/netty/channel/oio/AbstractOioChannel$1;

    invoke-direct {p1, p0}, Lio/netty/channel/oio/AbstractOioChannel$1;-><init>(Lio/netty/channel/oio/AbstractOioChannel;)V

    iput-object p1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readTask:Ljava/lang/Runnable;

    new-instance p1, Lio/netty/channel/oio/AbstractOioChannel$2;

    invoke-direct {p1, p0}, Lio/netty/channel/oio/AbstractOioChannel$2;-><init>(Lio/netty/channel/oio/AbstractOioChannel;)V

    iput-object p1, p0, Lio/netty/channel/oio/AbstractOioChannel;->clearReadPendingRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final clearReadPending()V
    .locals 3

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->isRegistered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->clearReadPendingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    :goto_1
    return-void
.end method

.method public doBeginRead()V
    .locals 2

    iget-boolean v0, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readWhenInactive:Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
.end method

.method public abstract doRead()V
.end method

.method public isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 0

    instance-of p1, p1, Lio/netty/channel/ThreadPerChannelEventLoop;

    return p1
.end method

.method public isReadPending()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    return v0
.end method

.method public newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 2

    new-instance v0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;-><init>(Lio/netty/channel/oio/AbstractOioChannel;Lio/netty/channel/oio/AbstractOioChannel$1;)V

    return-object v0
.end method

.method public setReadPending(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/oio/AbstractOioChannel$3;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/oio/AbstractOioChannel$3;-><init>(Lio/netty/channel/oio/AbstractOioChannel;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    :goto_1
    return-void
.end method
