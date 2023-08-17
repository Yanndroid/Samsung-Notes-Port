.class final Lcom/google/android/gms/internal/meet_coactivities/zzbj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzk;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzk;

    const-string v1, "com.google.android.apps.faketachyon"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbj;->zzb(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzk;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzk;

    const-string v3, "com.google.android.apps.tachyon"

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbj;->zzb(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzk;

    const-string v5, "com.google.android.apps.meetings"

    invoke-static {v5, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbj;->zzb(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzk;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzk;

    const-string v7, "com.google.android.gm"

    invoke-static {v7, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbj;->zzb(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbj;->zza:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private static zzb(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzwg;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.libraries.communications.conference.service.impl.synchronicityservice.SynchronicityEndpointService"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyn;->zzc(Landroid/content/ComponentName;)Lcom/google/android/gms/internal/meet_coactivities/zzyn;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzyn;Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzyu;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzza;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzyy;)Lcom/google/android/gms/internal/meet_coactivities/zzyu;

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzbm;->zza:Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzuq;->zzb(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/meet_coactivities/zzuq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzuq;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzuq;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzr;)Ljava/util/Optional;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbj;->zza:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
