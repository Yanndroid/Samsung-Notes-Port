.class public final Lcom/google/android/livesharing/zzo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/livesharing/LiveSharingException$Code;)Lcom/google/android/livesharing/LiveSharingException;
    .locals 3

    new-instance v0, Lcom/google/android/livesharing/LiveSharingException;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/google/android/livesharing/LiveSharingException;-><init>(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;Ljava/util/Optional;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingException;
    .locals 3

    new-instance v0, Lcom/google/android/livesharing/LiveSharingException;

    sget-object v1, Lcom/google/android/livesharing/LiveSharingException$Code;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/livesharing/LiveSharingException;-><init>(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;Ljava/util/Optional;)V

    return-object v0
.end method

.method public static zzc(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;)Lcom/google/android/livesharing/LiveSharingException;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/livesharing/LiveSharingException;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/livesharing/LiveSharingException;-><init>(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;Ljava/util/Optional;)V

    return-object v0
.end method

.method public static zzd(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingException;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/livesharing/LiveSharingException;

    new-instance v1, Lcom/google/android/livesharing/zzh;

    invoke-direct {v1}, Lcom/google/android/livesharing/zzh;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/android/livesharing/zzp;->zza(Ljava/lang/String;)Lcom/google/android/livesharing/zzp;

    invoke-virtual {v1}, Lcom/google/android/livesharing/zzp;->zzb()Lcom/google/android/livesharing/LiveSharingExceptionMetadata;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/livesharing/LiveSharingException;-><init>(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;Ljava/util/Optional;)V

    return-object v0
.end method
