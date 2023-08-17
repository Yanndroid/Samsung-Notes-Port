.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzfz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

.field public final synthetic zzb:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfz;->zzb:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfz;->zzb:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzgf;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzgf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
