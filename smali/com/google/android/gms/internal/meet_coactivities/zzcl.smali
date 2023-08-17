.class final Lcom/google/android/gms/internal/meet_coactivities/zzcl;
.super Lcom/google/android/gms/internal/meet_coactivities/zzbo;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzbi;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

.field private static final zzb:Ljava/lang/Object;

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private volatile zze:Ljava/time/Duration;

.field private volatile zzf:Ljava/time/Duration;

.field private zzg:[Ljava/lang/Byte;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "metadataLock"
    .end annotation
.end field

.field private final zzh:Ljava/lang/Object;

.field private zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/meet_coactivities/zzalp;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "outgoingLock"
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "outgoingLock"
    .end annotation
.end field

.field private zzl:Lcom/google/android/gms/internal/meet_coactivities/zzbf;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "incomingLock"
    .end annotation
.end field

.field private zzm:Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "incomingLock"
    .end annotation
.end field

.field private final zzn:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final zzp:Lcom/google/android/gms/internal/meet_coactivities/zzbn;

.field private volatile zzq:Lcom/google/android/gms/internal/meet_coactivities/zzg;

.field private final zzr:Ljava/lang/String;

.field private volatile zzs:Ljava/util/Optional;

.field private final zzt:Lcom/google/android/gms/internal/meet_coactivities/zzbj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzb:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/meet_coactivities/zzbn;Lcom/google/android/gms/internal/meet_coactivities/zzbl;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzbj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbj;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzbo;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzbm;->zzb:Ljava/time/Duration;

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zze:Ljava/time/Duration;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzbm;->zzc:Ljava/time/Duration;

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzf:Ljava/time/Duration;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzalp;

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzbf;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzs:Ljava/util/Optional;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzbn;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zzbj;

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzq:Lcom/google/android/gms/internal/meet_coactivities/zzg;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzr:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzbl;->zzb()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzn:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzbl;->zza()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method private final zzA()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "outgoingLock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzn:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzbs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzbs;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzcg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzn:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final zzB()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzC(Lcom/google/android/gms/internal/meet_coactivities/zzck;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzC(Lcom/google/android/gms/internal/meet_coactivities/zzck;Ljava/lang/String;)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "Unexpected call to %s in state: %s"

    invoke-static {p1, v1, p2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const-string p2, "MeetIpcManagerImpl.java"

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v1, "resetIpcState"

    const/16 v2, 0x345

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Already disconnected when resetting IPC State - thread %s"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzd:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_0
    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzbf;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzalp;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method private final zzD(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzcc;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzcc;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "submitIncomingIpcTask"

    const/16 v3, 0x3a7

    const-string v4, "MeetIpcManagerImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Called %s on ipcHandler - thread %s"

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzci;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzci;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {p2, v0, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final zzE(Lcom/google/android/gms/internal/meet_coactivities/zznb;Lcom/google/android/gms/internal/meet_coactivities/zznh;Lcom/google/android/gms/internal/meet_coactivities/zzc;)V
    .locals 8

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzag;->zza(Lcom/google/android/gms/internal/meet_coactivities/zznh;)Lcom/google/android/gms/internal/meet_coactivities/zzag;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzn()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznj;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zznj;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzag;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zznj;)Lcom/google/android/gms/internal/meet_coactivities/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzah;

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v1, 0x265

    const-string v2, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "sendStatRequestOverIpc"

    const-string v4, "MeetIpcManagerImpl.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zznj;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zznh;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Calling broadcastStatSample of type %s and direction %s - thread %s"

    invoke-interface {v0, v7, v1, v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 p2, 0x26a

    invoke-interface {p1, v2, v3, p2, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p2, "Unexpected null stub, skipping stat request"

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzcn;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zze:Ljava/time/Duration;

    const-string v1, "StatResponseObserver"

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcn;-><init>(Ljava/time/Duration;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzav;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzau;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzau;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzah;)Lcom/google/android/gms/internal/meet_coactivities/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzav;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zztj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzalx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzn:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzbu;

    invoke-direct {p3, p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzbu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzcn;)V

    invoke-interface {p1, p3}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzch;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzch;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic zzl()Lcom/google/android/gms/internal/meet_coactivities/zzih;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-object v0
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/meet_coactivities/zzcl;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    const-string v2, "MeetIpcManagerImpl.java"

    const-string v3, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v4, "handleBroadcastStateUpdate"

    const/16 v5, 0x298

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Calling handleBroadcastStateUpdate - thread %s"

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzalp;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "handleBroadcastStateUpdate"

    const/16 v3, 0x2a0

    const-string v4, "MeetIpcManagerImpl.java"

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "Missing outgoing observer, skipping sending update"

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaz;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzay;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzay;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zznb;)Lcom/google/android/gms/internal/meet_coactivities/zzay;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzs:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzaf;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzay;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaf;)Lcom/google/android/gms/internal/meet_coactivities/zzay;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzb:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzg:[Ljava/lang/Byte;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "Trying to convert a null Byte[] to a primitive array."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, v3

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzm([B)Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzn;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzn;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzon;)Lcom/google/android/gms/internal/meet_coactivities/zzn;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzay;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzn;)Lcom/google/android/gms/internal/meet_coactivities/zzay;

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzalp;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzalp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzaz;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalx;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzg:[Ljava/lang/Byte;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static final synthetic zzt(Lcom/google/android/gms/internal/meet_coactivities/zzcn;)Lcom/google/android/gms/internal/meet_coactivities/zzab;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzab;

    const-string v1, "getDisconnectMeetingResponse"

    const-string v2, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "MeetIpcManagerImpl.java"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zze()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "disconnectMeeting"

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v4, 0x16c

    invoke-interface {v0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timed out waiting for disconnectMeetingResponse - thread %s"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 v4, 0x16f

    invoke-interface {v0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to get disconnectMeeting response - thread %s"

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    const/16 v4, 0x175

    invoke-interface {p0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received response for disconnectMeeting - thread %s"

    invoke-interface {p0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic zzu(Lcom/google/android/gms/internal/meet_coactivities/zzcn;)Lcom/google/android/gms/internal/meet_coactivities/zzax;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzax;

    const-string v1, "getStatResponse"

    const-string v2, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "MeetIpcManagerImpl.java"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcn;->zze()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "broadcastStatSample"

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v4, 0x182

    invoke-interface {v0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timed out waiting for statResponse - thread %s"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 v4, 0x185

    invoke-interface {v0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to get broadcastStatSample response - thread %s"

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    const/16 v4, 0x18b

    invoke-interface {p0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received response for broadcastStatSample - thread %s"

    invoke-interface {p0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static zzv()Lcom/google/android/gms/internal/meet_coactivities/zzi;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzi;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzh;

    move-result-object v0

    const-string v1, "1.0.5"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzi;

    return-object v0
.end method

.method private final zzw(Lcom/google/android/gms/internal/meet_coactivities/zzbh;Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzm;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    const-string v2, "MeetIpcManagerImpl.java"

    const-string v3, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v4, "getConnectionResponseAndSetMeetingHandle"

    const/16 v5, 0x2f3

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Calling getConnectMeetingResponse - thread %s"

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbh;->zzd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbh;->zze()Ljava/lang/Throwable;

    move-result-object p1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzf()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzg()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v2, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "getConnectionResponseAndSetMeetingHandle"

    const/16 v4, 0x2f7

    invoke-interface {p1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received response for connectMeeting with meetingInfo %s - thread %s"

    invoke-interface {p1, v3, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzaf;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzs:Ljava/util/Optional;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzq:Lcom/google/android/gms/internal/meet_coactivities/zzg;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzm;Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring connection response received in state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    if-nez v1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzg()I

    move-result p2

    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    sget-object p1, Lcom/google/android/livesharing/LiveSharingException$Code;->zzd:Lcom/google/android/livesharing/LiveSharingException$Code;

    invoke-static {p1}, Lcom/google/android/livesharing/zzo;->zza(Lcom/google/android/livesharing/LiveSharingException$Code;)Lcom/google/android/livesharing/LiveSharingException;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p2

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "getConnectionException"

    const/16 v3, 0x36a

    invoke-interface {p2, v1, v2, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to connect because the feature is disabled - thread %s"

    goto/16 :goto_2

    :cond_3
    const-string p1, "Failed for reason: "

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzx;->zza(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "getConnectionException"

    const/16 v4, 0x36f

    invoke-interface {p1, v1, v3, v4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to connect: %s - thread %s"

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzx;->zza(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_6

    instance-of p2, p1, Lcom/google/android/livesharing/LiveSharingException;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/google/android/livesharing/LiveSharingException;

    goto :goto_1

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "ConnectMeetingResponse or MeetingInfo is null"

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "getConnectionException"

    const/16 v3, 0x381

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed call to connectMeeting - thread %s"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, p2

    goto :goto_3

    :cond_6
    const-string p1, "connectMeeting"

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p2

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "getConnectionException"

    const/16 v3, 0x378

    invoke-interface {p2, v1, v2, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timed out waiting for connectMeeting - thread %s"

    :goto_2
    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzB()V

    throw p1
.end method

.method private final zzx(Lcom/google/android/gms/internal/meet_coactivities/zzad;)Lcom/google/android/gms/internal/meet_coactivities/zzm;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object v1

    const-string v2, "meetingInfo unexpectedly null when handling end of meeting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzx()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzl;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzl;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzad;)Lcom/google/android/gms/internal/meet_coactivities/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzB()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v2, "MeetIpcManagerImpl.java"

    const-string v3, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v4, "processIncomingMeetingStateUpdate"

    const/16 v5, 0x1ea

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unexpected receipt of meeting status %s"

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static zzy(Lcom/google/android/gms/internal/meet_coactivities/zzi;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzt;
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzt;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzs;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzi;)Lcom/google/android/gms/internal/meet_coactivities/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzt;

    return-object p0
.end method

.method private static zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Timed out waiting for IPC : "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzbb;)V
    .locals 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzc;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "handleIncomingUpdate"

    const/16 v3, 0x1bb

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "Ignoring stale incoming update"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzd:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbb;->zze()Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zznb;Lcom/google/android/gms/internal/meet_coactivities/zznh;Lcom/google/android/gms/internal/meet_coactivities/zzc;)V

    const-string v0, "handleStateUpdate"

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzbz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzbb;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzD(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbb;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "handleParticipantMetadataSet"

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzca;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzca;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzbb;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzD(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbb;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbb;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzad;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object p1

    const-string v0, "handleMeetingStateUpdate"

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzcb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzcb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzD(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final zzb(Ljava/util/Optional;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzB()V

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzl;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzl;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzad;)Lcom/google/android/gms/internal/meet_coactivities/zzl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzbp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    const-string p1, "handleMeetingStateUpdate"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzD(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzv;)V
    .locals 6
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleStreamingConnectMeetingResponse"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "MeetIpcManagerImpl.java"

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 v3, 0x1f7

    invoke-interface {p1, v1, v0, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "Received null ConnectMeetingResponse, ignoring it."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 v4, 0x1fc

    invoke-interface {p1, v1, v0, v4, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received ConnectMeetingResponse with status: %s, ignoring it."

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzs:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/meet_coactivities/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzaf;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzad;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzbt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    const-string p1, "handleMeetingStateUpdate"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzD(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 v3, 0x204

    invoke-interface {p1, v1, v0, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "ConnectMeetingHandle doesn\'t match, ignoring it."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzg;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzq:Lcom/google/android/gms/internal/meet_coactivities/zzg;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/meet_coactivities/zzr;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    const-string v2, "MeetIpcManagerImpl.java"

    const-string v3, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v4, "connectMeeting"

    const/16 v5, 0xa0

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Calling connectMeeting - thread %s"

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The connectMeeting call is not executed because activityName is missing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzk;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The connectMeeting call is not executed because host application is missing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v2, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "connectMeeting"

    const/16 v4, 0xa4

    invoke-interface {p1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzn()V

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Unexpected call to connectMeeting in state: %s"

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zzbj;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzr;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzby;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzby;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a channel for host application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzk;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "connectMeeting"

    const/16 v4, 0xb8

    const-string v5, "MeetIpcManagerImpl.java"

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzn()V

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :cond_3
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzc;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzbg;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzf:Ljava/time/Duration;

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzbg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzbi;Ljava/time/Duration;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zztj;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zza(Lcom/google/android/gms/internal/meet_coactivities/zztn;Lcom/google/android/gms/internal/meet_coactivities/zzalx;)Lcom/google/android/gms/internal/meet_coactivities/zzalx;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzv()Lcom/google/android/gms/internal/meet_coactivities/zzi;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzy(Lcom/google/android/gms/internal/meet_coactivities/zzi;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzt;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzalx;->zzc(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzbw;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzbw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzbg;Lcom/google/android/gms/internal/meet_coactivities/zzc;)V

    invoke-interface {v4, v5}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzcd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0, v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    const-class v3, Ljava/lang/Exception;

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzbx;

    invoke-direct {v4, p0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzbx;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzr;Ljava/util/Optional;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0, v3, v4, p1}, Lcom/google/common/util/concurrent/Futures;->catchingAsync(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzg()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "MeetIpcManagerImpl.java"

    const-string v2, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "disconnectMeeting"

    const/16 v4, 0x12a

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Calling disconnectMeeting with thread %s"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    const-string v2, "Unexpected call to disconnectMeeting in state: %s"

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    const-string v3, "disconnectMeeting"

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzC(Lcom/google/android/gms/internal/meet_coactivities/zzck;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzq:Lcom/google/android/gms/internal/meet_coactivities/zzg;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzs:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzaf;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzs:Ljava/util/Optional;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzc;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzc;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzcn;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zze:Ljava/time/Duration;

    const-string v5, "DisconnectMeetingResponseObserver"

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzcn;-><init>(Ljava/time/Duration;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzy;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzm;)Lcom/google/android/gms/internal/meet_coactivities/zzy;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzy;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaf;)Lcom/google/android/gms/internal/meet_coactivities/zzy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zztj;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzalx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzbq;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzbq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzcn;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzcf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzbv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbv;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzn:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzh(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    const-string v2, "MeetIpcManagerImpl.java"

    const-string v3, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v4, "broadcastStateUpdate"

    const/16 v5, 0x227

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zza()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Calling broadcastStateUpdate with lamport counter: %d - thread %s"

    invoke-interface {v1, v5, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzq(Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const-string v5, "Unexpected call to broadcastStateUpdate in state: %s"

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzc;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/meet_coactivities/zzc;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzm;Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzc:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzalp;

    if-nez v1, :cond_4

    invoke-static {v4}, Lcom/google/common/base/Verify;->verify(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v6, "initializeObservers"

    const/16 v7, 0x2bf

    const-string v8, "MeetIpcManagerImpl.java"

    invoke-interface {v0, v1, v6, v7, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Initializing the Incoming and Outgoing observers - thread %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzd:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzbf;

    if-nez v6, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Lcom/google/common/base/Verify;->verify(Z)V

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzbf;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzbf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzbi;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zztj;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zza(Lcom/google/android/gms/internal/meet_coactivities/zztn;Lcom/google/android/gms/internal/meet_coactivities/zzalx;)Lcom/google/android/gms/internal/meet_coactivities/zzalx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzalp;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzalp;

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzc;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zznb;Lcom/google/android/gms/internal/meet_coactivities/zznh;Lcom/google/android/gms/internal/meet_coactivities/zzc;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzA()V

    monitor-exit v5

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public final zzi([Ljava/lang/Byte;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzck;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzck;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string v4, "Tried to set participant metadata while not connected to a meeting."

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_2

    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_2

    move v2, v3

    :cond_2
    const-string v3, "Participant metadata size cannot exceed %s."

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzg:[Ljava/lang/Byte;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzc:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzA()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zzbg;Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzm;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzbh;Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzk(Lcom/google/android/gms/internal/meet_coactivities/zzcn;Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzm;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzbh;Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzm(Lcom/google/android/gms/internal/meet_coactivities/zzr;Ljava/util/Optional;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    instance-of v0, p3, Lcom/google/android/livesharing/LiveSharingException;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "logConnectMeetingAsStreamException"

    const/16 v3, 0x38a

    invoke-interface {p3, v1, v2, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzk;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectMeetingAsStream request failed with a generic exception while connecting to %s."

    :goto_0
    invoke-interface {p3, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    check-cast p3, Lcom/google/android/livesharing/LiveSharingException;

    invoke-virtual {p3}, Lcom/google/android/livesharing/LiveSharingException;->getCode()Lcom/google/android/livesharing/LiveSharingException$Code;

    move-result-object v0

    sget-object v1, Lcom/google/android/livesharing/LiveSharingException$Code;->zzb:Lcom/google/android/livesharing/LiveSharingException$Code;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "MeetIpcManagerImpl.java"

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "logConnectMeetingAsStreamException"

    const/16 v3, 0x391

    invoke-interface {p3, v1, v2, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzk;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectMeetingAsStream failed due to old %s."

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "MeetIpcManagerImpl.java"

    const-string v2, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v3, "logConnectMeetingAsStreamException"

    const/16 v4, 0x395

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p3}, Lcom/google/android/livesharing/LiveSharingException;->getCode()Lcom/google/android/livesharing/LiveSharingException$Code;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzk;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectMeetingAsStream failed with code %s while connecting to %s"

    invoke-interface {v0, v2, p3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzh:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/MeetIpcManagerImpl"

    const-string v2, "lambda$connectMeeting$0"

    const/16 v3, 0xc9

    const-string v4, "MeetIpcManagerImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "connectMeetingAsStream is not implemented and switch to unary connectMeeting. Current state is: %s."

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzcj;)Lcom/google/android/gms/internal/meet_coactivities/zzck;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcj;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzcj;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzc;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzcn;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzf:Ljava/time/Duration;

    const-string v2, "ConnectMeetingResponseObserver"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcn;-><init>(Ljava/time/Duration;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzv()Lcom/google/android/gms/internal/meet_coactivities/zzi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzy(Lcom/google/android/gms/internal/meet_coactivities/zzi;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzt;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zztj;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzalx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzbr;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzbr;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzcn;Lcom/google/android/gms/internal/meet_coactivities/zzc;)V

    invoke-interface {p1, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzce;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzce;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzo:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    monitor-exit p3

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic zzo(Lcom/google/android/gms/internal/meet_coactivities/zzbb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzbn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbb;->zze()Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbn;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V

    return-void
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/meet_coactivities/zzbb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzbn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbb;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbn;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzo;)V

    return-void
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzbn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbn;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzbn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbn;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    return-void
.end method

.method public final synthetic zzs(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzbn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbn;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    return-void
.end method
