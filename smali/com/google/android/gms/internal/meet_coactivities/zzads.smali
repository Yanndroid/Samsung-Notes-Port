.class final Lcom/google/android/gms/internal/meet_coactivities/zzads;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzabx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

.field private volatile zzb:Z

.field private zzc:Ljava/util/List;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzads;)Lcom/google/android/gms/internal/meet_coactivities/zzabx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    return-object p0
.end method

.method private final zzc(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzb()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzb:Z

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzadr;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzads;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzadq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzads;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzale;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzado;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzado;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzads;Lcom/google/android/gms/internal/meet_coactivities/zzald;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzale;->zzg()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzadp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzads;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method
