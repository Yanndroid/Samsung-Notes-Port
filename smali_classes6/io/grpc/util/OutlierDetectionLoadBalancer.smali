.class public final Lio/grpc/util/OutlierDetectionLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;
    }
.end annotation

.annotation build Lio/grpc/Internal;
.end annotation


# static fields
.field private static final ADDRESS_TRACKER_ATTR_KEY:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final childHelper:Lio/grpc/LoadBalancer$Helper;

.field private detectionTimerHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

.field private detectionTimerStartNanos:Ljava/lang/Long;

.field private final switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

.field private final syncContext:Lio/grpc/SynchronizationContext;

.field private timeProvider:Lio/grpc/internal/TimeProvider;

.field private final timeService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "addressTrackerKey"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->ADDRESS_TRACKER_ATTR_KEY:Lio/grpc/Attributes$Key;

    return-void
.end method

.method public constructor <init>(Lio/grpc/LoadBalancer$Helper;Lio/grpc/internal/TimeProvider;)V
    .locals 2

    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;

    const-string v1, "helper"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Helper;

    invoke-direct {v0, p0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$Helper;)V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->childHelper:Lio/grpc/LoadBalancer$Helper;

    new-instance v1, Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-direct {v1, v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-direct {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Helper;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object v0

    const-string v1, "syncContext"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/SynchronizationContext;

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Helper;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string v0, "timeService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/util/OutlierDetectionLoadBalancer;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic access$002(Lio/grpc/util/OutlierDetectionLoadBalancer;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    return-object p1
.end method

.method public static synthetic access$100(Lio/grpc/util/OutlierDetectionLoadBalancer;)Lio/grpc/internal/TimeProvider;
    .locals 0

    iget-object p0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-object p0
.end method

.method public static synthetic access$200(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->hasSingleAddress(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400()Lio/grpc/Attributes$Key;
    .locals 1

    sget-object v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->ADDRESS_TRACKER_ATTR_KEY:Lio/grpc/Attributes$Key;

    return-object v0
.end method

.method public static synthetic access$800(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackersWithVolume(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static hasSingleAddress(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v3, :cond_0

    return v0

    :cond_1
    return v3
.end method

.method private static trackersWithVolume(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;",
            "I)",
            "Ljava/util/List<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveVolume()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z
    .locals 11

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getLoadBalancingPolicyConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v3}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ForwardingMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v2, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->updateTrackerConfigs(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v2, v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->putNewTrackers(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;Ljava/util/Collection;)V

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    iget-object v2, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    invoke-virtual {v2}, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->getProvider()Lio/grpc/LoadBalancerProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/util/GracefulSwitchLoadBalancer;->switchTo(Lio/grpc/LoadBalancer$Factory;)V

    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->outlierDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    if-nez v1, :cond_1

    iget-object v1, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->intervalNanos:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iget-object v3, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->intervalNanos:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeProvider:Lio/grpc/internal/TimeProvider;

    invoke-interface {v5}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v5

    iget-object v7, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->resetCallCounters()V

    :cond_2
    iget-object v3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v4, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;

    invoke-direct {v4, p0, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->intervalNanos:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v10, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v3 .. v10}, Lio/grpc/SynchronizationContext;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->cancelTracking()V

    :cond_4
    :goto_2
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->toBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    invoke-virtual {v0}, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->getConfig()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/grpc/util/ForwardingLoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    const/4 p1, 0x1

    return p1
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-virtual {v0, p1}, Lio/grpc/util/ForwardingLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-virtual {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->shutdown()V

    return-void
.end method
