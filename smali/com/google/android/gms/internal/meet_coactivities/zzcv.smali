.class final Lcom/google/android/gms/internal/meet_coactivities/zzcv;
.super Lcom/google/android/gms/internal/meet_coactivities/zzfq;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

.field private final zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzbo;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzr;Lcom/google/android/livesharing/MeetingDisconnectHandler;Lcom/google/android/gms/internal/meet_coactivities/zzcu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzr;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzc()Lcom/google/android/livesharing/MeetingDisconnectHandler;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LiveSharingConnection{ipcManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activityName="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", startInfo="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", meetingDisconnectHandler="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzbo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/livesharing/MeetingDisconnectHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcv;->zzb:Ljava/lang/String;

    return-object v0
.end method
