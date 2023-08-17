.class final Lcom/google/android/gms/internal/meet_coactivities/zzgj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

.field private final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzmt;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/livesharing/internal/LiveSharingSessionFactory"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzbo;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzdd;Lcom/google/android/gms/internal/meet_coactivities/zzmt;Lcom/google/android/gms/internal/meet_coactivities/zzfs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzmt;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzgj;)Lcom/google/android/gms/internal/meet_coactivities/zzbo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    return-object p0
.end method

.method public static bridge synthetic zze()Lcom/google/android/gms/internal/meet_coactivities/zzih;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-object v0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzgp;Lcom/google/android/gms/internal/meet_coactivities/zzia;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "lambda$createAndActivateCoActivity$5"

    const-string v1, "com/google/android/livesharing/internal/LiveSharingSessionFactory"

    const-string v2, "LiveSharingSessionFactory.java"

    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzia;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgp;->zzc(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 p1, 0xb6

    invoke-interface {p0, v1, v0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p1, "Unexpected error while applying an update."

    :goto_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 p1, 0xb4

    invoke-interface {p0, v1, v0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p1, "Invalid update proto."

    goto :goto_0
.end method

.method public static final synthetic zzi(Lcom/google/android/gms/internal/meet_coactivities/zzhn;Ljava/util/Optional;)Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .locals 5

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/livesharing/CoWatchingState;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhz;->zzd(Lcom/google/android/livesharing/CoWatchingState;)Lcom/google/android/gms/internal/meet_coactivities/zznl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcp;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zznl;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 v1, 0x92

    const-string v2, "com/google/android/livesharing/internal/LiveSharingSessionFactory"

    const-string v3, "maybeValidateHeartbeatCoWatchingState"

    const-string v4, "LiveSharingSessionFactory.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Invalid heartbeat state. Sending anyway."

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/livesharing/CoWatchingState;

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoWatchingState;->mediaPlayoutPosition()Ljava/time/Duration;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzc(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object p0

    return-object p0
.end method

.method private final zzj(Ljava/util/function/Function;Lcom/google/android/gms/internal/meet_coactivities/zzho;Lcom/google/android/gms/internal/meet_coactivities/zzgp;Lcom/google/android/gms/internal/meet_coactivities/zzia;Lcom/google/android/gms/internal/meet_coactivities/zzgi;Ljava/util/function/Supplier;)Lcom/google/android/gms/internal/meet_coactivities/zzft;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzfy;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzfy;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgp;Lcom/google/android/gms/internal/meet_coactivities/zzia;)V

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzfz;

    invoke-direct {v1, p0, p6}, Lcom/google/android/gms/internal/meet_coactivities/zzfz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;Ljava/util/function/Supplier;)V

    new-instance p6, Lcom/google/android/gms/internal/meet_coactivities/zzcz;

    invoke-direct {p6}, Lcom/google/android/gms/internal/meet_coactivities/zzcz;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {p6, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzgm;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzbo;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzgm;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzho;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzfs;->zzf()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzef;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzdd;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzef;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzgm;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzef;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzga;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzga;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzbo;)V

    invoke-interface {p5, p2, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzgi;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzho;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/google/android/gms/internal/meet_coactivities/zzhs;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzgm;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzhs;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzgm;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzdd;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzgm;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzgp;)Lcom/google/android/gms/internal/meet_coactivities/zzgm;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/meet_coactivities/zzgm;->zzg()Lcom/google/android/gms/internal/meet_coactivities/zzgn;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzgl;

    invoke-interface {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzgp;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzgh;

    invoke-direct {p3, p0, p1, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzgh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;Lcom/google/android/gms/internal/meet_coactivities/zzgl;Lcom/google/android/gms/internal/meet_coactivities/zzia;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)Lcom/google/android/gms/internal/meet_coactivities/zzeg;
    .locals 7

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzfu;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzd:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzmt;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzmt;Lcom/google/android/gms/internal/meet_coactivities/zzdd;)Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzgd;

    invoke-direct {v6, p0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzgd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;Lcom/google/android/livesharing/CoWatchingSessionDelegate;Lcom/google/android/gms/internal/meet_coactivities/zzhn;)V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzge;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzge;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfs;->zzb()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdp;->zza(Lcom/google/android/livesharing/CoWatchingSessionDelegate;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzdp;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzhz;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzhz;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzj(Ljava/util/function/Function;Lcom/google/android/gms/internal/meet_coactivities/zzho;Lcom/google/android/gms/internal/meet_coactivities/zzgp;Lcom/google/android/gms/internal/meet_coactivities/zzia;Lcom/google/android/gms/internal/meet_coactivities/zzgi;Ljava/util/function/Supplier;)Lcom/google/android/gms/internal/meet_coactivities/zzft;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzeg;

    return-object p1
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zzhl;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/google/android/gms/internal/meet_coactivities/zzhs;
    .locals 1

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzhi;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-direct {p3, p1, p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhi;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzho;Ljava/util/function/Consumer;Lcom/google/android/gms/internal/meet_coactivities/zzdd;)V

    return-object p3
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/meet_coactivities/zzhn;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/google/android/gms/internal/meet_coactivities/zzhs;
    .locals 1

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzhj;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-direct {p3, p1, p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhj;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzho;Ljava/util/function/Consumer;Lcom/google/android/gms/internal/meet_coactivities/zzdd;)V

    return-object p3
.end method

.method public final synthetic zzf(Lcom/google/android/livesharing/CoWatchingSessionDelegate;Lcom/google/android/gms/internal/meet_coactivities/zzhn;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzfw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfw;-><init>(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfs;->zzb()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzfx;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfx;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;Lcom/google/android/gms/internal/meet_coactivities/zzhn;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/livesharing/CoDoingSessionDelegate;)Lcom/google/android/gms/internal/meet_coactivities/zzdm;
    .locals 7

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzfv;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;)V

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzhl;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzd:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhl;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzgb;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzgb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzhl;)V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzgc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgc;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfs;->zza()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdj;->zza(Lcom/google/android/livesharing/CoDoingSessionDelegate;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzdj;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzhw;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzhw;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzj(Ljava/util/function/Function;Lcom/google/android/gms/internal/meet_coactivities/zzho;Lcom/google/android/gms/internal/meet_coactivities/zzgp;Lcom/google/android/gms/internal/meet_coactivities/zzia;Lcom/google/android/gms/internal/meet_coactivities/zzgi;Ljava/util/function/Supplier;)Lcom/google/android/gms/internal/meet_coactivities/zzft;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzdm;

    return-object p1
.end method
