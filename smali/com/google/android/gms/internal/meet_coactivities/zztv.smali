.class public final Lcom/google/android/gms/internal/meet_coactivities/zztv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

.field private final zzb:I

.field private final zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "callOptions"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zztv;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zztv;->zzc:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zztu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zztu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztu;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    const-string v2, "callOptions"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztv;->zzb:I

    const-string v2, "previousAttempts"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztv;->zzc:Z

    const-string v2, "isTransparentRetry"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
