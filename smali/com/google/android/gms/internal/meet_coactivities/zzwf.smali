.class public final Lcom/google/android/gms/internal/meet_coactivities/zzwf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwf;

.field private static final zzc:Ljava/lang/Iterable;


# instance fields
.field private final zzd:Ljava/util/LinkedHashSet;

.field private final zze:Ljava/util/LinkedHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zza:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzain;

    sget v2, Lcom/google/android/gms/internal/meet_coactivities/zzain;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zza:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "io.grpc.LoadBalancerRegistry"

    const-string v5, "getHardCodedClasses"

    const-string v6, "Unable to find pick-first LoadBalancer"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzamf;

    sget v2, Lcom/google/android/gms/internal/meet_coactivities/zzamf;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v7, v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zza:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "io.grpc.LoadBalancerRegistry"

    const-string v5, "getHardCodedClasses"

    const-string v6, "Unable to find round-robin LoadBalancer"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzc:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzd:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zze:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static declared-synchronized zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwf;
    .locals 9

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzwf;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwf;

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzc:Ljava/lang/Iterable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzwe;

    invoke-direct {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzwe;-><init>()V

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzxx;->zza(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lcom/google/android/gms/internal/meet_coactivities/zzxw;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzwf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwf;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwf;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zza:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Service loader found "

    const-string v7, "io.grpc.LoadBalancerRegistry"

    const-string v8, "getDefaultRegistry"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v8, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwd;->zze()Z

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwf;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwd;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzd()V

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final declared-synchronized zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwd;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwd;->zze()Z

    const/4 v0, 0x1

    const-string v1, "isAvailable() returned false"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzd:Ljava/util/LinkedHashSet;

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

.method private final declared-synchronized zzd()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zzd:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzwd;->zzd()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzwd;->zzb()I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzwd;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zze:Ljava/util/LinkedHashMap;

    const-string v1, "policy"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzwd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
