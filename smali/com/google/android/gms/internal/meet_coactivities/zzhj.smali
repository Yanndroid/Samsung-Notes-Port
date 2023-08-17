.class public final Lcom/google/android/gms/internal/meet_coactivities/zzhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzhs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzho;

.field private final zzb:Ljava/util/function/Consumer;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzdd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzho;Ljava/util/function/Consumer;Lcom/google/android/gms/internal/meet_coactivities/zzdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhj;->zzb:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zznb;)V
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzns;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzg()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zznr;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zznp;

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzns;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zza()Lcom/google/android/gms/internal/meet_coactivities/zznl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzhe;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhe;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzo()Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzc()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v0

    :goto_2
    invoke-interface {v2, v1, v3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzho;->zzh(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhj;->zzb:Ljava/util/function/Consumer;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
