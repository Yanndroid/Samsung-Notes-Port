.class public final Lcom/google/android/gms/internal/meet_coactivities/zzta;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzpd;
    .locals 2
    .annotation build Lcom/google/common/annotations/PreferKotlinApi;
        imports = {
            "com.google.protobuf.util.kotlin.toProtoDuration"
        }
        replacement = "duration.toProtoDuration()"
    .end annotation

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzsz;->zza(JI)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;
    .locals 4
    .annotation build Lcom/google/common/annotations/PreferKotlinApi;
        imports = {
            "com.google.protobuf.util.kotlin.toJavaDuration"
        }
        replacement = "duration.toJavaDuration()"
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzd()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzc()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzsz;->zza(JI)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzd()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzc()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method
