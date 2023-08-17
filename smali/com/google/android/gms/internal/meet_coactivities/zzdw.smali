.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzdz;

.field public final synthetic zzb:Ljava/util/function/UnaryOperator;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zznr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzdz;Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdw;->zzb:Ljava/util/function/UnaryOperator;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdw;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdw;->zzb:Ljava/util/function/UnaryOperator;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdw;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdq;-><init>(Ljava/util/function/UnaryOperator;)V

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzb(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)Lcom/google/android/gms/internal/meet_coactivities/zzhr;

    move-result-object v0

    return-object v0
.end method
