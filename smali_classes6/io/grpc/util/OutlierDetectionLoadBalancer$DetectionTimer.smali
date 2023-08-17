.class Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetectionTimer"
.end annotation


# instance fields
.field public config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

.field public final synthetic this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;


# direct methods
.method public constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$100(Lio/grpc/util/OutlierDetectionLoadBalancer;)Lio/grpc/internal/TimeProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$002(Lio/grpc/util/OutlierDetectionLoadBalancer;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->swapCounters()V

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    invoke-static {v0}, Lio/grpc/util/a;->a(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v3, v2, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-static {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$000(Lio/grpc/util/OutlierDetectionLoadBalancer;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;->ejectOutliers(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$000(Lio/grpc/util/OutlierDetectionLoadBalancer;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->maybeUnejectOutliers(Ljava/lang/Long;)V

    return-void
.end method
