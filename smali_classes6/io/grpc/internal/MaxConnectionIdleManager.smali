.class public final Lio/grpc/internal/MaxConnectionIdleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MaxConnectionIdleManager$Ticker;
    }
.end annotation


# static fields
.field private static final systemTicker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;


# instance fields
.field private isActive:Z

.field private final maxConnectionIdleInNanos:J

.field private nextIdleMonitorTime:J

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private shutdownDelayed:Z

.field private shutdownFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private shutdownTask:Ljava/lang/Runnable;

.field private final ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/internal/MaxConnectionIdleManager$1;

    invoke-direct {v0}, Lio/grpc/internal/MaxConnectionIdleManager$1;-><init>()V

    sput-object v0, Lio/grpc/internal/MaxConnectionIdleManager;->systemTicker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lio/grpc/internal/MaxConnectionIdleManager;->systemTicker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/internal/MaxConnectionIdleManager;-><init>(JLio/grpc/internal/MaxConnectionIdleManager$Ticker;)V

    return-void
.end method

.method public constructor <init>(JLio/grpc/internal/MaxConnectionIdleManager$Ticker;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    iput-object p3, p0, Lio/grpc/internal/MaxConnectionIdleManager;->ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/internal/MaxConnectionIdleManager;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownDelayed:Z

    return p0
.end method

.method public static synthetic access$002(Lio/grpc/internal/MaxConnectionIdleManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownDelayed:Z

    return p1
.end method

.method public static synthetic access$100(Lio/grpc/internal/MaxConnectionIdleManager;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->isActive:Z

    return p0
.end method

.method public static synthetic access$202(Lio/grpc/internal/MaxConnectionIdleManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method public static synthetic access$300(Lio/grpc/internal/MaxConnectionIdleManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Lio/grpc/internal/MaxConnectionIdleManager;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->nextIdleMonitorTime:J

    return-wide v0
.end method

.method public static synthetic access$500(Lio/grpc/internal/MaxConnectionIdleManager;)Lio/grpc/internal/MaxConnectionIdleManager$Ticker;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    return-object p0
.end method


# virtual methods
.method public onTransportActive()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->isActive:Z

    iput-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownDelayed:Z

    return-void
.end method

.method public onTransportIdle()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->isActive:Z

    iget-object v1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownDelayed:Z

    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    invoke-interface {v0}, Lio/grpc/internal/MaxConnectionIdleManager$Ticker;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->nextIdleMonitorTime:J

    :goto_0
    return-void
.end method

.method public onTransportTermination()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    iput-object p2, p0, Lio/grpc/internal/MaxConnectionIdleManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    invoke-interface {v0}, Lio/grpc/internal/MaxConnectionIdleManager$Ticker;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->nextIdleMonitorTime:J

    new-instance v0, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v1, Lio/grpc/internal/MaxConnectionIdleManager$2;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/MaxConnectionIdleManager$2;-><init>(Lio/grpc/internal/MaxConnectionIdleManager;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownTask:Ljava/lang/Runnable;

    iget-wide v1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
