.class Lcom/google/android/gms/internal/meet_coactivities/zzaem;
.super Lcom/google/android/gms/internal/meet_coactivities/zzwg;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzwg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzwg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzwg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaem;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaem;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaem;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaem;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
