.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzdm;

.field public final synthetic zzb:Lcom/google/android/livesharing/CoDoingState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzdm;Lcom/google/android/livesharing/CoDoingState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdm;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdk;->zzb:Lcom/google/android/livesharing/CoDoingState;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdm;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdk;->zzb:Lcom/google/android/livesharing/CoDoingState;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzhl;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzdl;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdl;-><init>(Lcom/google/android/livesharing/CoDoingState;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzhl;->zza(Ljava/util/function/UnaryOperator;)Lcom/google/android/gms/internal/meet_coactivities/zzhr;

    move-result-object v0

    return-object v0
.end method
