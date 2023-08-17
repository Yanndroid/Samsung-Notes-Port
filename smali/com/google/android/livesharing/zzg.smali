.class final Lcom/google/android/livesharing/zzg;
.super Lcom/google/android/livesharing/CoWatchingState;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/time/Duration;

.field private final zzc:D

.field private final zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/time/Duration;DLcom/google/android/livesharing/CoWatchingState$PlaybackState;Lcom/google/android/livesharing/zzf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/livesharing/CoWatchingState;-><init>()V

    iput-object p1, p0, Lcom/google/android/livesharing/zzg;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/livesharing/zzg;->zzb:Ljava/time/Duration;

    iput-wide p3, p0, Lcom/google/android/livesharing/zzg;->zzc:D

    iput-object p5, p0, Lcom/google/android/livesharing/zzg;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/livesharing/CoWatchingState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/livesharing/CoWatchingState;

    iget-object v1, p0, Lcom/google/android/livesharing/zzg;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->mediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/livesharing/zzg;->zzb:Ljava/time/Duration;

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->mediaPlayoutPosition()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/livesharing/zzg;->zzc:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->mediaPlayoutRate()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/livesharing/zzg;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->playbackState()Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/livesharing/zzg;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/livesharing/zzg;->zzb:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/livesharing/zzg;->zzc:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/livesharing/zzg;->zzc:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/livesharing/zzg;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    invoke-virtual {v4}, Ljava/lang/Enum;->hashCode()I

    move-result v4

    mul-int/2addr v0, v1

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v4

    return v0
.end method

.method public final mediaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/livesharing/zzg;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final mediaPlayoutPosition()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/livesharing/zzg;->zzb:Ljava/time/Duration;

    return-object v0
.end method

.method public final mediaPlayoutRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/livesharing/zzg;->zzc:D

    return-wide v0
.end method

.method public final playbackState()Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/livesharing/zzg;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    return-object v0
.end method

.method public final toBuilder()Lcom/google/android/livesharing/CoWatchingState$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/livesharing/zze;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/livesharing/zze;-><init>(Lcom/google/android/livesharing/CoWatchingState;Lcom/google/android/livesharing/zzd;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/livesharing/zzg;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/livesharing/zzg;->zzb:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/livesharing/zzg;->zzc:D

    iget-object v4, p0, Lcom/google/android/livesharing/zzg;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CoWatchingState{mediaId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaPlayoutPosition="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaPlayoutRate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", playbackState="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
