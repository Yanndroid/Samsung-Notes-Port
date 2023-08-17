.class abstract Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/WriteQueue$QueuedCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractQueuedCommand"
.end annotation


# instance fields
.field private final link:Lio/perfmark/Link;

.field private promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->link:Lio/perfmark/Link;

    return-void
.end method


# virtual methods
.method public getLink()Lio/perfmark/Link;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->link:Lio/perfmark/Link;

    return-object v0
.end method

.method public final promise()Lio/netty/channel/ChannelPromise;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->promise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method public final promise(Lio/netty/channel/ChannelPromise;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->promise:Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public final run(Lio/netty/channel/Channel;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, p0, v0}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
