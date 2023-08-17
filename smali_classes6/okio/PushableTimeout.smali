.class final Lokio/PushableTimeout;
.super Lokio/Timeout;
.source "SourceFile"


# instance fields
.field private originalDeadlineNanoTime:J

.field private originalHasDeadline:Z

.field private originalTimeoutNanos:J

.field private pushed:Lokio/Timeout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public pop()V
    .locals 4

    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    iget-wide v1, p0, Lokio/PushableTimeout;->originalTimeoutNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    iget-wide v1, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-virtual {v0, v1, v2}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_0
    return-void
.end method

.method public push(Lokio/Timeout;)V
    .locals 4

    iput-object p1, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    iput-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-virtual {p1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lokio/PushableTimeout;->originalTimeoutNanos:J

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lokio/Timeout;->minTimeout(JJ)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_2
    return-void
.end method
