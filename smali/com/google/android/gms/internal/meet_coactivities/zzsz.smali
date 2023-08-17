.class public final Lcom/google/android/gms/internal/meet_coactivities/zzsz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

.field public static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

.field public static final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzpd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    move-result-object v0

    const-wide v1, -0x4979cb9e00L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpc;->zzb(J)Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    const v1, -0x3b9ac9ff

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpc;->zza(I)Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzsz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    move-result-object v0

    const-wide v1, 0x4979cb9e00L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpc;->zzb(J)Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    const v1, 0x3b9ac9ff

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpc;->zza(I)Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzsz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpc;->zzb(J)Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpc;->zza(I)Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzsz;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    return-void
.end method

.method public static zza(JI)Lcom/google/android/gms/internal/meet_coactivities/zzpd;
    .locals 8

    const v0, -0x3b9aca00

    const v1, 0x3b9aca00

    if-le p2, v0, :cond_0

    if-lt p2, v1, :cond_1

    :cond_0
    div-int v2, p2, v1

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide p0

    rem-int/2addr p2, v1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_2

    if-gez p2, :cond_2

    add-int/2addr p2, v1

    const-wide/16 v4, -0x1

    add-long/2addr p0, v4

    :cond_2
    cmp-long v4, p0, v2

    if-gez v4, :cond_3

    if-lez p2, :cond_3

    add-int/2addr p2, v0

    const-wide/16 v4, 0x1

    add-long/2addr p0, v4

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpc;->zzb(J)Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpc;->zza(I)Lcom/google/android/gms/internal/meet_coactivities/zzpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzd()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzc()I

    move-result v0

    const-wide v4, -0x4979cb9e00L

    cmp-long v4, p1, v4

    if-ltz v4, :cond_6

    const-wide v4, 0x4979cb9e00L

    cmp-long v4, p1, v4

    if-gtz v4, :cond_6

    int-to-long v4, v0

    const-wide/32 v6, -0x3b9ac9ff

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    if-ge v0, v1, :cond_6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_4

    if-gez v0, :cond_5

    :cond_4
    if-gtz v1, :cond_6

    if-gtz v0, :cond_6

    :cond_5
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
