.class final Lcom/google/android/gms/internal/meet_coactivities/zzahz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzth;


# instance fields
.field public final zzb:Ljava/lang/Long;

.field public final zzc:Ljava/lang/Boolean;

.field public final zzd:Ljava/lang/Integer;

.field public final zze:Ljava/lang/Integer;

.field public final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

.field public final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaex;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.internal.ManagedChannelServiceConfig.MethodInfo"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzth;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzth;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzth;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZII)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "timeout"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzb:Ljava/lang/Long;

    const-string v2, "waitForReady"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzc:Ljava/lang/Boolean;

    const-string v2, "maxResponseMessageBytes"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzd:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "maxInboundMessageSize %s exceeds bounds"

    invoke-static {v5, v6, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v2, "maxRequestMessageBytes"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zze:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const-string v6, "maxOutboundMessageSize %s exceeds bounds"

    invoke-static {v5, v6, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-eqz p2, :cond_4

    const-string v5, "retryPolicy"

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x5

    const-string v7, "maxAttempts must be greater than 1: %s"

    const/4 v8, 0x2

    const-string v9, "maxAttempts cannot be empty"

    const-string v10, "maxAttempts"

    const-wide/16 v11, 0x0

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_5
    invoke-static {v5, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v8, :cond_6

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    invoke-static {v14, v7, v13}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    const-string v13, "initialBackoff"

    invoke-static {v5, v13}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "initialBackoff cannot be empty"

    invoke-static {v13, v14}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-lez v15, :cond_7

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    const-string v2, "initialBackoffNanos must be greater than 0: %s"

    invoke-static {v15, v2, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    const-string v2, "maxBackoff"

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v15, "maxBackoff cannot be empty"

    invoke-static {v2, v15}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v2, v3, v11

    if-lez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    const-string v15, "maxBackoff must be greater than 0: %s"

    invoke-static {v2, v15, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    const-string v2, "backoffMultiplier"

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    const-string v15, "backoffMultiplier cannot be empty"

    invoke-static {v2, v15}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v17, 0x0

    cmpl-double v15, v21, v17

    if-lez v15, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    const-string v6, "backoffMultiplier must be greater than 0: %s"

    invoke-static {v15, v6, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "perAttemptRecvTimeout"

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v6, v17, v11

    if-ltz v6, :cond_a

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v6, 0x1

    :goto_8
    const-string v15, "perAttemptRecvTimeout cannot be negative: %s"

    invoke-static {v6, v15, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzaku;->zzb(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v24

    if-nez v2, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v5, 0x1

    :goto_a
    const-string v6, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout"

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-object v15, v5

    move-wide/from16 v17, v13

    move-wide/from16 v19, v3

    move-object/from16 v23, v2

    invoke-direct/range {v15 .. v24}, Lcom/google/android/gms/internal/meet_coactivities/zzaki;-><init>(IJJDLjava/lang/Long;Ljava/util/Set;)V

    :goto_b
    iput-object v5, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    if-eqz p2, :cond_e

    const-string v2, "hedgingPolicy"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    :goto_c
    if-nez v1, :cond_f

    const/4 v2, 0x0

    goto :goto_f

    :cond_f
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v8, :cond_10

    const/4 v3, 0x1

    goto :goto_d

    :cond_10
    const/4 v3, 0x0

    :goto_d
    invoke-static {v3, v7, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, "hedgingDelay"

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "hedgingDelay cannot be empty"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-ltz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_e

    :cond_11
    const/4 v5, 0x0

    :goto_e
    const-string v6, "hedgingDelay must not be negative: %s"

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaku;->zza(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaex;-><init>(IJLjava/util/Set;)V

    move-object v2, v5

    :goto_f
    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzb:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzb:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzc:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzc:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzd:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzd:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zze:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zze:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaex;

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

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzb:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzc:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzd:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zze:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzb:Ljava/lang/Long;

    const-string v2, "timeoutNanos"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzc:Ljava/lang/Boolean;

    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzd:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zze:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    const-string v2, "retryPolicy"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    const-string v2, "hedgingPolicy"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
