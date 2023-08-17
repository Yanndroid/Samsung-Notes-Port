.class public final Lcom/google/android/gms/internal/meet_coactivities/zzakz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzakz;


# instance fields
.field private final zzb:Ljava/util/IdentityHashMap;

.field private zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzakv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakv;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzakv;[B)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakv;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzb:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakv;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzaky;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaky;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/meet_coactivities/zzaky;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakz;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzaky;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzakz;)Ljava/util/IdentityHashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzb:Ljava/util/IdentityHashMap;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzakz;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzakz;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaky;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzb:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaky;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakx;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzb:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzc:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzc:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iget p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzb:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzb:I

    iget-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zza:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/meet_coactivities/zzaky;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzb:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zza:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "Releasing the wrong instance"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzb:I

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v4, "Refcount has already reached zero"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzb:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzb:I

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzc:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    const-string v1, "Destroy task already scheduled"

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_3

    const-string v1, "grpc-shared-destroyer-%d"

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzd(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakz;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzafw;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzakw;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzakw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzakz;Lcom/google/android/gms/internal/meet_coactivities/zzakx;Lcom/google/android/gms/internal/meet_coactivities/zzaky;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzafw;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p1, p2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakx;->zzc:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No cached instance found for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
