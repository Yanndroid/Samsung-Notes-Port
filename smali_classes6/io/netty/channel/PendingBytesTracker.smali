.class abstract Lio/netty/channel/PendingBytesTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator$Handle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/PendingBytesTracker$NoopPendingBytesTracker;,
        Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;,
        Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;
    }
.end annotation


# instance fields
.field private final estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;


# direct methods
.method private constructor <init>(Lio/netty/channel/MessageSizeEstimator$Handle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "estimatorHandle"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/MessageSizeEstimator$Handle;

    iput-object p1, p0, Lio/netty/channel/PendingBytesTracker;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/channel/MessageSizeEstimator$Handle;Lio/netty/channel/PendingBytesTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/PendingBytesTracker;-><init>(Lio/netty/channel/MessageSizeEstimator$Handle;)V

    return-void
.end method

.method public static newTracker(Lio/netty/channel/Channel;)Lio/netty/channel/PendingBytesTracker;
    .locals 2

    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/DefaultChannelPipeline;

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;

    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p0

    check-cast p0, Lio/netty/channel/DefaultChannelPipeline;

    invoke-direct {v0, p0}, Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;-><init>(Lio/netty/channel/DefaultChannelPipeline;)V

    return-object v0

    :cond_0
    invoke-interface {p0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    invoke-interface {p0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object p0

    invoke-interface {p0}, Lio/netty/channel/ChannelConfig;->getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;

    move-result-object p0

    invoke-interface {p0}, Lio/netty/channel/MessageSizeEstimator;->newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object p0

    if-nez v0, :cond_1

    new-instance v0, Lio/netty/channel/PendingBytesTracker$NoopPendingBytesTracker;

    invoke-direct {v0, p0}, Lio/netty/channel/PendingBytesTracker$NoopPendingBytesTracker;-><init>(Lio/netty/channel/MessageSizeEstimator$Handle;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;

    invoke-direct {v1, v0, p0}, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;-><init>(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/MessageSizeEstimator$Handle;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract decrementPendingOutboundBytes(J)V
.end method

.method public abstract incrementPendingOutboundBytes(J)V
.end method

.method public final size(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lio/netty/channel/PendingBytesTracker;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    invoke-interface {v0, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
