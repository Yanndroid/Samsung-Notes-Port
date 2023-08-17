.class public final Lcom/google/android/gms/internal/meet_coactivities/zztc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

.field private zzb:Ljava/util/IdentityHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zztb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zztd;)Lcom/google/android/gms/internal/meet_coactivities/zztc;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Ljava/util/IdentityHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zztf;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztf;-><init>(Ljava/util/IdentityHashMap;Lcom/google/android/gms/internal/meet_coactivities/zzte;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zztf;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztf;-><init>(Ljava/util/IdentityHashMap;Lcom/google/android/gms/internal/meet_coactivities/zzte;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb:Ljava/util/IdentityHashMap;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-object v0
.end method
