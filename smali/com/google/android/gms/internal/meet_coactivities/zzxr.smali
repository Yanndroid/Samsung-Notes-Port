.class abstract Lcom/google/android/gms/internal/meet_coactivities/zzxr;
.super Lcom/google/android/gms/internal/meet_coactivities/zztn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztn;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxr;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxr;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzb()V

    return-void
.end method

.method public final zzc(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxr;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzc(I)V

    return-void
.end method

.method public abstract zzf()Lcom/google/android/gms/internal/meet_coactivities/zztn;
.end method
