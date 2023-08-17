.class public final Lcom/google/android/gms/internal/meet_coactivities/zzhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzhs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzho;

.field private final zzb:Ljava/util/function/Consumer;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzdd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzho;Ljava/util/function/Consumer;Lcom/google/android/gms/internal/meet_coactivities/zzdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhi;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhi;->zzb:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze()Lcom/google/android/gms/internal/meet_coactivities/zznf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zza()Lcom/google/android/gms/internal/meet_coactivities/zznd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhi;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzhk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzhk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzo()Z

    move-result p1

    const/4 v3, 0x2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzc()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    :goto_1
    invoke-interface {v1, v0, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzho;->zzh(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p1

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhi;->zzb:Ljava/util/function/Consumer;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
