.class public abstract Lio/netty/channel/AbstractEventLoop;
.super Lio/netty/util/concurrent/AbstractEventExecutor;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/EventLoop;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/EventLoopGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;)V

    return-void
.end method


# virtual methods
.method public next()Lio/netty/channel/EventLoop;
    .locals 1

    invoke-super {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    return-object v0
.end method

.method public bridge synthetic next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/AbstractEventLoop;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lio/netty/channel/EventLoopGroup;
    .locals 1

    invoke-super {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;->parent()Lio/netty/util/concurrent/EventExecutorGroup;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoopGroup;

    return-object v0
.end method

.method public bridge synthetic parent()Lio/netty/util/concurrent/EventExecutorGroup;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/AbstractEventLoop;->parent()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    return-object v0
.end method
