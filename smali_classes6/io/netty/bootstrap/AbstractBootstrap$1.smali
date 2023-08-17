.class Lio/netty/bootstrap/AbstractBootstrap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/AbstractBootstrap;->doBind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/bootstrap/AbstractBootstrap;

.field public final synthetic val$channel:Lio/netty/channel/Channel;

.field public final synthetic val$localAddress:Ljava/net/SocketAddress;

.field public final synthetic val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

.field public final synthetic val$regFuture:Lio/netty/channel/ChannelFuture;


# direct methods
.method public constructor <init>(Lio/netty/bootstrap/AbstractBootstrap;Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->this$0:Lio/netty/bootstrap/AbstractBootstrap;

    iput-object p2, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    iput-object p3, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$regFuture:Lio/netty/channel/ChannelFuture;

    iput-object p4, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$channel:Lio/netty/channel/Channel;

    iput-object p5, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$localAddress:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-virtual {p1}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;->registered()V

    iget-object p1, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$regFuture:Lio/netty/channel/ChannelFuture;

    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$channel:Lio/netty/channel/Channel;

    iget-object v1, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v2, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-static {p1, v0, v1, v2}, Lio/netty/bootstrap/AbstractBootstrap;->access$000(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
