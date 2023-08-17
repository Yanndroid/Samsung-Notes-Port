.class final Lio/netty/channel/DefaultChannelHandlerContext;
.super Lio/netty/channel/AbstractChannelHandlerContext;
.source "SourceFile"


# instance fields
.field private final handler:Lio/netty/channel/ChannelHandler;


# direct methods
.method public constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)V
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/AbstractChannelHandlerContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p4, p0, Lio/netty/channel/DefaultChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    return-void
.end method


# virtual methods
.method public handler()Lio/netty/channel/ChannelHandler;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    return-object v0
.end method
