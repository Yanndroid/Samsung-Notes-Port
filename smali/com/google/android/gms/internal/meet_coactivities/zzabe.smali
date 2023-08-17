.class final Lcom/google/android/gms/internal/meet_coactivities/zzabe;
.super Lcom/google/android/gms/internal/meet_coactivities/zzael;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzabf;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaif;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzabf;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzael;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, -0x7fffffff

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzabd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzabd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabe;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaif;

    const-string p1, "delegate"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    const-string p1, "authority"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzacb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzaby;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzael;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void

    :cond_1
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
