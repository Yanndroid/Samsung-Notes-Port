.class public final Lcom/google/android/gms/internal/meet_coactivities/zzxd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxj;

.field private final zze:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/meet_coactivities/zztl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/google/android/gms/internal/meet_coactivities/zzxt;Lcom/google/android/gms/internal/meet_coactivities/zzyl;Lcom/google/android/gms/internal/meet_coactivities/zzxj;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zztl;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzxc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p8, "defaultPort not set"

    invoke-static {p1, p8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zza:I

    const-string p1, "proxyDetector not set"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    const-string p1, "syncContext not set"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    const-string p1, "serviceConfigParser not set"

    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxj;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxj;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zztl;

    iput-object p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzg:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/meet_coactivities/zzxb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxb;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zza:I

    const-string v2, "defaultPort"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    const-string v2, "proxyDetector"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    const-string v2, "syncContext"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxj;

    const-string v2, "serviceConfigParser"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v2, "scheduledExecutorService"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zztl;

    const-string v2, "channelLogger"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzg:Ljava/util/concurrent/Executor;

    const-string v2, "executor"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "overrideAuthority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zza:I

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxj;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzxt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    return-object v0
.end method

.method public final zzf()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxd;->zzg:Ljava/util/concurrent/Executor;

    return-object v0
.end method
