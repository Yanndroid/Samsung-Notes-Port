.class final Lcom/google/android/gms/internal/meet_coactivities/zzahe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaey;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaey;->zzc(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzL(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaho;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zza:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iput-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzb:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method
