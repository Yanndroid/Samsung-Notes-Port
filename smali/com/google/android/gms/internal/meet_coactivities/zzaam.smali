.class final Lcom/google/android/gms/internal/meet_coactivities/zzaam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/internal/meet_coactivities/zzzc;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private final zzb:Landroid/content/Intent;

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzb;

.field private final zze:Ljava/util/concurrent/Executor;

.field private zzf:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzg:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzh:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/Intent;ILcom/google/android/gms/internal/meet_coactivities/zzzb;)V
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzb:Landroid/content/Intent;

    iput p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzf:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zze:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzh:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zze(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zza:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "io.grpc.binder.internal.ServiceBinding"

    const-string v3, "notifyUnbound"

    const-string v4, "notify unbound "

    move-object v0, v6

    move-object v1, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzf:Landroid/content/Context;

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzh:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzh:I

    const-string v0, "io.grpc.binder.internal.ServiceBinding"

    const-string v1, "notifyUnbound"

    const-string v2, "notify unbound - notifying"

    invoke-virtual {v6, v7, v0, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzb;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBindingDied: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNullBinding: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzg:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v0, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzg:I

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzh:I

    if-ne p1, v1, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzh:I

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zza:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "io.grpc.binder.internal.ServiceBinding"

    const-string v2, "notifyBound"

    const-string v3, "notify bound - notifying"

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzb;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzzb;->zza(Landroid/os/IBinder;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method

.method public final declared-synchronized zza()V
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzg:I

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzb:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") returned false"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    const-string v1, "RuntimeException from bindService"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    const-string v1, "SecurityException from bindService"

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzf:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v6

    :try_start_4
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zza:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "io.grpc.binder.internal.ServiceBinding"

    const-string v4, "handleBindServiceFailure"

    const-string v5, "Could not clean up after bindService() failure."

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzg:I

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zze:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzaal;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaal;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaam;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzg:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzf:Landroid/content/Context;

    :goto_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzg:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zze:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzaak;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaak;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaam;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
