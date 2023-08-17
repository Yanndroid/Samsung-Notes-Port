.class final Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/traffic/TrafficCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrafficMonitoringTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/traffic/TrafficCounter;


# direct methods
.method private constructor <init>(Lio/netty/handler/traffic/TrafficCounter;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/traffic/TrafficCounter;Lio/netty/handler/traffic/TrafficCounter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;-><init>(Lio/netty/handler/traffic/TrafficCounter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    iget-boolean v0, v0, Lio/netty/handler/traffic/TrafficCounter;->monitorActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    iget-object v1, v0, Lio/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V

    :cond_1
    return-void
.end method
