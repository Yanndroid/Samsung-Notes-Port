.class final Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;
.super Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WriterIdleTimeoutTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/timeout/IdleStateHandler;


# direct methods
.method public constructor <init>(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-direct {p0, p2}, Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method


# virtual methods
.method public run(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 12

    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v0}, Lio/netty/handler/timeout/IdleStateHandler;->access$000(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v0

    iget-object v2, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$800(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v4}, Lio/netty/handler/timeout/IdleStateHandler;->ticksInNanos()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long v9, v2, v4

    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v0}, Lio/netty/handler/timeout/IdleStateHandler;->access$800(Lio/netty/handler/timeout/IdleStateHandler;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/timeout/IdleStateHandler;->access$902(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/util/concurrent/Future;)Lio/netty/util/concurrent/Future;

    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v0}, Lio/netty/handler/timeout/IdleStateHandler;->access$100(Lio/netty/handler/timeout/IdleStateHandler;)Z

    move-result v0

    iget-object v1, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/handler/timeout/IdleStateHandler;->access$102(Lio/netty/handler/timeout/IdleStateHandler;Z)Z

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-static {v1, p1, v0}, Lio/netty/handler/timeout/IdleStateHandler;->access$1000(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    sget-object v2, Lio/netty/handler/timeout/IdleState;->WRITER_IDLE:Lio/netty/handler/timeout/IdleState;

    invoke-virtual {v1, v2, v0}, Lio/netty/handler/timeout/IdleStateHandler;->newIdleStateEvent(Lio/netty/handler/timeout/IdleState;Z)Lio/netty/handler/timeout/IdleStateEvent;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    invoke-virtual {v1, p1, v0}, Lio/netty/handler/timeout/IdleStateHandler;->channelIdle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/timeout/IdleStateEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lio/netty/handler/timeout/IdleStateHandler;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v6, v0

    move-object v7, p1

    move-object v8, p0

    invoke-virtual/range {v6 .. v11}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/handler/timeout/IdleStateHandler;->access$902(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/util/concurrent/Future;)Lio/netty/util/concurrent/Future;

    :goto_0
    return-void
.end method
