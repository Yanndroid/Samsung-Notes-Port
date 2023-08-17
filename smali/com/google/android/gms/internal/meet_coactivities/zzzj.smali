.class public final Lcom/google/android/gms/internal/meet_coactivities/zzzj;
.super Lcom/google/android/gms/internal/meet_coactivities/zzzl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzacb;
.implements Lcom/google/android/gms/internal/meet_coactivities/zzzb;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

.field private final zzh:Ljava/util/concurrent/Executor;

.field private final zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

.field private final zzj:Lcom/google/android/gms/internal/meet_coactivities/zzzc;

.field private final zzk:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzl:Lcom/google/android/gms/internal/meet_coactivities/zzaaj;

.field private zzm:Lcom/google/android/gms/internal/meet_coactivities/zzaid;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzn:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/meet_coactivities/zzyn;Lcom/google/android/gms/internal/meet_coactivities/zzyr;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/meet_coactivities/zzaih;Lcom/google/android/gms/internal/meet_coactivities/zzaih;Lcom/google/android/gms/internal/meet_coactivities/zzyy;Lcom/google/android/gms/internal/meet_coactivities/zzyv;Lcom/google/android/gms/internal/meet_coactivities/zztf;)V
    .locals 8

    move-object v6, p0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaen;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaen;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzus;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    move-object v4, p1

    invoke-direct {v3, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzyn;->zzc(Landroid/content/ComponentName;)Lcom/google/android/gms/internal/meet_coactivities/zzyn;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzus;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    move-object v2, p2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    move-object/from16 v3, p8

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyn;->zza()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/google/android/gms/internal/meet_coactivities/zzzj;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvj;->zzb(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    move-result-object v1

    const/4 v3, 0x0

    move-object v5, p5

    invoke-direct {p0, p5, v0, v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaih;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzvj;Lcom/google/android/gms/internal/meet_coactivities/zzzk;)V

    const/16 v0, 0x3e9

    iput v0, v6, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzn:I

    move-object v0, p6

    iput-object v0, v6, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    move-object v1, p7

    iput-object v1, v6, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    invoke-interface {p6}, Lcom/google/android/gms/internal/meet_coactivities/zzaih;->zza()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzh:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v6, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzk:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaaj;

    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzzg;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzj;)V

    invoke-direct {v0, v1, v5, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaaj;-><init>(Lcom/google/common/base/Ticker;Lcom/google/android/gms/internal/meet_coactivities/zzzg;[B)V

    iput-object v0, v6, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzaaj;

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzaam;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyn;->zzb()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zza()I

    move-result v5

    move-object v0, v7

    move-object v1, p4

    move-object v2, p1

    move v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzaam;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/Intent;ILcom/google/android/gms/internal/meet_coactivities/zzzb;)V

    iput-object v7, v6, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzzc;

    return-void
.end method

.method private static zzz(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzwu;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 0

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zza([Lcom/google/android/gms/internal/meet_coactivities/zztw;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzd()V

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)V

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized zza(Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzh:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zzb(Landroid/os/IBinder;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzaad;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzaad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzy(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzv()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string p3, "newStream() before transportReady()"

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {p1, p3, p2, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzwu;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzn:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzn:I

    const v1, 0xffffff

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzn:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {p4, v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zza([Lcom/google/android/gms/internal/meet_coactivities/zztw;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzzp;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzti;)Z

    move-result p3

    invoke-direct {v6, p0, v0, v2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzzp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;Lcom/google/android/gms/internal/meet_coactivities/zztf;IZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string p3, "Clashing call IDs"

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {p1, p3, p2, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzwu;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzk:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaid;->zza(Z)V

    :cond_4
    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzaae;

    move-object v0, p3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzaae;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;ILcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzalb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaan;

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-direct {p1, v6, p3, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaan;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzp;Lcom/google/android/gms/internal/meet_coactivities/zzaae;Lcom/google/android/gms/internal/meet_coactivities/zztf;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_3
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzzy;

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-direct {p1, v6, p3, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzzy;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzp;Lcom/google/android/gms/internal/meet_coactivities/zzaae;Lcom/google/android/gms/internal/meet_coactivities/zztf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/meet_coactivities/zzaid;)Ljava/lang/Runnable;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzzi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzi;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzf(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzaaj;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaaj;->zza(I)V

    return-void
.end method

.method public final zzg(Landroid/os/Parcel;)V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zztc;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzaen;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzxu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxu;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzxu;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxu;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzy(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v0, "Wire format version mismatch"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v0, "Malformed SETUP_TRANSPORT data"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzh:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzzh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzj;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final synthetic zzh(Landroid/os/IBinder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v1, "No remote UID available"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyy;->zza(I)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    :goto_0
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzy(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzh:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zzb(Landroid/os/IBinder;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzaad;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzaad;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v0, "Failed to observe outgoing binder"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzv()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzx(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaid;->zzb()V

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final synthetic zzi()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzx(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzzc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzc;->zza()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaid;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method

.method public final zzk()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzk:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaid;->zza(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzzc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaid;->zzd()V

    return-void
.end method

.method public final zzl()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzh:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaih;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "reason"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzn(Lcom/google/android/gms/internal/meet_coactivities/zzzt;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzk:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaid;->zza(Z)V

    :cond_0
    iget p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzc:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzs(I)V

    return-void
.end method
