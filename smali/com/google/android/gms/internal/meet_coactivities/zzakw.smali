.class final Lcom/google/android/gms/internal/meet_coactivities/zzakw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzakx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

.field public final synthetic zzc:Ljava/lang/Object;

.field public final synthetic zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakz;Lcom/google/android/gms/internal/meet_coactivities/zzakx;Lcom/google/android/gms/internal/meet_coactivities/zzaky;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakx;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzc:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakx;

    iget v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzc:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaky;->zzb(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzakz;)Ljava/util/IdentityHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzakz;)Ljava/util/IdentityHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzakz;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzakz;Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzakz;)Ljava/util/IdentityHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzakz;)Ljava/util/IdentityHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzakz;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzakz;Ljava/util/concurrent/ScheduledExecutorService;)V

    :goto_0
    throw v2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
