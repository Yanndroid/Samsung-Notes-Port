.class public final Lcom/google/android/gms/internal/meet_coactivities/zzakr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakm;


# instance fields
.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Ljava/util/Queue;

.field private volatile zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zza:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzako;

    const-class v2, Lcom/google/android/gms/internal/meet_coactivities/zzakr;

    const-string v3, "zze"

    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzako;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lcom/google/android/gms/internal/meet_coactivities/zzakn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zza:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "io.grpc.internal.SerializingExecutor"

    const-string v5, "getAtomicHelper"

    const-string v6, "FieldUpdaterAtomicHelper failed"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzakq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzakp;)V

    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakm;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzd:Ljava/util/Queue;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zze:I

    const-string v0, "\'executor\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzakr;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zze:I

    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzakr;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zze:I

    return-void
.end method

.method private final zzc(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakm;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakm;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzakr;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzc:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzd:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakm;

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakm;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzakr;I)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzd:Ljava/util/Queue;

    const-string v1, "\'r\' must not be null."

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzc:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzc:Ljava/util/concurrent/Executor;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzd:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zza:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "io.grpc.internal.SerializingExecutor"

    const-string v6, "run"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while executing runnable "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakm;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakm;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzakr;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzc(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakm;

    invoke-virtual {v2, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakm;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzakr;I)V

    throw v1
.end method
