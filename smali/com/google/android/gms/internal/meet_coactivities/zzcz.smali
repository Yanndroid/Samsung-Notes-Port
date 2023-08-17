.class final Lcom/google/android/gms/internal/meet_coactivities/zzcz;
.super Lcom/google/android/gms/internal/meet_coactivities/zzgm;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

.field private zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

.field private zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzgm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzdd;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;
    .locals 1

    const-string v0, "Null config"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzgp;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;
    .locals 1

    const-string v0, "Null delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzef;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzbo;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zzho;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/meet_coactivities/zzhs;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;
    .locals 1

    const-string v0, "Null updateProcessor"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/meet_coactivities/zzgn;
    .locals 9

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/google/android/gms/internal/meet_coactivities/zzdb;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/meet_coactivities/zzdb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzbo;Lcom/google/android/gms/internal/meet_coactivities/zzef;Lcom/google/android/gms/internal/meet_coactivities/zzho;Lcom/google/android/gms/internal/meet_coactivities/zzhs;Lcom/google/android/gms/internal/meet_coactivities/zzdd;Lcom/google/android/gms/internal/meet_coactivities/zzgp;Lcom/google/android/gms/internal/meet_coactivities/zzda;)V

    return-object v8

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    if-nez v1, :cond_2

    const-string v1, " ipcManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    if-nez v1, :cond_3

    const-string v1, " heartbeatSchedule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    if-nez v1, :cond_4

    const-string v1, " thinLocalState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    if-nez v1, :cond_5

    const-string v1, " updateProcessor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    if-nez v1, :cond_6

    const-string v1, " config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    if-nez v1, :cond_7

    const-string v1, " delegate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
