.class final Lcom/google/android/gms/internal/meet_coactivities/zzcs;
.super Lcom/google/android/gms/internal/meet_coactivities/zzdd;
.source "SourceFile"


# instance fields
.field private final zzb:Z

.field private final zzc:Ljava/time/Duration;

.field private final zzd:Ljava/time/Duration;

.field private final zze:Z


# direct methods
.method public synthetic constructor <init>(ZLjava/time/Duration;Ljava/time/Duration;ZLcom/google/android/gms/internal/meet_coactivities/zzcr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzb:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzc:Ljava/time/Duration;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzd:Ljava/time/Duration;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zze:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzb:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzd()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzc:Ljava/time/Duration;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zza()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzd:Ljava/time/Duration;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzb()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zze:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzc()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzb:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzc:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->hashCode()I

    move-result v4

    const v5, 0xf4243

    xor-int/2addr v0, v5

    mul-int/2addr v0, v5

    xor-int/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzd:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->hashCode()I

    move-result v4

    mul-int/2addr v0, v5

    xor-int/2addr v0, v4

    iget-boolean v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zze:Z

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    mul-int/2addr v0, v5

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzb:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzc:Ljava/time/Duration;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzd:Ljava/time/Duration;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zze:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientConfigInfo{disableHeartbeating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", heartbeatFrequency="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", seekDeterminationThreshold="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", alwaysOverride="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzc:Ljava/time/Duration;

    return-object v0
.end method

.method public final zzb()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzd:Ljava/time/Duration;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zze:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;->zzb:Z

    return v0
.end method
