.class final Lcom/google/android/gms/internal/meet_coactivities/zzdm;
.super Lcom/google/android/gms/internal/meet_coactivities/zzgl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/livesharing/CoDoingSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgn;)V

    return-void
.end method


# virtual methods
.method public final broadcastStateUpdate(Lcom/google/android/livesharing/CoDoingState;)V
    .locals 1

    const-string v0, "Expected \'updatedCoDoingState\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzcp;->zza(Lcom/google/android/livesharing/CoDoingState;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzdm;Lcom/google/android/livesharing/CoDoingState;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzd(Ljava/util/function/Supplier;)V

    return-void
.end method
