.class final Lcom/google/android/gms/internal/meet_coactivities/zzcm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzd(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/google/android/livesharing/LiveSharingException$Code;->zzb:Lcom/google/android/livesharing/LiveSharingException$Code;

    :goto_0
    invoke-static {p0}, Lcom/google/android/livesharing/zzo;->zza(Lcom/google/android/livesharing/LiveSharingException$Code;)Lcom/google/android/livesharing/LiveSharingException;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/livesharing/LiveSharingException$Code;->zzc:Lcom/google/android/livesharing/LiveSharingException$Code;

    goto :goto_0

    :cond_1
    return-object p0
.end method
