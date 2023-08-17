.class public final Lcom/google/android/gms/internal/meet_coactivities/zzxe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field private final zzb:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb:Ljava/lang/Object;

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "cannot use OK status: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "config"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-void
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxe;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb:Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb:Ljava/lang/Object;

    const-string v2, "config"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v2, "error"

    goto :goto_0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxe;->zzb:Ljava/lang/Object;

    return-object v0
.end method
