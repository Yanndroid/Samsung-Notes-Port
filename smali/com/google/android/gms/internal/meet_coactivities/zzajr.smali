.class final Lcom/google/android/gms/internal/meet_coactivities/zzajr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzajs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zze:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzC(Lcom/google/android/gms/internal/meet_coactivities/zzakh;IZ)Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v4, v3, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajq;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zzc:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzakf;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzS(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzaju;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzaa(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzaju;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakg;->zza()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzajq;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzajq;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzQ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzajq;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzS(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzaju;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    goto :goto_0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v2, "Unneeded hedging"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void

    :cond_3
    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzK(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    invoke-direct {v3, v1, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzajs;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzajq;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzy(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    move-result-object v1

    iget-wide v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzaex;->zzb:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v6, v7, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zzb(Ljava/util/concurrent/Future;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajs;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzU(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
