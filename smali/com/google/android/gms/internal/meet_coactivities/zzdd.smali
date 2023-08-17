.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzdd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/livesharing/internal/ClientConfigInfo"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/meet_coactivities/zzdc;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzcq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcq;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcq;->zzb(Z)Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zzc(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zzd(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zza(Z)Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/meet_coactivities/zzg;)Lcom/google/android/gms/internal/meet_coactivities/zzdd;
    .locals 5
    .param p0    # Lcom/google/android/gms/internal/meet_coactivities/zzg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    move-result-object v0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    const/16 v1, 0x2f

    const-string v2, "com/google/android/livesharing/internal/ClientConfigInfo"

    const-string v3, "fromProto"

    const-string v4, "ClientConfigInfo.java"

    invoke-interface {p0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Received null config info from Meet."

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzg;->zzf()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zzb(Z)Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzg;->zze()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zza(Z)Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzg;->zzg()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzg;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zzc(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzg;->zzh()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzg;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zzd(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzdc;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdc;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract zza()Ljava/time/Duration;
.end method

.method public abstract zzb()Ljava/time/Duration;
.end method

.method public abstract zzc()Z
.end method

.method public abstract zzd()Z
.end method
