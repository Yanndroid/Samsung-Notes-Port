.class final Lcom/google/android/gms/internal/meet_coactivities/zzdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzgp;


# instance fields
.field private final zza:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Lcom/google/android/livesharing/CoWatchingSessionDelegate;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdp;->zza:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdp;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static zza(Lcom/google/android/livesharing/CoWatchingSessionDelegate;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzdp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdp;-><init>(Lcom/google/android/livesharing/CoWatchingSessionDelegate;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdp;->zza:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzdn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdn;-><init>(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdp;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/livesharing/CoWatchingState;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdo;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzdp;Lcom/google/android/livesharing/CoWatchingState;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdp;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to apply state."

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/livesharing/CoWatchingState;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdp;->zza:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/livesharing/CoWatchingSessionDelegate;->onCoWatchingStateChanged(Lcom/google/android/livesharing/CoWatchingState;)V

    return-void
.end method
