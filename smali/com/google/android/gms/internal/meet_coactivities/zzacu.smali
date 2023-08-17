.class public Lcom/google/android/gms/internal/meet_coactivities/zzacu;
.super Lcom/google/android/gms/internal/meet_coactivities/zztn;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zztn;


# instance fields
.field private final zzc:Ljava/util/concurrent/ScheduledFuture;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

.field private volatile zzf:Z

.field private zzg:Lcom/google/android/gms/internal/meet_coactivities/zztm;

.field private zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

.field private zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzj:Ljava/util/List;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/meet_coactivities/zzact;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zza:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzacn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zzul;)V
    .locals 8
    .param p3    # Lcom/google/android/gms/internal/meet_coactivities/zzul;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztn;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzj:Ljava/util/List;

    const-string v0, "callExecutor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzd:Ljava/util/concurrent/Executor;

    const-string p1, "scheduler"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zzb(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    rem-long/2addr v6, v4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const-string v4, "ClientCall started after deadline exceeded. Deadline exceeded after -"

    goto :goto_0

    :cond_1
    const-string v4, "Deadline exceeded after "

    :goto_0
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, ".%09d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s. "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzacg;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzacg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Ljava/lang/StringBuilder;)V

    invoke-interface {p2, v2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzc:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)Lcom/google/android/gms/internal/meet_coactivities/zztn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)Lcom/google/android/gms/internal/meet_coactivities/zzuh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V
    .locals 0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-void
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzn()V

    return-void
.end method

.method private final zzl(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    if-nez v0, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zztn;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    const/4 p2, 0x0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzacj;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzacj;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzm(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzd:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzaco;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaco;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzn()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzk()V

    return-void

    :cond_3
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzm(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzn()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzj:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzact;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzd:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzach;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzach;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zzact;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzj:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzj:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final zzo(Lcom/google/android/gms/internal/meet_coactivities/zztn;)V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "realCall already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzc:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    const-string v2, "realCall"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Call cancelled without message"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzacm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzacm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzc(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzacl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzacl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzd(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzack;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzack;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zztm;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf:Z

    if-nez v1, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzact;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzact;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zztm;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzact;

    move-object p1, v2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzd:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzaco;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaco;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zze(Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaci;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaci;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzm(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/meet_coactivities/zztn;)Ljava/lang/Runnable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zztn;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zztn;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzacf;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zzk()V
    .locals 0

    return-void
.end method
