.class Lio/netty/handler/address/ResolveAddressHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/address/ResolveAddressHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/net/SocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/address/ResolveAddressHandler;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic val$localAddress:Ljava/net/SocketAddress;

.field public final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method public constructor <init>(Lio/netty/handler/address/ResolveAddressHandler;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->this$0:Lio/netty/handler/address/ResolveAddressHandler;

    iput-object p2, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$promise:Lio/netty/channel/ChannelPromise;

    iput-object p3, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p4, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$localAddress:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iget-object v1, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v2, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1, v1, v2}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    iget-object p1, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/address/ResolveAddressHandler$1;->this$0:Lio/netty/handler/address/ResolveAddressHandler;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
