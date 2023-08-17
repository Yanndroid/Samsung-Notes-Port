.class Lcom/google/android/gms/internal/meet_coactivities/zzgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzft;


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

.field public final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

.field public final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

.field public final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

.field public final zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

.field public final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

.field private volatile zzh:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/livesharing/internal/LiveSharingSessionImpl"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzh:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzho;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgn;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzgp;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzef;->zzb()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzh:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 v0, 0x43

    const-string v1, "com/google/android/livesharing/internal/LiveSharingSessionImpl"

    const-string v2, "handleStateUpdate"

    const-string v3, "LiveSharingSessionImpl.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "Received incoming update after session ended."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhs;->zza(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zze(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzho;->zzg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 v0, 0x3a

    const-string v1, "com/google/android/livesharing/internal/LiveSharingSessionImpl"

    const-string v2, "setInitialState"

    const-string v3, "LiveSharingSessionImpl.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "Received a newer state before initializing from queried state."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd(Ljava/util/function/Supplier;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zze()V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzgk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgl;Ljava/util/function/Supplier;)V

    const-string p1, "Unexpected error when trying to broadcast an update to peers."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzd(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzh:Z

    const-string v1, "Illegal call after meeting ended."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method
