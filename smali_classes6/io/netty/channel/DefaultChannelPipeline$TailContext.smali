.class final Lio/netty/channel/DefaultChannelPipeline$TailContext;
.super Lio/netty/channel/AbstractChannelHandlerContext;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelInboundHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TailContext"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/DefaultChannelPipeline;


# direct methods
.method public constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/DefaultChannelPipeline;)V
    .locals 2

    iput-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-static {}, Lio/netty/channel/DefaultChannelPipeline;->access$400()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lio/netty/channel/DefaultChannelPipeline$TailContext;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->setAddComplete()Z

    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iget-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {p1}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundChannelActive()V

    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iget-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {p1}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundChannelInactive()V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iget-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {p1}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundChannelReadComplete()V

    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    return-void
.end method

.method public channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iget-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {p1}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledChannelWritabilityChanged()V

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public handler()Lio/netty/channel/ChannelHandler;
    .locals 0

    return-object p0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundUserEventTriggered(Ljava/lang/Object;)V

    return-void
.end method
