.class final Lcom/google/android/gms/internal/meet_coactivities/zzcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzbh;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# instance fields
.field private final zzb:Ljava/util/concurrent/CountDownLatch;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/time/Duration;

.field private volatile zze:Ljava/lang/Object;

.field private volatile zzf:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/ResponseObserver"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzb:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zze:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzf:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzd:Ljava/time/Duration;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/ResponseObserver"

    const-string v2, "onCompleted"

    const/16 v3, 0x64

    const-string v4, "ResponseObserver.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzc:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCompleted called for %s - thread %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/ResponseObserver"

    const-string v2, "onError"

    const/16 v3, 0x5a

    const-string v4, "ResponseObserver.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzc:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onError called for %s - thread %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzcm;->zza(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzf:Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/ResponseObserver"

    const-string v2, "onNext"

    const/16 v3, 0x4f

    const-string v4, "ResponseObserver.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzc:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onNext called for %s - thread %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zze:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 7

    const-string v0, "getOrWaitForResponse"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/ResponseObserver"

    const-string v2, "ResponseObserver.java"

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzb:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzd:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 v4, 0x3f

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzc:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to get %s from Meet Service - thread %s"

    invoke-interface {v3, v6, v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v3

    const/16 v4, 0x44

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timed out while waiting for the response - thread %s"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zze:Ljava/lang/Object;

    return-object v0
.end method

.method public final zze()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzf:Ljava/lang/Throwable;

    return-object v0
.end method
