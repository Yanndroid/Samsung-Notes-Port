.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfn;Lcom/google/android/gms/internal/meet_coactivities/zzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v1, 0x32e

    const-string v2, "com/google/android/livesharing/internal/LiveSharingClientImpl$LiveSharingIpcHandler"

    const-string v3, "lambda$handleParticipantMetadataSetUpdate$1"

    const-string v4, "LiveSharingClientImpl.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Delegate is missing on non-empty participant metadata set update."

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/livesharing/ParticipantMetadataDelegate;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzo;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzd()Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    :cond_1
    invoke-interface {v0, v2}, Lcom/google/android/livesharing/ParticipantMetadataDelegate;->onParticipantMetadataUpdated(Ljava/util/Set;)V

    return-void
.end method
