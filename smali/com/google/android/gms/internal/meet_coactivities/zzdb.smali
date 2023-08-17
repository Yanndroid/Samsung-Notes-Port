.class final Lcom/google/android/gms/internal/meet_coactivities/zzdb;
.super Lcom/google/android/gms/internal/meet_coactivities/zzgn;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

.field private final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzbo;Lcom/google/android/gms/internal/meet_coactivities/zzef;Lcom/google/android/gms/internal/meet_coactivities/zzho;Lcom/google/android/gms/internal/meet_coactivities/zzhs;Lcom/google/android/gms/internal/meet_coactivities/zzdd;Lcom/google/android/gms/internal/meet_coactivities/zzgp;Lcom/google/android/gms/internal/meet_coactivities/zzda;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    iput-object p6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzgn;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzef;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzho;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LiveSharingSessionParams{ipcManager="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", heartbeatSchedule="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", thinLocalState="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", updateProcessor="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", config="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", delegate="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzbo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzdd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzef;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzgp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzho;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/meet_coactivities/zzhs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    return-object v0
.end method
