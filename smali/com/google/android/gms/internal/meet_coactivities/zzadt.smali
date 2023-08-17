.class Lcom/google/android/gms/internal/meet_coactivities/zzadt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzabv;


# instance fields
.field private volatile zza:Z

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

.field private zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zze:Ljava/util/List;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzads;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzg:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzh:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzi:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zze:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    return-void
.end method

.method private final zzo(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zze:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_1
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

.method private final zzp()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zze:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zze:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzads;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zzb()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zze:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zze:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static bridge synthetic zzr(Lcom/google/android/gms/internal/meet_coactivities/zzadt;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    return-object p0
.end method

.method public static bridge synthetic zzt(Lcom/google/android/gms/internal/meet_coactivities/zzadt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzp()V

    return-void
.end method

.method private final zzu(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V

    return-void
.end method

.method private final zzv(Lcom/google/android/gms/internal/meet_coactivities/zzabv;)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "realStream already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzh:J

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/meet_coactivities/zzaez;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    iget-wide v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzh:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzg:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaez;)V

    goto :goto_0

    :cond_1
    const-string v0, "buffered_nanos"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzg:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    const-string v0, "waiting_for_connection"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "May only be called after start"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "reason"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaig;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaig;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzabv;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move v1, v2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzadm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzo(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzp()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzq(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzc()V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzadl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzadn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadn;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzadd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzf(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzf(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzadc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadc;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/meet_coactivities/zzua;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzade;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzade;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;Lcom/google/android/gms/internal/meet_coactivities/zzua;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/meet_coactivities/zzul;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzadi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadi;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;Lcom/google/android/gms/internal/meet_coactivities/zzul;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/meet_coactivities/zzuo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzadf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;Lcom/google/android/gms/internal/meet_coactivities/zzuo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzj(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzadg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzk(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzadh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza:Z

    if-nez v1, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzads;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzads;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzads;

    move-object p1, v2

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzg:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzu(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzm(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzm(Ljava/io/InputStream;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzadk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzq(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/meet_coactivities/zzabv;)Ljava/lang/Runnable;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzabv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zze:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zza:Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzu(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzadj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadj;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
