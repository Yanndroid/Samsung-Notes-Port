.class public Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT_BACK_OFF_RATE:J = 0xaL

.field public static final DEFAULT_INITIAL_EXPIRY_IN_MILLIS:J

.field public static final DEFAULT_MAX_EXPIRY_IN_MILLIS:J


# instance fields
.field private final backOffRate:J

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final initialExpiryInMillis:J

.field private final maxExpiryInMillis:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->DEFAULT_INITIAL_EXPIRY_IN_MILLIS:J

    const-wide/32 v1, 0x15180

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->DEFAULT_MAX_EXPIRY_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 8

    sget-wide v4, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->DEFAULT_INITIAL_EXPIRY_IN_MILLIS:J

    sget-wide v6, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->DEFAULT_MAX_EXPIRY_IN_MILLIS:J

    const-wide/16 v2, 0xa

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;JJJ)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;JJJ)V
    .locals 8

    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->createThreadPoolFromCacheConfig(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "BackOffRate"

    invoke-static {p2, p3, p1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->backOffRate:J

    const-string p1, "InitialExpiryInMillis"

    invoke-static {p4, p5, p1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->initialExpiryInMillis:J

    const-string p1, "MaxExpiryInMillis"

    invoke-static {p6, p7, p1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->maxExpiryInMillis:J

    return-void
.end method

.method public static checkNotNegative(Ljava/lang/String;J)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " may not be negative"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " may not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createThreadPoolFromCacheConfig(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    return-object v0
.end method


# virtual methods
.method public calculateDelayInMillis(I)J
    .locals 6

    if-lez p1, :cond_0

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->initialExpiryInMillis:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->backOffRate:J

    long-to-double v2, v2

    add-int/lit8 p1, p1, -0x1

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->maxExpiryInMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

.method public getBackOffRate()J
    .locals 2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->backOffRate:J

    return-wide v0
.end method

.method public getInitialExpiryInMillis()J
    .locals 2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->initialExpiryInMillis:J

    return-wide v0
.end method

.method public getMaxExpiryInMillis()J
    .locals 2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->maxExpiryInMillis:J

    return-wide v0
.end method

.method public schedule(Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;)V
    .locals 4

    const-string v0, "RevalidationRequest"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->getConsecutiveFailedAttempts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->calculateDelayInMillis(I)J

    move-result-wide v0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/ExponentialBackOffSchedulingStrategy;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p1, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
