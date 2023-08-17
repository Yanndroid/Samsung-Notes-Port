.class Lio/netty/handler/ssl/SslHandler$10$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler$10;->operationComplete(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/handler/ssl/SslHandler$10;

.field public final synthetic val$closeNotifyReadTimeoutFuture:Lio/netty/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslHandler$10;Lio/netty/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$10$2;->this$1:Lio/netty/handler/ssl/SslHandler$10;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$10$2;->val$closeNotifyReadTimeoutFuture:Lio/netty/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$10$2;->val$closeNotifyReadTimeoutFuture:Lio/netty/util/concurrent/Future;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$10$2;->this$1:Lio/netty/handler/ssl/SslHandler$10;

    iget-object p1, p1, Lio/netty/handler/ssl/SslHandler$10;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelOutboundInvoker;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$10$2;->this$1:Lio/netty/handler/ssl/SslHandler$10;

    iget-object v0, v0, Lio/netty/handler/ssl/SslHandler$10;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {p1, v0}, Lio/netty/handler/ssl/SslHandler;->access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method
