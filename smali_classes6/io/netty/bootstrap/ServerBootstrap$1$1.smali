.class Lio/netty/bootstrap/ServerBootstrap$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/ServerBootstrap$1;->initChannel(Lio/netty/channel/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/bootstrap/ServerBootstrap$1;

.field public final synthetic val$ch:Lio/netty/channel/Channel;

.field public final synthetic val$pipeline:Lio/netty/channel/ChannelPipeline;


# direct methods
.method public constructor <init>(Lio/netty/bootstrap/ServerBootstrap$1;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/Channel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->this$1:Lio/netty/bootstrap/ServerBootstrap$1;

    iput-object p2, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->val$pipeline:Lio/netty/channel/ChannelPipeline;

    iput-object p3, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->val$ch:Lio/netty/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->val$pipeline:Lio/netty/channel/ChannelPipeline;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelHandler;

    new-instance v8, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;

    iget-object v3, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->val$ch:Lio/netty/channel/Channel;

    iget-object v2, p0, Lio/netty/bootstrap/ServerBootstrap$1$1;->this$1:Lio/netty/bootstrap/ServerBootstrap$1;

    iget-object v4, v2, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildGroup:Lio/netty/channel/EventLoopGroup;

    iget-object v5, v2, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildHandler:Lio/netty/channel/ChannelHandler;

    iget-object v6, v2, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildOptions:[Ljava/util/Map$Entry;

    iget-object v7, v2, Lio/netty/bootstrap/ServerBootstrap$1;->val$currentChildAttrs:[Ljava/util/Map$Entry;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/EventLoopGroup;Lio/netty/channel/ChannelHandler;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
