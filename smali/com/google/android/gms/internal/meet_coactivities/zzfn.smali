.class final Lcom/google/android/gms/internal/meet_coactivities/zzfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzbn;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/gms/internal/meet_coactivities/zzfm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zze(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzy(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzc()Lcom/google/android/livesharing/MeetingDisconnectHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/livesharing/MeetingDisconnectHandler;->onMeetingEnded(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzH(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzA(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzfj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfj;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfn;Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 v0, 0x326

    const-string v1, "com/google/android/livesharing/internal/LiveSharingClientImpl$LiveSharingIpcHandler"

    const-string v2, "handleParticipantMetadataSetUpdate"

    const-string v3, "LiveSharingClientImpl.java"

    invoke-interface {p1, v1, v2, v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "Participant metadata set is empty. Not updating delegate."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzA(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzfk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfn;Lcom/google/android/gms/internal/meet_coactivities/zzo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzA(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzfl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfn;Lcom/google/android/gms/internal/meet_coactivities/zznb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/livesharing/internal/LiveSharingClientImpl$LiveSharingIpcHandler"

    const-string v2, "lambda$handleMeetingStateUpdate$2"

    const/16 v3, 0x34d

    const-string v4, "LiveSharingClientImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object v3

    const-string v5, "Received updated Meeting State : %s"

    invoke-interface {v0, v5, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 v0, 0x353

    invoke-interface {p1, v1, v2, v0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "Received a meeting state update while disconnected"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzht;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzm;)Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/LiveSharingMeetingInfo;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 v3, 0x35b

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Invalid meeting info proto."

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;->SESSION_ENDED_BY_USER:Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zze(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V

    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;->SESSION_ENDED_UNEXPECTEDLY:Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zze(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V

    :cond_2
    return-void
.end method
