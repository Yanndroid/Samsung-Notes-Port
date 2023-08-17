.class final Lio/netty/bootstrap/AbstractBootstrap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/AbstractBootstrap;->doBind0(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$channel:Lio/netty/channel/Channel;

.field public final synthetic val$localAddress:Ljava/net/SocketAddress;

.field public final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field public final synthetic val$regFuture:Lio/netty/channel/ChannelFuture;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$regFuture:Lio/netty/channel/ChannelFuture;

    iput-object p2, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$channel:Lio/netty/channel/Channel;

    iput-object p3, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$localAddress:Ljava/net/SocketAddress;

    iput-object p4, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$regFuture:Lio/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$channel:Lio/netty/channel/Channel;

    iget-object v1, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v2, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, v1, v2}, Lio/netty/channel/ChannelOutboundInvoker;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lio/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$promise:Lio/netty/channel/ChannelPromise;

    iget-object v1, p0, Lio/netty/bootstrap/AbstractBootstrap$2;->val$regFuture:Lio/netty/channel/ChannelFuture;

    invoke-interface {v1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    :goto_0
    return-void
.end method
