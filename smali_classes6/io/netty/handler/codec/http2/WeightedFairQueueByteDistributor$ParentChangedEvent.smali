.class final Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParentChangedEvent"
.end annotation


# instance fields
.field public final oldParent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

.field public final state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iput-object p2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->oldParent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    return-void
.end method
