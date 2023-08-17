.class public abstract Lio/netty/channel/AbstractEventLoopGroup;
.super Lio/netty/util/concurrent/AbstractEventExecutorGroup;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/EventLoopGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutorGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract next()Lio/netty/channel/EventLoop;
.end method

.method public bridge synthetic next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/AbstractEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method
