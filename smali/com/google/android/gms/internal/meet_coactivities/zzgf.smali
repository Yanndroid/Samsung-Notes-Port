.class final Lcom/google/android/gms/internal/meet_coactivities/zzgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zze(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzgj;)Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zze(Ljava/lang/Throwable;)V

    return-void
.end method
