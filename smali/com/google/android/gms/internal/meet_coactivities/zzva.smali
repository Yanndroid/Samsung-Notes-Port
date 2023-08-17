.class public final Lcom/google/android/gms/internal/meet_coactivities/zzva;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

.field public final zzc:J

.field public final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvn;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zze:Lcom/google/android/gms/internal/meet_coactivities/zzvn;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzuy;JLcom/google/android/gms/internal/meet_coactivities/zzvn;Lcom/google/android/gms/internal/meet_coactivities/zzvn;Lcom/google/android/gms/internal/meet_coactivities/zzuz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zza:Ljava/lang/String;

    const-string p1, "severity"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    iput-wide p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzc:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvn;

    iput-object p6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzvn;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzva;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzva;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zza:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzc:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzc:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzvn;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzvn;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzvn;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zza:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    const-string v2, "severity"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zzc:J

    const-string v3, "timestampNanos"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "channelRef"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzva;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzvn;

    const-string v2, "subchannelRef"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
