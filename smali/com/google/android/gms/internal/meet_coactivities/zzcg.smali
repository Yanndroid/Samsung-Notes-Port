.class final Lcom/google/android/gms/internal/meet_coactivities/zzcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;)V
    .locals 0

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

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl$4"

    const-string v1, "onFailure"

    const/16 v2, 0x25b

    const-string v3, "MeetIpcManagerImpl.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastUpdate unsuccessful - thread %s"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl$4"

    const-string v1, "onSuccess"

    const/16 v2, 0x255

    const-string v3, "MeetIpcManagerImpl.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastUpdate successful - thread %s"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
