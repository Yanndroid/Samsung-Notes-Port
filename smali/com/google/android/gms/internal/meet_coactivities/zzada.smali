.class final Lcom/google/android/gms/internal/meet_coactivities/zzada;
.super Lcom/google/android/gms/internal/meet_coactivities/zzadt;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvu;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

.field private final zzd:[Lcom/google/android/gms/internal/meet_coactivities/zztw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Lcom/google/android/gms/internal/meet_coactivities/zzvu;[Lcom/google/android/gms/internal/meet_coactivities/zztw;Lcom/google/android/gms/internal/meet_coactivities/zzacz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvu;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzd:[Lcom/google/android/gms/internal/meet_coactivities/zztw;

    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/meet_coactivities/zzada;)Lcom/google/android/gms/internal/meet_coactivities/zzvu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvu;

    return-object p0
.end method

.method public static bridge synthetic zzp(Lcom/google/android/gms/internal/meet_coactivities/zzada;Lcom/google/android/gms/internal/meet_coactivities/zzaby;)Ljava/lang/Runnable;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzd:[Lcom/google/android/gms/internal/meet_coactivities/zztw;

    invoke-interface {p1, v2, v3, v1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzaby;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzs(Lcom/google/android/gms/internal/meet_coactivities/zzabv;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzaez;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wait_for_ready"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaez;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzn()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzq(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzd:[Lcom/google/android/gms/internal/meet_coactivities/zztw;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
