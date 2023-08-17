.class public Lio/netty/handler/timeout/ReadTimeoutHandler;
.super Lio/netty/handler/timeout/IdleStateHandler;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/timeout/ReadTimeoutHandler;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/timeout/IdleStateHandler;-><init>(JJJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public final channelIdle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/timeout/IdleStateEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/timeout/ReadTimeoutHandler;->readTimedOut(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public readTimedOut(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/timeout/ReadTimeoutHandler;->closed:Z

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/handler/timeout/ReadTimeoutException;->INSTANCE:Lio/netty/handler/timeout/ReadTimeoutException;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/timeout/ReadTimeoutHandler;->closed:Z

    :cond_0
    return-void
.end method
