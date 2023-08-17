.class final Lcom/google/android/gms/internal/meet_coactivities/zzahf;
.super Lcom/google/android/gms/internal/meet_coactivities/zzacu;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

.field public final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field public final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzti;

.field public final synthetic zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahh;Lcom/google/android/gms/internal/meet_coactivities/zzuh;Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzy(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzahj;

    move-result-object p1

    invoke-virtual {p4}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzul;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zzul;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    return-void
.end method


# virtual methods
.method public final zzk()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzahe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzahe;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public final zzl()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzahh;Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zztn;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzahe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzahe;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzahd;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahf;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    throw v1
.end method
