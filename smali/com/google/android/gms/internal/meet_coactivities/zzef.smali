.class final Lcom/google/android/gms/internal/meet_coactivities/zzef;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/ListenableScheduledFuture;)V
    .locals 0
    .param p1    # Lcom/google/common/util/concurrent/ListenableScheduledFuture;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzef;->zza:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzdd;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzef;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/meet_coactivities/zzef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzef;-><init>(Lcom/google/common/util/concurrent/ListenableScheduledFuture;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzee;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzee;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zza()Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zza()Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzef;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzef;-><init>(Lcom/google/common/util/concurrent/ListenableScheduledFuture;)V

    return-object p1
.end method


# virtual methods
.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzef;->zza:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method
