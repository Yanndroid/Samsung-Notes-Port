.class final Lcom/google/android/gms/internal/meet_coactivities/zzabf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzaca;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzaca;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaca;Lcom/google/android/gms/internal/meet_coactivities/zztg;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "delegate"

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    const-string p1, "appExecutor"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabf;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->close()V

    return-void
.end method

.method public final zza(Ljava/net/SocketAddress;Lcom/google/android/gms/internal/meet_coactivities/zzabz;Lcom/google/android/gms/internal/meet_coactivities/zztl;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzabe;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->zza(Ljava/net/SocketAddress;Lcom/google/android/gms/internal/meet_coactivities/zzabz;Lcom/google/android/gms/internal/meet_coactivities/zztl;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabe;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabf;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzb()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
