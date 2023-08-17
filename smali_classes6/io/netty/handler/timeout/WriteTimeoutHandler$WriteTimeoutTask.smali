.class final Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/timeout/WriteTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WriteTimeoutTask"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ctx:Lio/netty/channel/ChannelHandlerContext;

.field public next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

.field public prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

.field private final promise:Lio/netty/channel/ChannelPromise;

.field public scheduledFuture:Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/netty/handler/timeout/WriteTimeoutHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/timeout/WriteTimeoutHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lio/netty/handler/timeout/WriteTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->promise:Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    iget-object p1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->scheduledFuture:Lio/netty/util/concurrent/Future;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    iget-object p1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lio/netty/handler/timeout/WriteTimeoutHandler;

    invoke-static {p1, p0}, Lio/netty/handler/timeout/WriteTimeoutHandler;->access$100(Lio/netty/handler/timeout/WriteTimeoutHandler;Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lio/netty/handler/timeout/WriteTimeoutHandler;

    iget-object v1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1}, Lio/netty/handler/timeout/WriteTimeoutHandler;->writeTimedOut(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lio/netty/handler/timeout/WriteTimeoutHandler;

    invoke-static {v0, p0}, Lio/netty/handler/timeout/WriteTimeoutHandler;->access$100(Lio/netty/handler/timeout/WriteTimeoutHandler;Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;)V

    return-void
.end method
