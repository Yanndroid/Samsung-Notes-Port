.class final Lcom/google/android/gms/internal/meet_coactivities/zzadb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzaie;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

.field private zze:Ljava/lang/Runnable;

.field private zzf:Ljava/lang/Runnable;

.field private zzg:Ljava/lang/Runnable;

.field private zzh:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

.field private zzi:Ljava/util/Collection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/meet_coactivities/zzvz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzl:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/meet_coactivities/zzyl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvj;->zzb(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzc:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Lcom/google/android/gms/internal/meet_coactivities/zzaid;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzf:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzg:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzg:Ljava/lang/Runnable;

    return-void
.end method

.method private final zzo(Lcom/google/android/gms/internal/meet_coactivities/zzvu;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzada;
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzada;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzada;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Lcom/google/android/gms/internal/meet_coactivities/zzvu;[Lcom/google/android/gms/internal/meet_coactivities/zztw;Lcom/google/android/gms/internal/meet_coactivities/zzacz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zze:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 6

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaio;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    const-wide/16 p1, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-eqz v3, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    invoke-direct {p1, v3, p2, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)V

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-object p1

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzvz;

    if-nez v3, :cond_1

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzvu;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzada;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzl:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_2

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzvu;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzada;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-wide p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzl:J

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvz;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzo()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvt;Z)Lcom/google/android/gms/internal/meet_coactivities/zzaby;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object p3

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzaby;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    throw p1
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zzaid;)Ljava/lang/Runnable;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzacv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzacv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Lcom/google/android/gms/internal/meet_coactivities/zzaid;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zze:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzacw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzacw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Lcom/google/android/gms/internal/meet_coactivities/zzaid;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzf:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzacx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzacx;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Lcom/google/android/gms/internal/meet_coactivities/zzaid;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzg:Ljava/lang/Runnable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V
    .locals 9
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzvz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzvz;

    iget-wide v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzl:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzl:J

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzn()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/meet_coactivities/zzada;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzada;)Lcom/google/android/gms/internal/meet_coactivities/zzvu;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzvz;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzada;)Lcom/google/android/gms/internal/meet_coactivities/zzvu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzo()Z

    move-result v7

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvt;Z)Lcom/google/android/gms/internal/meet_coactivities/zzaby;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzn()Ljava/util/concurrent/Executor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzn()Ljava/util/concurrent/Executor;

    move-result-object v7

    :cond_1
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzada;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzada;Lcom/google/android/gms/internal/meet_coactivities/zzaby;)Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v7, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzn()Z

    move-result v1

    if-nez v1, :cond_5

    monitor-exit p1

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzn()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzg:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzg:Ljava/lang/Runnable;

    :cond_7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_8
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzacy;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzacy;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzn()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzg:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzg:Ljava/lang/Runnable;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzn()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzi:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
