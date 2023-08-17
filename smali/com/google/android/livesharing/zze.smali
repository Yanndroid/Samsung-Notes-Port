.class final Lcom/google/android/livesharing/zze;
.super Lcom/google/android/livesharing/CoWatchingState$Builder;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/time/Duration;

.field private zzc:D

.field private zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

.field private zze:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/livesharing/CoWatchingState$Builder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/livesharing/CoWatchingState;Lcom/google/android/livesharing/zzd;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/livesharing/CoWatchingState$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->mediaId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/livesharing/zze;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->mediaPlayoutPosition()Ljava/time/Duration;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/livesharing/zze;->zzb:Ljava/time/Duration;

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->mediaPlayoutRate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/livesharing/zze;->zzc:D

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->playbackState()Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/livesharing/zze;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/livesharing/zze;->zze:B

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/livesharing/CoWatchingState;
    .locals 9

    iget-byte v0, p0, Lcom/google/android/livesharing/zze;->zze:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/livesharing/zze;->zza:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/livesharing/zze;->zzb:Ljava/time/Duration;

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/google/android/livesharing/zze;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/livesharing/zzg;

    iget-wide v5, p0, Lcom/google/android/livesharing/zze;->zzc:D

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/livesharing/zzg;-><init>(Ljava/lang/String;Ljava/time/Duration;DLcom/google/android/livesharing/CoWatchingState$PlaybackState;Lcom/google/android/livesharing/zzf;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/livesharing/zze;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " mediaId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/livesharing/zze;->zzb:Ljava/time/Duration;

    if-nez v1, :cond_3

    const-string v1, " mediaPlayoutPosition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lcom/google/android/livesharing/zze;->zze:B

    if-nez v1, :cond_4

    const-string v1, " mediaPlayoutRate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/google/android/livesharing/zze;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    if-nez v1, :cond_5

    const-string v1, " playbackState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setMediaId(Ljava/lang/String;)Lcom/google/android/livesharing/CoWatchingState$Builder;
    .locals 1

    const-string v0, "Null mediaId"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/livesharing/zze;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final setMediaPlayoutPosition(Ljava/time/Duration;)Lcom/google/android/livesharing/CoWatchingState$Builder;
    .locals 1

    const-string v0, "Null mediaPlayoutPosition"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/livesharing/zze;->zzb:Ljava/time/Duration;

    return-object p0
.end method

.method public final setMediaPlayoutRate(D)Lcom/google/android/livesharing/CoWatchingState$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/livesharing/zze;->zzc:D

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/livesharing/zze;->zze:B

    return-object p0
.end method

.method public final setPlaybackState(Lcom/google/android/livesharing/CoWatchingState$PlaybackState;)Lcom/google/android/livesharing/CoWatchingState$Builder;
    .locals 1

    const-string v0, "Null playbackState"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/livesharing/zze;->zzd:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    return-object p0
.end method
