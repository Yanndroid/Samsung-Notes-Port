.class final Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;
.super Lio/netty/channel/PendingBytesTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/PendingBytesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelOutboundBufferPendingBytesTracker"
.end annotation


# instance fields
.field private final buffer:Lio/netty/channel/ChannelOutboundBuffer;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/MessageSizeEstimator$Handle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lio/netty/channel/PendingBytesTracker;-><init>(Lio/netty/channel/MessageSizeEstimator$Handle;Lio/netty/channel/PendingBytesTracker$1;)V

    iput-object p1, p0, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    return-void
.end method


# virtual methods
.method public decrementPendingOutboundBytes(J)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    return-void
.end method

.method public incrementPendingOutboundBytes(J)V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(J)V

    return-void
.end method
