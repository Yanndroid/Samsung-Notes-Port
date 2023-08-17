.class final Lcom/google/android/gms/internal/meet_coactivities/zzaft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzvi;
.implements Lcom/google/android/gms/internal/meet_coactivities/zzalh;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzafm;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaca;

.field private final zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzvb;

.field private final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

.field private final zzh:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

.field private final zzi:Lcom/google/android/gms/internal/meet_coactivities/zztl;

.field private final zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

.field private final zzk:Lcom/google/android/gms/internal/meet_coactivities/zzafn;

.field private volatile zzl:Ljava/util/List;

.field private final zzm:Lcom/google/common/base/Stopwatch;

.field private zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Lcom/google/android/gms/internal/meet_coactivities/zzaie;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzq:Ljava/util/Collection;

.field private final zzr:Lcom/google/android/gms/internal/meet_coactivities/zzaey;

.field private zzs:Lcom/google/android/gms/internal/meet_coactivities/zzacb;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile zzt:Lcom/google/android/gms/internal/meet_coactivities/zzaie;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile zzu:Lcom/google/android/gms/internal/meet_coactivities/zzud;

.field private zzv:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field private final zzw:Lcom/google/android/gms/internal/meet_coactivities/zzaee;

.field private zzx:Lcom/google/android/gms/internal/meet_coactivities/zzaef;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzaee;Lcom/google/android/gms/internal/meet_coactivities/zzaca;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Lcom/google/android/gms/internal/meet_coactivities/zzyl;Lcom/google/android/gms/internal/meet_coactivities/zzafm;Lcom/google/android/gms/internal/meet_coactivities/zzvb;Lcom/google/android/gms/internal/meet_coactivities/zzabi;Lcom/google/android/gms/internal/meet_coactivities/zzabk;Lcom/google/android/gms/internal/meet_coactivities/zzvj;Lcom/google/android/gms/internal/meet_coactivities/zztl;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzq:Ljava/util/Collection;

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzafa;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzafa;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzr:Lcom/google/android/gms/internal/meet_coactivities/zzaey;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-static {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzuc;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzud;

    const-string p3, "addressGroups"

    invoke-static {p1, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    const-string p15, "addressGroups is empty"

    invoke-static {p3, p15}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string p3, "addressGroups contains null entry"

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzH(Ljava/util/List;Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl:Ljava/util/List;

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzw:Lcom/google/android/gms/internal/meet_coactivities/zzaee;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    iput-object p6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p7}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Stopwatch;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzm:Lcom/google/common/base/Stopwatch;

    iput-object p8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    iput-object p9, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzafm;

    iput-object p10, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzvb;

    iput-object p11, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    const-string p1, "channelTracer"

    invoke-static {p12, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    const-string p1, "logId"

    invoke-static {p13, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    const-string p1, "channelLogger"

    invoke-static {p14, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zztl;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zztl;

    return-void
.end method

.method public static bridge synthetic zzA(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzafg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzafg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public static bridge synthetic zzB(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzafh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzafh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public static bridge synthetic zzC(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzud;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzx:Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaef;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzx:Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzx:Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaef;->zza()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzm:Lcom/google/common/base/Stopwatch;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long v5, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zztl;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    if-nez p1, :cond_1

    move v3, v4

    :cond_1
    const-string p1, "previous reconnectTask is not done"

    invoke-static {v3, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzafb;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzafb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    iget-object v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    return-void
.end method

.method public static bridge synthetic zzD(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Should have no reconnectTask scheduled"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzf()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzm:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzuw;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzuw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuw;->zzb()Ljava/net/InetSocketAddress;

    move-result-object v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzup;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztd;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzabz;

    invoke-direct {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzabz;-><init>()V

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb:Ljava/lang/String;

    :cond_3
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzabz;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzabz;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzabz;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuw;)Lcom/google/android/gms/internal/meet_coactivities/zzabz;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzafs;

    invoke-direct {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzafs;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    iput-object v5, v3, Lcom/google/android/gms/internal/meet_coactivities/zzafs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzafl;

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    invoke-interface {v6, v0, v7, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->zza(Ljava/net/SocketAddress;Lcom/google/android/gms/internal/meet_coactivities/zzabz;Lcom/google/android/gms/internal/meet_coactivities/zztl;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    invoke-direct {v5, v6, v7, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzafl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzacb;Lcom/google/android/gms/internal/meet_coactivities/zzabi;Lcom/google/android/gms/internal/meet_coactivities/zzafk;)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzvn;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/meet_coactivities/zzafs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzvb;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzvb;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvi;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzs:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzq:Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    invoke-direct {v4, p0, v5, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafr;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Ljava/net/SocketAddress;)V

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzaie;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzaid;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zztl;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, v3, Lcom/google/android/gms/internal/meet_coactivities/zzafs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "Started transport {0}"

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic zzG(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaef;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzx:Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    return-void
.end method

.method private static zzH(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzI(Lcom/google/android/gms/internal/meet_coactivities/zzud;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzud;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzafm;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzahk;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwa;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v1, "listener is null"

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwa;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzud;)V

    :cond_2
    return-void
.end method

.method private static final zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzi()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzi()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zztl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zztl;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzud;

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzvb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzvb;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzs:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaey;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzr:Lcom/google/android/gms/internal/meet_coactivities/zzaey;

    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzafm;

    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    return-object p0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    return-object p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    return-object p0
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzp(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzq:Ljava/util/Collection;

    return-object p0
.end method

.method public static bridge synthetic zzq(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static bridge synthetic zzr(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    return-void
.end method

.method public static bridge synthetic zzs(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic zzt(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzs:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    return-void
.end method

.method public static bridge synthetic zzu(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyk;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    return-void
.end method

.method public static bridge synthetic zzv(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    return-void
.end method

.method public static bridge synthetic zzw(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    return-void
.end method

.method public static bridge synthetic zzx(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-void
.end method

.method public static bridge synthetic zzy(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zza()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzx:Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    :cond_0
    return-void
.end method

.method public static bridge synthetic zzz(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzuc;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzud;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvj;->zza()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl:Ljava/util/List;

    const-string v2, "addressGroups"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzE(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzaff;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaff;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public final zzF(Ljava/util/List;)V
    .locals 2

    const-string v0, "newAddressGroups"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newAddressGroups contains null entry"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzH(Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "newAddressGroups is empty"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzafe;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzafe;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/meet_coactivities/zzaby;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzafc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzafc;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    const/4 v0, 0x0

    return-object v0
.end method
