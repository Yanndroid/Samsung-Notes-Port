.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzwd;
.super Lcom/google/android/gms/internal/meet_coactivities/zzvr;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzxe;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzwc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwc;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvr;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzwd;->zzd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "policy"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "priority"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "available"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzb()I
.end method

.method public zzc(Ljava/util/Map;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract zzd()Ljava/lang/String;
.end method

.method public abstract zze()Z
.end method
