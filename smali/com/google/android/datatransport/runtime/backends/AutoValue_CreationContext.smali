.class final Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;
.super Lcom/google/android/datatransport/runtime/backends/CreationContext;
.source "SourceFile"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final backendName:Ljava/lang/String;

.field private final monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final wallClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/CreationContext;-><init>()V

    const-string v0, "Null applicationContext"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    const-string p1, "Null wallClock"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    const-string p1, "Null monotonicClock"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    const-string p1, "Null backendName"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/backends/CreationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/datatransport/runtime/backends/CreationContext;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getWallClock()Lcom/google/android/datatransport/runtime/time/Clock;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getMonotonicClock()Lcom/google/android/datatransport/runtime/time/Clock;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getBackendName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getBackendName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    return-object v0
.end method

.method public getMonotonicClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    return-object v0
.end method

.method public getWallClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreationContext{applicationContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wallClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", monotonicClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backendName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
