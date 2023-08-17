.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzbo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Ljava/util/Optional;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MeetIpcManager.class"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zza:Ljava/util/Optional;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zze(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/google/android/gms/internal/meet_coactivities/zzbl;)Lcom/google/android/gms/internal/meet_coactivities/zzbo;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zza:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzbn;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/meet_coactivities/zzbn;Lcom/google/android/gms/internal/meet_coactivities/zzbl;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zza:Ljava/util/Optional;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zza:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzbo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract zzd()Lcom/google/android/gms/internal/meet_coactivities/zzg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract zzf(Lcom/google/android/gms/internal/meet_coactivities/zzr;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract zzg()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract zzh(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract zzi([Ljava/lang/Byte;)V
.end method
