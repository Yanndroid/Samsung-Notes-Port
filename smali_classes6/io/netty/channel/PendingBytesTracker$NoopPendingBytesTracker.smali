.class final Lio/netty/channel/PendingBytesTracker$NoopPendingBytesTracker;
.super Lio/netty/channel/PendingBytesTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/PendingBytesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopPendingBytesTracker"
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/channel/MessageSizeEstimator$Handle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/PendingBytesTracker;-><init>(Lio/netty/channel/MessageSizeEstimator$Handle;Lio/netty/channel/PendingBytesTracker$1;)V

    return-void
.end method


# virtual methods
.method public decrementPendingOutboundBytes(J)V
    .locals 0

    return-void
.end method

.method public incrementPendingOutboundBytes(J)V
    .locals 0

    return-void
.end method
