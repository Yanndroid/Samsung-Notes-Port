.class final Lcom/google/android/gms/internal/meet_coactivities/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzalx;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzbi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/communications/sdk/sync/ipc/BroadcastStateUpdateResponseObserver"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzbi;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/BroadcastStateUpdateResponseObserver"

    const-string v2, "onCompleted"

    const/16 v3, 0x30

    const-string v4, "BroadcastStateUpdateResponseObserver.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCompleted called - thread %s"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzbi;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzbi;->zzb(Ljava/util/Optional;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/BroadcastStateUpdateResponseObserver"

    const-string v2, "onError"

    const/16 v3, 0x24

    const-string v4, "BroadcastStateUpdateResponseObserver.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onError called - thread %s"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzbi;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbi;->zzb(Ljava/util/Optional;)V

    return-void
.end method

.method public final bridge synthetic zzc(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzbb;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzbf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/libraries/communications/sdk/sync/ipc/BroadcastStateUpdateResponseObserver"

    const-string v2, "onNext"

    const/16 v3, 0x1a

    const-string v4, "BroadcastStateUpdateResponseObserver.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbb;->zze()Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zza()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onNext called with response with lamport counter: %d - thread %s"

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzq(Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzbi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbi;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzbb;)V

    return-void
.end method
