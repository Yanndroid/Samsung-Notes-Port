.class public final Lcom/google/android/gms/internal/meet_coactivities/zzhl;
.super Lcom/google/android/gms/internal/meet_coactivities/zzhp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznd;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zznd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzhk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzhk;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/function/UnaryOperator;)Lcom/google/android/gms/internal/meet_coactivities/zzhr;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zznd;

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznd;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzl(Ljava/lang/Object;I)I

    move-result p1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzna;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzne;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zznd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzne;->zza(Lcom/google/android/gms/internal/meet_coactivities/zznd;)Lcom/google/android/gms/internal/meet_coactivities/zzne;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzne;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzhg;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzhg;-><init>(ILcom/google/android/gms/internal/meet_coactivities/zznb;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzna;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zze(Z)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzne;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zznd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzne;->zza(Lcom/google/android/gms/internal/meet_coactivities/zznd;)Lcom/google/android/gms/internal/meet_coactivities/zzne;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzne;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
