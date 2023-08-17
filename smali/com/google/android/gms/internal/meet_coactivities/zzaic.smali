.class final Lcom/google/android/gms/internal/meet_coactivities/zzaic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzahz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/util/Map;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakg;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Ljava/util/Map;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahz;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/meet_coactivities/zzakg;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzahz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/meet_coactivities/zzakg;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zze:Ljava/lang/Object;

    if-eqz p6, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzf:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/google/android/gms/internal/meet_coactivities/zzaic;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzaic;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzc:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzc:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zze:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zze:Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzc:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zze:Ljava/lang/Object;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    const-string v2, "defaultMethodConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb:Ljava/util/Map;

    const-string v2, "serviceMethodMap"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzc:Ljava/util/Map;

    const-string v2, "serviceMap"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    const-string v2, "retryThrottling"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zze:Ljava/lang/Object;

    const-string v2, "loadBalancingConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzvg;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaib;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaib;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaic;Lcom/google/android/gms/internal/meet_coactivities/zzaia;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzxa;)Lcom/google/android/gms/internal/meet_coactivities/zzahz;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzg()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzakg;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zze:Ljava/lang/Object;

    return-object v0
.end method

.method public final zze()Ljava/util/Map;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzf:Ljava/util/Map;

    return-object v0
.end method
