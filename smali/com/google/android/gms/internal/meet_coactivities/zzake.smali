.class final Lcom/google/android/gms/internal/meet_coactivities/zzake;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzabx;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzb:Z

    iget-object v9, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzc:Ljava/util/Collection;

    invoke-interface {v9, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzc:Ljava/util/Collection;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v9, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v13

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    iget-object v12, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzb:Ljava/util/List;

    iget-object v14, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzd:Ljava/util/Collection;

    iget-object v15, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-boolean v9, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzg:Z

    iget-boolean v10, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zza:Z

    iget-boolean v11, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzh:Z

    iget v6, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zze:I

    move/from16 v18, v11

    move-object v11, v7

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v19, v6

    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/internal/meet_coactivities/zzaju;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/gms/internal/meet_coactivities/zzakf;ZZZI)V

    move-object v6, v7

    :cond_0
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzS(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzaju;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-boolean v5, v4, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzc:Z

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzT(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzajy;

    invoke-direct {v5, v1, v0, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzajy;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    check-cast v4, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    :cond_1
    return-void

    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    if-ne v2, v4, :cond_4

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzM(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzT(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v5, "Too many transparent retries. Might be a bug in gRPC"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzyf;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzyf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzajz;

    invoke-direct {v5, v1, v0, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzajz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    check-cast v4, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    :cond_3
    return-void

    :cond_4
    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-nez v5, :cond_18

    const/4 v5, 0x0

    if-eq v2, v4, :cond_13

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    if-ne v2, v4, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzL(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_7

    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    if-ne v2, v4, :cond_6

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzZ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzV(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)V

    goto/16 :goto_a

    :cond_6
    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzL(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzZ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzy(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/meet_coactivities/zzaex;->zzc:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v8

    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v7

    if-eqz v7, :cond_8

    if-eqz v6, :cond_7

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_8

    :cond_7
    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzakg;->zzb()Z

    move-result v7

    xor-int/2addr v7, v8

    goto :goto_0

    :cond_8
    move v7, v5

    :goto_0
    if-nez v6, :cond_9

    if-nez v7, :cond_9

    goto :goto_1

    :cond_9
    move v8, v5

    :goto_1
    if-eqz v8, :cond_a

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzW(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Ljava/lang/Integer;)V

    :cond_a
    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v5

    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzd:Ljava/util/Collection;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v9, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v14

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    iget-object v12, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzb:Ljava/util/List;

    iget-object v13, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzc:Ljava/util/Collection;

    iget-object v15, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-boolean v9, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzg:Z

    iget-boolean v10, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zza:Z

    iget-boolean v11, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzh:Z

    iget v5, v5, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zze:I

    move/from16 v18, v11

    move-object v11, v7

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v19, v5

    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/internal/meet_coactivities/zzaju;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/gms/internal/meet_coactivities/zzakf;ZZZI)V

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzS(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzaju;)V

    if-eqz v8, :cond_c

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzaa(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzaju;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzd:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    monitor-exit v6

    return-void

    :cond_c
    :goto_2
    monitor-exit v6

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-result-object v6

    const-wide/16 v9, 0x0

    if-nez v6, :cond_e

    goto/16 :goto_6

    :cond_e
    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaki;->zzf:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v7

    if-eqz v7, :cond_10

    if-nez v4, :cond_f

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_10

    :cond_f
    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzakg;->zzb()Z

    move-result v7

    xor-int/2addr v7, v8

    goto :goto_3

    :cond_10
    move v7, v5

    :goto_3
    iget-object v11, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v11}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-result-object v12

    iget v12, v12, Lcom/google/android/gms/internal/meet_coactivities/zzaki;->zza:I

    iget-object v13, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget v13, v13, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzd:I

    add-int/2addr v13, v8

    if-le v12, v13, :cond_12

    if-nez v7, :cond_12

    if-nez v6, :cond_11

    if-eqz v4, :cond_12

    invoke-static {v11}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzs(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzH()Ljava/util/Random;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzs(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)J

    move-result-wide v9

    long-to-double v9, v9

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-result-object v7

    iget-wide v11, v7, Lcom/google/android/gms/internal/meet_coactivities/zzaki;->zzd:D

    mul-double/2addr v9, v11

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-result-object v7

    iget-wide v11, v7, Lcom/google/android/gms/internal/meet_coactivities/zzaki;->zzc:J

    double-to-long v9, v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-static {v6, v9, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzO(Lcom/google/android/gms/internal/meet_coactivities/zzakh;J)V

    double-to-long v4, v4

    goto :goto_4

    :cond_11
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_12

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-result-object v7

    iget-wide v9, v7, Lcom/google/android/gms/internal/meet_coactivities/zzaki;->zzb:J

    invoke-static {v6, v9, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzO(Lcom/google/android/gms/internal/meet_coactivities/zzakh;J)V

    :goto_4
    move-wide v9, v4

    goto :goto_5

    :cond_12
    move v8, v5

    :goto_5
    move v5, v8

    :goto_6
    if-eqz v5, :cond_18

    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzajq;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzajq;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzR(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzajq;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzK(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzajx;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzajx;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v9, v10, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zzb(Ljava/util/concurrent/Future;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_13
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzd:I

    invoke-static {v0, v2, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzC(Lcom/google/android/gms/internal/meet_coactivities/zzakh;IZ)Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzZ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzd:Ljava/util/Collection;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v13

    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    iget-object v11, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzb:Ljava/util/List;

    iget-object v12, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzc:Ljava/util/Collection;

    iget-object v14, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-boolean v15, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzg:Z

    iget-boolean v7, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zza:Z

    iget-boolean v9, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzh:Z

    iget v4, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zze:I

    move-object v10, v6

    move/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lcom/google/android/gms/internal/meet_coactivities/zzaju;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/gms/internal/meet_coactivities/zzakf;ZZZI)V

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzS(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzaju;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzaa(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzaju;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzd:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v8, :cond_14

    goto :goto_8

    :cond_14
    move v8, v5

    :goto_8
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v8, :cond_17

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    goto :goto_9

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_15
    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzaki;->zza:I

    if-ne v3, v8, :cond_17

    :cond_16
    :goto_9
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzT(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    :cond_17
    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzaka;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaka;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_18
    :goto_a
    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzT(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-ne v4, v5, :cond_19

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzakb;

    invoke-direct {v5, v1, v0, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    check-cast v4, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    :cond_19
    return-void

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzT(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakg;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakg;->zza:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakg;->zzc:I

    add-int/2addr v3, v1

    iget-object v4, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakg;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzajv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzajv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    :cond_3
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzakc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakc;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;Lcom/google/android/gms/internal/meet_coactivities/zzald;)V

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public final zzg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzakd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzakd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;)V

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method
