.class Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;
    }
.end annotation


# instance fields
.field private volatile activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

.field private config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

.field private ejectionTimeMultiplier:I

.field private ejectionTimeNanos:Ljava/lang/Long;

.field private inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

.field private final subchannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$1;)V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    invoke-direct {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$1;)V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    return-void
.end method

.method public static synthetic access$300(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public activeVolume()J
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->successCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->failureCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public addSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannelsEjected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->isEjected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->eject()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannelsEjected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->isEjected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->uneject()V

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->setAddressTracker(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)V

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public decrementEjectionTimeMultiplier()V
    .locals 1

    iget v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    return-void
.end method

.method public ejectSubchannels(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    iget p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    iget-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    invoke-virtual {p2}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->eject()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public failureRate()D
    .locals 4

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->failureCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveVolume()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSubchannels()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public inactiveVolume()J
    .locals 4

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->successCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->failureCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public incrementCallCount(Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v1, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    if-nez v1, :cond_0

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object p1, p1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->successCount:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object p1, p1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->failureCount:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    return-void
.end method

.method public maxEjectionTimeElapsed(J)Z
    .locals 8

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->baseEjectionTimeNanos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->maxEjectionTimeNanos:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v4, v4, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->baseEjectionTimeNanos:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z
    .locals 1

    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->clearAddressTracker()V

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public resetCallCounters()V
    .locals 1

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->reset()V

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->reset()V

    return-void
.end method

.method public resetEjectionTimeMultiplier()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    return-void
.end method

.method public setConfig(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    return-void
.end method

.method public subchannelsEjected()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public successRate()D
    .locals 4

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->successCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveVolume()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public swapCounters()V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->reset()V

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    return-void
.end method

.method public unejectSubchannels()V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not currently ejected"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->uneject()V

    goto :goto_1

    :cond_1
    return-void
.end method
