.class public final Lio/grpc/internal/KeepAliveEnforcer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;,
        Lio/grpc/internal/KeepAliveEnforcer$Ticker;
    }
.end annotation


# static fields
.field public static final IMPLICIT_PERMIT_TIME_NANOS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_PING_STRIKES:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final epoch:J

.field private hasOutstandingCalls:Z

.field private lastValidPingTime:J

.field private final minTimeNanos:J

.field private final permitWithoutCalls:Z

.field private pingStrikes:I

.field private final ticker:Lio/grpc/internal/KeepAliveEnforcer$Ticker;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/KeepAliveEnforcer;->IMPLICIT_PERMIT_TIME_NANOS:J

    return-void
.end method

.method public constructor <init>(ZJLjava/util/concurrent/TimeUnit;)V
    .locals 6

    sget-object v5, Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;->INSTANCE:Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/KeepAliveEnforcer;-><init>(ZJLjava/util/concurrent/TimeUnit;Lio/grpc/internal/KeepAliveEnforcer$Ticker;)V

    return-void
.end method

.method public constructor <init>(ZJLjava/util/concurrent/TimeUnit;Lio/grpc/internal/KeepAliveEnforcer$Ticker;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "minTime must be non-negative: %s"

    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    iput-boolean p1, p0, Lio/grpc/internal/KeepAliveEnforcer;->permitWithoutCalls:Z

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    sget-wide p3, Lio/grpc/internal/KeepAliveEnforcer;->IMPLICIT_PERMIT_TIME_NANOS:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/internal/KeepAliveEnforcer;->minTimeNanos:J

    iput-object p5, p0, Lio/grpc/internal/KeepAliveEnforcer;->ticker:Lio/grpc/internal/KeepAliveEnforcer$Ticker;

    invoke-interface {p5}, Lio/grpc/internal/KeepAliveEnforcer$Ticker;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/internal/KeepAliveEnforcer;->epoch:J

    iput-wide p1, p0, Lio/grpc/internal/KeepAliveEnforcer;->lastValidPingTime:J

    return-void
.end method

.method private static compareNanos(JJ)J
    .locals 0

    sub-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public onTransportActive()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->hasOutstandingCalls:Z

    return-void
.end method

.method public onTransportIdle()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->hasOutstandingCalls:Z

    return-void
.end method

.method public pingAcceptable()Z
    .locals 11
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->ticker:Lio/grpc/internal/KeepAliveEnforcer$Ticker;

    invoke-interface {v0}, Lio/grpc/internal/KeepAliveEnforcer$Ticker;->nanoTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lio/grpc/internal/KeepAliveEnforcer;->hasOutstandingCalls:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/grpc/internal/KeepAliveEnforcer;->permitWithoutCalls:Z

    if-nez v2, :cond_1

    iget-wide v7, p0, Lio/grpc/internal/KeepAliveEnforcer;->lastValidPingTime:J

    sget-wide v9, Lio/grpc/internal/KeepAliveEnforcer;->IMPLICIT_PERMIT_TIME_NANOS:J

    add-long/2addr v7, v9

    invoke-static {v7, v8, v0, v1}, Lio/grpc/internal/KeepAliveEnforcer;->compareNanos(JJ)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-gtz v2, :cond_0

    :goto_0
    move v2, v6

    goto :goto_1

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    iget-wide v7, p0, Lio/grpc/internal/KeepAliveEnforcer;->lastValidPingTime:J

    iget-wide v9, p0, Lio/grpc/internal/KeepAliveEnforcer;->minTimeNanos:J

    add-long/2addr v7, v9

    invoke-static {v7, v8, v0, v1}, Lio/grpc/internal/KeepAliveEnforcer;->compareNanos(JJ)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-gtz v2, :cond_0

    goto :goto_0

    :goto_1
    if-nez v2, :cond_3

    iget v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->pingStrikes:I

    add-int/2addr v0, v6

    iput v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->pingStrikes:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    move v5, v6

    :cond_2
    return v5

    :cond_3
    iput-wide v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->lastValidPingTime:J

    return v6
.end method

.method public resetCounters()V
    .locals 2

    iget-wide v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->epoch:J

    iput-wide v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->lastValidPingTime:J

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/internal/KeepAliveEnforcer;->pingStrikes:I

    return-void
.end method
