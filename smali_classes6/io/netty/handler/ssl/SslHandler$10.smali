.class Lio/netty/handler/ssl/SslHandler$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/ssl/SslHandler;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field public final synthetic val$timeoutFuture:Lio/netty/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Future;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$10;->this$0:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$10;->val$timeoutFuture:Lio/netty/util/concurrent/Future;

    iput-object p3, p0, Lio/netty/handler/ssl/SslHandler$10;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p4, p0, Lio/netty/handler/ssl/SslHandler$10;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 4

    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$10;->val$timeoutFuture:Lio/netty/util/concurrent/Future;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$10;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$2600(Lio/netty/handler/ssl/SslHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$10;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelOutboundInvoker;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$10;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {p1, v0}, Lio/netty/handler/ssl/SslHandler;->access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$10;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$2700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$10;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object p1

    new-instance v2, Lio/netty/handler/ssl/SslHandler$10$1;

    invoke-direct {v2, p0, v0, v1}, Lio/netty/handler/ssl/SslHandler$10$1;-><init>(Lio/netty/handler/ssl/SslHandler$10;J)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v0, v1, v3}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$10;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$2700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    move-result-object v0

    new-instance v1, Lio/netty/handler/ssl/SslHandler$10$2;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/ssl/SslHandler$10$2;-><init>(Lio/netty/handler/ssl/SslHandler$10;Lio/netty/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    :goto_1
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler$10;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
