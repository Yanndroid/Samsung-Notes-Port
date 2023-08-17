.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

.field public final synthetic zzb:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgl;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgk;->zzb:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgk;->zzb:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzhr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzhr;->zzb()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzhr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V

    :cond_0
    return-void
.end method
