.class final Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateOnlyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;

.field private static final serialVersionUID:J = -0x42b5aba775340c6eL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;->INSTANCE:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)I
    .locals 2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->wasStreamReservedOrActivated()Z

    move-result v0

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->wasStreamReservedOrActivated()Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_1
    iget v0, p2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->dependencyTreeDepth:I

    iget v1, p1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->dependencyTreeDepth:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamId:I

    iget p2, p2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamId:I

    sub-int v0, p1, p2

    :goto_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    check-cast p2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;->compare(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)I

    move-result p1

    return p1
.end method
