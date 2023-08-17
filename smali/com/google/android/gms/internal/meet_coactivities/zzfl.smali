.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfn;Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzp()Z

    move-result v2

    const-string v3, "lambda$handleStateUpdates$0"

    const-string v4, "com/google/android/livesharing/internal/LiveSharingClientImpl$LiveSharingIpcHandler"

    const-string v5, "LiveSharingClientImpl.java"

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzdm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v1, 0x310

    invoke-interface {v0, v4, v3, v1, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Received a co-doing update, but beginCoDoing() was never called."

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzq()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzeg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v1, 0x318

    invoke-interface {v0, v4, v3, v1, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Received a co-watching update, but beginCoWatching() was never called."

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
