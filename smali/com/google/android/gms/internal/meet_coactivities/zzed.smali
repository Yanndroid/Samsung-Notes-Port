.class public final Lcom/google/android/gms/internal/meet_coactivities/zzed;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/livesharing/internal/ExceptionUtils"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public static varargs zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzec;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzec;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza:Ljava/util/concurrent/Executor;

    const-class p2, Ljava/lang/Throwable;

    invoke-static {p0, p2, v0, p1}, Lcom/google/common/util/concurrent/Futures;->catchingAsync(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzea;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzea;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza:Ljava/util/concurrent/Executor;

    const-class v1, Ljava/lang/Throwable;

    invoke-static {p0, v1, v0, p1}, Lcom/google/common/util/concurrent/Futures;->catchingAsync(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zze(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/google/android/livesharing/zzo;->zzb(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingException;

    move-result-object p0

    throw p0
.end method

.method public static zzd(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzeb;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzc(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    return-void
.end method

.method public static zze(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs zzf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v0, "com/google/android/livesharing/internal/ExceptionUtils"

    const-string v1, "recordInternalException"

    const/16 v2, 0x19

    const-string v3, "ExceptionUtils.java"

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzu(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
