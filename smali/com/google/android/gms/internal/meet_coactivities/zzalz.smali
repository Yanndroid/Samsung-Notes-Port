.class final Lcom/google/android/gms/internal/meet_coactivities/zzalz;
.super Lcom/google/android/gms/internal/meet_coactivities/zzamd;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzyd;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzamd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzamc;)V

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzalz;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzamd;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzalz;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzalz;

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzalz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzalz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    return v1
.end method
