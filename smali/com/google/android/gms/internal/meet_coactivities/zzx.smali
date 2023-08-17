.class public final Lcom/google/android/gms/internal/meet_coactivities/zzx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzpx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpx;

    return-void
.end method

.method public static synthetic zza(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNRECOGNIZED"

    return-object p0

    :cond_0
    const-string p0, "FAILURE_REASON_MEETING_ENDED"

    return-object p0

    :cond_1
    const-string p0, "FAILURE_REASON_FEATURE_DISABLED"

    return-object p0

    :cond_2
    const-string p0, "FAILURE_REASON_MEET_VERSION"

    return-object p0

    :cond_3
    const-string p0, "FAILURE_REASON_INVALID"

    return-object p0
.end method
