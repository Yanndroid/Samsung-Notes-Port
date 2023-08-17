.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzuq;
.super Lcom/google/android/gms/internal/meet_coactivities/zzwh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzwh;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzuq;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzwh;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzuq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzuq;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzwh;

    move-result-object v0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzahw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahw;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzahw;

    return-object p0
.end method

.method public final zzb(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/meet_coactivities/zzuq;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzuq;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzwh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzahw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzahw;->zzb(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/meet_coactivities/zzahw;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzwg;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzuq;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzwh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwh;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/meet_coactivities/zzwh;
.end method
