.class final Lcom/google/android/gms/internal/meet_coactivities/zzabn;
.super Lcom/google/android/gms/internal/meet_coactivities/zzace;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzamh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

.field public final synthetic zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzabp;Lcom/google/android/gms/internal/meet_coactivities/zzamh;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzamh;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzace;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzabp;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzabp;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzn(Lcom/google/android/gms/internal/meet_coactivities/zzabu;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzabp;)Lcom/google/android/gms/internal/meet_coactivities/zztm;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztm;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zza(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabn;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zza(Z)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    throw v0
.end method
