.class final Lcom/google/android/gms/internal/meet_coactivities/zzaan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzabv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zztf;

.field private zzd:Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/meet_coactivities/zzul;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzzp;Lcom/google/android/gms/internal/meet_coactivities/zzaae;Lcom/google/android/gms/internal/meet_coactivities/zztf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleMessageClientStream["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzaez;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zzd()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    monitor-enter v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzul;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzul;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zze()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzd:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzd(Ljava/io/InputStream;)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzf()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzg()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzye;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/meet_coactivities/zzua;)V
    .locals 0

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/meet_coactivities/zzul;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzul;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzul;

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/meet_coactivities/zzuo;)V
    .locals 0

    return-void
.end method

.method public final zzj(I)V
    .locals 0

    return-void
.end method

.method public final zzk(I)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzaag;Lcom/google/android/gms/internal/meet_coactivities/zzale;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzale;->zzg()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzm(Ljava/io/InputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzd:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v2, "too many messages"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzd:Ljava/io/InputStream;

    return-void
.end method

.method public final zzn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaan;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzh()Z

    move-result v0

    return v0
.end method
