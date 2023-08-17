.class final Lcom/google/android/gms/internal/meet_coactivities/zzbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzbh;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# instance fields
.field private final zzb:Ljava/util/concurrent/CountDownLatch;

.field private final zzc:Ljava/time/Duration;

.field private volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzv;

.field private volatile zze:Ljava/lang/Throwable;

.field private final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzbi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/ConnectMeetingResponseObserver"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzbi;Ljava/time/Duration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzb:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zze:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzbi;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzc:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/ConnectMeetingResponseObserver"

    const-string v2, "onCompleted"

    const/16 v3, 0x6c

    const-string v4, "ConnectMeetingResponseObserver.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCompleted called - thread %s"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzbi;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzbi;->zzb(Ljava/util/Optional;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/ConnectMeetingResponseObserver"

    const-string v2, "onError"

    const/16 v3, 0x59

    const-string v4, "ConnectMeetingResponseObserver.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onError called for %s - thread %s"

    const-string v3, "StreamingConnectMeetingResponse"

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzcm;->zza(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zze:Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzbi;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zze:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzbi;->zzb(Ljava/util/Optional;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final bridge synthetic zzc(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzv;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "StreamingConnectMeetingResponse"

    const-string v2, "onNext"

    const-string v3, "com/google/android/libraries/communications/sdk/sync/ipc/ConnectMeetingResponseObserver"

    const-string v4, "ConnectMeetingResponseObserver.java"

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v5, 0x49

    invoke-interface {v0, v3, v2, v5, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Additional onNext called for %s - thread %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzbi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbi;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzv;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v5, 0x50

    invoke-interface {v0, v3, v2, v5, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onNext called for %s - thread %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzv;

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 7

    const-string v0, "getOrWaitForResponse"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/ConnectMeetingResponseObserver"

    const-string v2, "ConnectMeetingResponseObserver.java"

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzb:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzc:Ljava/time/Duration;

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

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 v4, 0x38

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to get %s from Meet Service - thread %s"

    const-string v6, "StreamingConnectMeetingResponse"

    invoke-interface {v3, v5, v6, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v3

    const/16 v4, 0x3d

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
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzv;

    return-object v0
.end method

.method public final zze()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbg;->zze:Ljava/lang/Throwable;

    return-object v0
.end method
