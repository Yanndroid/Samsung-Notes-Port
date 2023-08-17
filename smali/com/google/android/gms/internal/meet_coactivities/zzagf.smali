.class final Lcom/google/android/gms/internal/meet_coactivities/zzagf;
.super Lcom/google/android/gms/internal/meet_coactivities/zzakh;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzti;

.field public final synthetic zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

.field public final synthetic zze:Lcom/google/android/gms/internal/meet_coactivities/zzaex;

.field public final synthetic zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakg;

.field public final synthetic zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

.field public final synthetic zzh:Lcom/google/android/gms/internal/meet_coactivities/zzagh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzagh;Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzaki;Lcom/google/android/gms/internal/meet_coactivities/zzaex;Lcom/google/android/gms/internal/meet_coactivities/zzakg;Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v13, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzagh;

    move-object/from16 v2, p2

    iput-object v2, v13, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-object/from16 v3, p3

    iput-object v3, v13, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    iput-object v1, v13, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-object/from16 v10, p5

    iput-object v10, v13, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-object/from16 v11, p6

    iput-object v11, v13, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    move-object/from16 v12, p7

    iput-object v12, v13, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-object/from16 v4, p8

    iput-object v4, v13, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    iget-object v4, v0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzC(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzajp;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)J

    move-result-wide v8

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Ljava/util/concurrent/Executor;

    move-result-object v14

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v5

    move-wide v4, v6

    move-wide v6, v8

    move-object v8, v14

    move-object v9, v15

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzajp;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zzaki;Lcom/google/android/gms/internal/meet_coactivities/zzaex;Lcom/google/android/gms/internal/meet_coactivities/zzakg;)V

    return-void
.end method


# virtual methods
.method public final zzo()Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzagh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaho;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzb:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzp(Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zztt;IZ)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zztt;)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object p2

    invoke-static {p2, p1, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzwu;IZ)[Lcom/google/android/gms/internal/meet_coactivities/zztw;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzagh;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaio;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzagh;Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzaby;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-interface {p4, v1, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaby;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    throw p1
.end method

.method public final zzq()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzagh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaho;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzb:Ljava/util/Collection;

    invoke-interface {v2, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzb:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzb:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaho;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
