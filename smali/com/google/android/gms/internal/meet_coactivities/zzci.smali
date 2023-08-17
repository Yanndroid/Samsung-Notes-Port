.class final Lcom/google/android/gms/internal/meet_coactivities/zzci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzci;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl$6"

    const-string v1, "onFailure"

    const/16 v2, 0x3b3

    const-string v3, "MeetIpcManagerImpl.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzci;->zza:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s unsuccessful - thread %s"

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Void;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl$6"

    const-string v1, "onSuccess"

    const/16 v2, 0x3ae

    const-string v3, "MeetIpcManagerImpl.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzci;->zza:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s successful - thread %s"

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
