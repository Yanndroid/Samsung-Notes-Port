.class public final Lcom/google/android/gms/internal/meet_coactivities/zzhn;
.super Lcom/google/android/gms/internal/meet_coactivities/zzhp;
.source "SourceFile"


# instance fields
.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzhh;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzdd;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zznl;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzhe;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzhe;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzmt;Lcom/google/android/gms/internal/meet_coactivities/zzdd;)Lcom/google/android/gms/internal/meet_coactivities/zzhn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzhn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzdd;)V

    iget-object p0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzhh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzmt;)V

    iput-object p2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzhh;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzm()Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzd:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzhm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzhm;->zza()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zznr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zznp;

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzna;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zznm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zznm;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zznl;)Lcom/google/android/gms/internal/meet_coactivities/zznm;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zznm;->zza(Ljava/util/Map;)Lcom/google/android/gms/internal/meet_coactivities/zznm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zznm;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)Lcom/google/android/gms/internal/meet_coactivities/zzhr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzl(Ljava/lang/Object;I)I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzm()Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zznm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zznm;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zznr;)Lcom/google/android/gms/internal/meet_coactivities/zznm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzk()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzx()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzns;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzhg;-><init>(ILcom/google/android/gms/internal/meet_coactivities/zznb;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzm()Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzhh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzhq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzhq;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zza(Lcom/google/android/gms/internal/meet_coactivities/zznl;)Ljava/time/Duration;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zza(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zza(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zznm;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zznk;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zznm;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zznk;)Lcom/google/android/gms/internal/meet_coactivities/zznm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzk()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzx()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzna;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zze(Z)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzna;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzns;)Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzpd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzhh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzhq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzhq;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zza(Lcom/google/android/gms/internal/meet_coactivities/zznl;)Ljava/time/Duration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zza(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic zze(Ljava/lang/Object;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzhh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhh;->zzb(Ljava/time/Duration;)V

    return-void
.end method

.method public final bridge synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzx()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zza()Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzx()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zza()Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/time/Duration;->minus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->abs()Ljava/time/Duration;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzb()Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-lez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
