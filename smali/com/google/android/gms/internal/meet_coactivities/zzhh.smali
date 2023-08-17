.class public final Lcom/google/android/gms/internal/meet_coactivities/zzhh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzmt;

.field private zzc:Ljava/time/Duration;

.field private zzd:Ljava/time/Instant;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/livesharing/internal/state/DesiredPositionTracker"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzmt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zzc:Ljava/time/Duration;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zzd:Ljava/time/Instant;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzmt;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zznl;)Ljava/time/Duration;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zzd:Ljava/time/Instant;

    const-string v1, "getDesiredPosition"

    const-string v2, "com/google/android/livesharing/internal/state/DesiredPositionTracker"

    const-string v3, "DesiredPositionTracker.java"

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v4, 0x43

    invoke-interface {v0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Did not expect markBaselineDesiredPosition to not be called."

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzm()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zza()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double p1, v4, v6

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 v4, 0x56

    invoke-interface {p1, v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Did not expect playoutRate to ever be zero, yet here we are."

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zzc:Ljava/time/Duration;

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zza(Ljava/time/Duration;D)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/time/Duration;)V
    .locals 1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zzd:Ljava/time/Instant;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zzc:Ljava/time/Duration;

    return-void
.end method
