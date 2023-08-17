.class final Lcom/google/android/gms/internal/meet_coactivities/zzbm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/time/Duration;

.field public static final zzb:Ljava/time/Duration;

.field public static final zzc:Ljava/time/Duration;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzbm;->zza:Ljava/time/Duration;

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbm;->zzb:Ljava/time/Duration;

    const-wide/16 v0, 0x2d

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbm;->zzc:Ljava/time/Duration;

    return-void
.end method
