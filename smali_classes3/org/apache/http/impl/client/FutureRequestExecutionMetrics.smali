.class public final Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    }
.end annotation


# instance fields
.field private final activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

.field private final failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

.field private final requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

.field private final scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

.field private final successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

.field private final tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-void
.end method


# virtual methods
.method public getActiveConnectionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public getFailedConnectionAverageDuration()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFailedConnectionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFailedConnections()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public getRequestAverageDuration()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequests()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public getScheduledConnectionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScheduledConnections()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public getSuccessfulConnectionAverageDuration()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSuccessfulConnectionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSuccessfulConnections()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public getTaskAverageDuration()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTaskCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTasks()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[activeConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", successfulConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failedConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
