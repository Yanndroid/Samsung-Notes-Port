.class final Lcom/google/android/gms/internal/meet_coactivities/zzcp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/livesharing/CoDoingState;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzhw;->zzd(Lcom/google/android/livesharing/CoDoingState;)Lcom/google/android/gms/internal/meet_coactivities/zznd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zznd;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzd()I

    move-result p0

    const/16 v0, 0x672

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "Blob size cannot be greater than %s bytes."

    invoke-static {p0, v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zznl;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zza()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "Playout rate cannot be set higher than %s."

    invoke-static {p0, v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
