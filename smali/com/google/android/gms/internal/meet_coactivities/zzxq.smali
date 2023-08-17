.class public final Lcom/google/android/gms/internal/meet_coactivities/zzxq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxq;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxf;

.field private zzd:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zze:Ljava/util/LinkedHashSet;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzf:Lcom/google/common/collect/ImmutableMap;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzxn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzxn;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxq;Lcom/google/android/gms/internal/meet_coactivities/zzxm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxf;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzd:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zze:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzf:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public static declared-synchronized zzb()Lcom/google/android/gms/internal/meet_coactivities/zzxq;
    .locals 10

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzxl;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v3, Lcom/google/android/gms/internal/meet_coactivities/zzaed;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v9, v3

    :try_start_2
    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zza:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "io.grpc.NameResolverRegistry"

    const-string v7, "getHardCodedClasses"

    const-string v8, "Unable to find DNS NameResolver"

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzxp;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzxp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxo;)V

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzxx;->zza(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lcom/google/android/gms/internal/meet_coactivities/zzxw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zza:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "io.grpc.NameResolverRegistry"

    const-string v5, "getDefaultRegistry"

    const-string v6, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxq;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzxl;

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zza:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Service loader found "

    const-string v7, "io.grpc.NameResolverRegistry"

    const-string v8, "getDefaultRegistry"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v8, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxl;->zzd()Z

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzxl;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzf()V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zzxq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method private final declared-synchronized zze(Lcom/google/android/gms/internal/meet_coactivities/zzxl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxl;->zzd()Z

    const/4 v0, 0x1

    const-string v1, "isAvailable() returned false"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zze:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzf()V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zze:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "unknown"

    const/high16 v3, -0x80000000

    const/4 v4, 0x5

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/meet_coactivities/zzxl;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzxf;->zzb()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/meet_coactivities/zzxl;

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzxl;->zzc()I

    goto :goto_1

    :cond_0
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzxl;->zzc()I

    if-ge v3, v4, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzxl;->zzc()I

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzxf;->zzb()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzf:Lcom/google/common/collect/ImmutableMap;

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzxf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxf;

    return-object v0
.end method

.method public final declared-synchronized zzd()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzf:Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
