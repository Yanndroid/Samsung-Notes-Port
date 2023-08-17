.class public final Lcom/google/android/gms/internal/meet_coactivities/zzih;
.super Lcom/google/android/gms/internal/meet_coactivities/zzib;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzig;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzig;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzif;)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzig;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzjp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjp;)V

    return-void
.end method

.method public static zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "injected class name is empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zzc(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzih;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzi(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/meet_coactivities/zzid;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/meet_coactivities/zzid;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzh(Ljava/util/logging/Level;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzn(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzig;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzie;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzie;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzih;Ljava/util/logging/Level;Z)V

    return-object v0
.end method
