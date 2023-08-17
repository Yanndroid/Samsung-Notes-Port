.class final Lcom/google/android/gms/internal/meet_coactivities/zzgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzia;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;Lcom/google/android/gms/internal/meet_coactivities/zzgl;Lcom/google/android/gms/internal/meet_coactivities/zzia;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzgl;Lcom/google/android/gms/internal/meet_coactivities/zzia;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    instance-of v0, p2, Lcom/google/android/livesharing/CoWatchingState;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/livesharing/CoWatchingState;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhz;->zzd(Lcom/google/android/livesharing/CoWatchingState;)Lcom/google/android/gms/internal/meet_coactivities/zznl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcp;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zznl;)V

    :cond_0
    instance-of v0, p2, Lcom/google/android/livesharing/CoDoingState;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/livesharing/CoDoingState;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcp;->zza(Lcom/google/android/livesharing/CoDoingState;)V

    :cond_1
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzia;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzc(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 p1, 0xf0

    const-string p2, "com/google/android/livesharing/internal/LiveSharingSessionFactory$2"

    const-string v0, "lambda$onSuccess$0"

    const-string v1, "LiveSharingSessionFactory.java"

    invoke-interface {p0, p2, v0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p1, "Invalid initial state POJO."

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "com/google/android/livesharing/internal/LiveSharingSessionFactory$2"

    const-string v1, "onFailure"

    const/16 v2, 0xf7

    const-string v3, "LiveSharingSessionFactory.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "Failed to query initial state."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzia;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzgg;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzgg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgl;Lcom/google/android/gms/internal/meet_coactivities/zzia;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
