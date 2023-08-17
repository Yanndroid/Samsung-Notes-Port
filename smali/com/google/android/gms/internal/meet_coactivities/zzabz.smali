.class public final Lcom/google/android/gms/internal/meet_coactivities/zzabz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

.field private zzc:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown-authority"

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zza:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzabz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzabz;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuw;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuw;

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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuw;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzabz;
    .locals 1

    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzabz;
    .locals 1

    const-string v0, "eagAttributes"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuw;)Lcom/google/android/gms/internal/meet_coactivities/zzabz;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzuw;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuw;

    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzabz;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zza:Ljava/lang/String;

    return-object v0
.end method
