.class Lio/netty/bootstrap/ServerBootstrap$1;
.super Lio/netty/channel/ChannelInitializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/ServerBootstrap;->init(Lio/netty/channel/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/bootstrap/ServerBootstrap;

.field public final synthetic val$currentChildAttrs:[Ljava/util/Map$Entry;

.field public final synthetic val$currentChildGroup:Lio/netty/channel/EventLoopGroup;

.field public final synthetic val$currentChildHandler:Lio/netty/channel/ChannelHandler;

.field public final synthetic val$currentChildOptions:[Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Lio/netty/bootstrap/ServerBootstrap;Lio/netty/channel/EventLoopGroup;Lio/netty/channel/ChannelHandler;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lio/netty/bootstrap/ServerBootstrap$1;->this$0:Lio/netty/bootstrap/ServerBootstrap;

    iput-object p2, p0, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildGroup:Lio/netty/channel/EventLoopGroup;

    iput-object p3, p0, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildHandler:Lio/netty/channel/ChannelHandler;

    iput-object p4, p0, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildOptions:[Ljava/util/Map$Entry;

    iput-object p5, p0, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildAttrs:[Ljava/util/Map$Entry;

    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initChannel(Lio/netty/channel/Channel;)V
    .locals 4

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap$1;->this$0:Lio/netty/bootstrap/ServerBootstrap;

    invoke-static {v1}, Lio/netty/bootstrap/ServerBootstrap;->access$000(Lio/netty/bootstrap/ServerBootstrap;)Lio/netty/bootstrap/ServerBootstrapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/bootstrap/AbstractBootstrapConfig;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    new-instance v2, Lio/netty/bootstrap/ServerBootstrap$1$1;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/bootstrap/ServerBootstrap$1$1;-><init>(Lio/netty/bootstrap/ServerBootstrap$1;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/Channel;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
