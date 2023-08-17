.class public final Lcom/google/android/gms/internal/meet_coactivities/zzakj;
.super Lcom/google/android/gms/internal/meet_coactivities/zzxj;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabc;


# direct methods
.method public constructor <init>(ZIILcom/google/android/gms/internal/meet_coactivities/zzabc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxj;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakj;->zza:Z

    const-string p1, "autoLoadBalancerFactory"

    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzabc;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzakj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabc;->zzc(Ljava/util/Map;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v9, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzd()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    :goto_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzakj;->zza:Z

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v6, "retryThrottling"

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const-string v7, "maxTokens"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    const-string v8, "tokenRatio"

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v10, v7, v8

    if-lez v10, :cond_4

    move v10, v5

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    const-string v11, "maxToken should be greater than zero"

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    cmpl-float v8, v6, v8

    if-lez v8, :cond_5

    move v8, v5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    const-string v10, "tokenRatio should be greater than zero"

    invoke-static {v8, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v8, Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    invoke-direct {v8, v7, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzakg;-><init>(FF)V

    goto :goto_4

    :cond_6
    :goto_3
    move-object v8, v3

    :goto_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_7

    move-object v10, v3

    goto :goto_5

    :cond_7
    const-string v10, "healthCheckConfig"

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    :goto_5
    const-string v11, "methodConfig"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzh(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/meet_coactivities/zzaic;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahz;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/meet_coactivities/zzakg;Ljava/lang/Object;Ljava/util/Map;)V

    goto/16 :goto_8

    :cond_8
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    new-instance v13, Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    const/4 v14, 0x5

    invoke-direct {v13, v12, v2, v14, v14}, Lcom/google/android/gms/internal/meet_coactivities/zzahz;-><init>(Ljava/util/Map;ZII)V

    const-string v14, "name"

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zzh(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    const-string v15, "service"

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "method"

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzafv;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v15}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "missing service name for method %s"

    invoke-static {v14, v15, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    if-nez v3, :cond_a

    move v3, v5

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    const-string v4, "Duplicate default method config in service config %s"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    move-object v3, v13

    goto :goto_6

    :cond_b
    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v7, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    const-string v14, "Duplicate service %s"

    invoke-static {v4, v14, v15}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v7, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    xor-int/2addr v14, v5

    const-string v15, "Duplicate method name %s"

    invoke-static {v14, v15, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v6, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;

    move-object v4, v0

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/meet_coactivities/zzaic;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahz;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/meet_coactivities/zzakg;Ljava/lang/Object;Ljava/util/Map;)V

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v3, "failed to parse service config"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    move-result-object v0

    return-object v0
.end method
