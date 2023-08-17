.class final Lcom/google/android/gms/internal/meet_coactivities/zzabm;
.super Lcom/google/android/gms/internal/meet_coactivities/zzace;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzamh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzald;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzabp;Lcom/google/android/gms/internal/meet_coactivities/zzamh;Lcom/google/android/gms/internal/meet_coactivities/zzald;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzamh;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzald;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzace;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzabp;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzald;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzald;->zzf()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzabp;)Lcom/google/android/gms/internal/meet_coactivities/zztm;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzd(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztm;->zzc(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzf(Ljava/io/Closeable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzald;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    const-string v2, "Failed to read message."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzabp;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzald;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    throw v0
.end method
