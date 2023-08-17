.class final Lcom/google/android/gms/internal/meet_coactivities/zzcq;
.super Lcom/google/android/gms/internal/meet_coactivities/zzdc;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private zzb:Ljava/time/Duration;

.field private zzc:Ljava/time/Duration;

.field private zzd:Z

.field private zze:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/meet_coactivities/zzdc;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzd:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zze:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zze:B

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/meet_coactivities/zzdc;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zza:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zze:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zze:B

    return-object p0
.end method

.method public final zzc(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzdc;
    .locals 1

    const-string v0, "Null heartbeatFrequency"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzb:Ljava/time/Duration;

    return-object p0
.end method

.method public final zzd(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzdc;
    .locals 1

    const-string v0, "Null seekDeterminationThreshold"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzc:Ljava/time/Duration;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzdd;
    .locals 7

    iget-byte v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zze:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzb:Ljava/time/Duration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzc:Ljava/time/Duration;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzcs;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zza:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzb:Ljava/time/Duration;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzc:Ljava/time/Duration;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzd:Z

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzcs;-><init>(ZLjava/time/Duration;Ljava/time/Duration;ZLcom/google/android/gms/internal/meet_coactivities/zzcr;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zze:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    const-string v1, " disableHeartbeating"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzb:Ljava/time/Duration;

    if-nez v1, :cond_3

    const-string v1, " heartbeatFrequency"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzc:Ljava/time/Duration;

    if-nez v1, :cond_4

    const-string v1, " seekDeterminationThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zze:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const-string v1, " alwaysOverride"

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
