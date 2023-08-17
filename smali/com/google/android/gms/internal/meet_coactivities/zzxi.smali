.class public final Lcom/google/android/gms/internal/meet_coactivities/zzxi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzxe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zza:Ljava/util/List;

    const-string p1, "attributes"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxh;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzxi;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxi;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zza:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zza:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zza:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zza:Ljava/util/List;

    const-string v2, "addresses"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    const-string v2, "serviceConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzxe;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zza:Ljava/util/List;

    return-object v0
.end method
