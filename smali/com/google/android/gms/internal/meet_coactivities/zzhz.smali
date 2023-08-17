.class public final Lcom/google/android/gms/internal/meet_coactivities/zzhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzia;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzhy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzhz;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzhx;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzhz;

    move-result-object v0

    return-object v0
.end method

.method public static final zzd(Lcom/google/android/livesharing/CoWatchingState;)Lcom/google/android/gms/internal/meet_coactivities/zznl;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zznk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/livesharing/CoWatchingState;->mediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {p0}, Lcom/google/android/livesharing/CoWatchingState;->mediaPlayoutPosition()Ljava/time/Duration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zza(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {p0}, Lcom/google/android/livesharing/CoWatchingState;->playbackState()Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    move-result-object v1

    sget-object v2, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->BUFFERING:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzf(I)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {p0}, Lcom/google/android/livesharing/CoWatchingState;->mediaPlayoutRate()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zze(D)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-static {}, Lcom/google/android/livesharing/CoWatchingState;->builder()Lcom/google/android/livesharing/CoWatchingState$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/CoWatchingState$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/livesharing/CoWatchingState$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/CoWatchingState$Builder;->setMediaPlayoutPosition(Ljava/time/Duration;)Lcom/google/android/livesharing/CoWatchingState$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzm()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sget-object v2, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->BUFFERING:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->ENDED:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    sget-object v2, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->PAUSE:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->PLAY:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/livesharing/CoWatchingState$Builder;->setPlaybackState(Lcom/google/android/livesharing/CoWatchingState$PlaybackState;)Lcom/google/android/livesharing/CoWatchingState$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zza()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/livesharing/CoWatchingState$Builder;->setMediaPlayoutRate(D)Lcom/google/android/livesharing/CoWatchingState$Builder;

    invoke-virtual {v0}, Lcom/google/android/livesharing/CoWatchingState$Builder;->build()Lcom/google/android/livesharing/CoWatchingState;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/livesharing/CoWatchingState;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhz;->zzd(Lcom/google/android/livesharing/CoWatchingState;)Lcom/google/android/gms/internal/meet_coactivities/zznl;

    move-result-object p1

    return-object p1
.end method
