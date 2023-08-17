.class Lio/netty/channel/ThreadPerChannelEventLoop$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/ThreadPerChannelEventLoop;->register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/ThreadPerChannelEventLoop;


# direct methods
.method public constructor <init>(Lio/netty/channel/ThreadPerChannelEventLoop;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoop$2;->this$0:Lio/netty/channel/ThreadPerChannelEventLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoop$2;->this$0:Lio/netty/channel/ThreadPerChannelEventLoop;

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/ThreadPerChannelEventLoop;->access$002(Lio/netty/channel/ThreadPerChannelEventLoop;Lio/netty/channel/Channel;)Lio/netty/channel/Channel;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoop$2;->this$0:Lio/netty/channel/ThreadPerChannelEventLoop;

    invoke-virtual {p1}, Lio/netty/channel/ThreadPerChannelEventLoop;->deregister()V

    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/ThreadPerChannelEventLoop$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
