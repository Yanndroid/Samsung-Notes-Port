.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzkt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Ljava/lang/String; = "com.google.android.gms.internal.meet_coactivities.zzlb"
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation
.end field

.field private static zzb:Ljava/lang/String; = "com.google.common.flogger.backend.google.GooglePlatform"
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation
.end field

.field private static zzc:Ljava/lang/String; = "com.google.common.flogger.backend.system.DefaultPlatform"

.field private static final zzd:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.internal.meet_coactivities.zzlb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.common.flogger.backend.google.GooglePlatform"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.common.flogger.backend.system.DefaultPlatform"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzd:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()I
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzmn;->zza()I

    move-result v0

    return v0
.end method

.method public static zzb()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzkt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    move-result-object p0

    return-object p0
.end method

.method public static zzf()Lcom/google/android/gms/internal/meet_coactivities/zzjt;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzll;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object v0

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/meet_coactivities/zzks;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzks;

    move-result-object v0

    return-object v0
.end method

.method public static zzi()Lcom/google/android/gms/internal/meet_coactivities/zzll;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzll;

    move-result-object v0

    return-object v0
.end method

.method public static zzk()Lcom/google/android/gms/internal/meet_coactivities/zzly;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzll;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzly;

    move-result-object v0

    return-object v0
.end method

.method public static zzl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzn(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzll;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzll;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic zzo()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzd:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzc()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract zze(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;
.end method

.method public abstract zzh()Lcom/google/android/gms/internal/meet_coactivities/zzks;
.end method

.method public zzj()Lcom/google/android/gms/internal/meet_coactivities/zzll;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzll;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzll;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzm()Ljava/lang/String;
.end method
