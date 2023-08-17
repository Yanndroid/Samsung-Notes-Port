.class final Lcom/google/android/gms/internal/meet_coactivities/zzaiu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaix;Lcom/google/android/gms/internal/meet_coactivities/zzait;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzaix;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaix;Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaix;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaix;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzaix;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzaiw;

    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaiw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaix;Lcom/google/android/gms/internal/meet_coactivities/zzaiv;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaix;)J

    move-result-wide v6

    sub-long/2addr v6, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaix;Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzaix;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaix;Ljava/util/concurrent/ScheduledFuture;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzaix;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
