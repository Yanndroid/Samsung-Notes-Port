.class final Lcom/google/android/gms/internal/meet_coactivities/zzhg;
.super Lcom/google/android/gms/internal/meet_coactivities/zzhr;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zznb;

.field private final zzb:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/meet_coactivities/zznb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzhr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zzb:I

    const-string p1, "Null update"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzhr;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzhr;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhr;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zzb:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zzb:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "UPDATED"

    goto :goto_0

    :cond_0
    const-string v0, "NO_OP"

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThinLocalStateUpdateResult{outcome="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", update="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhg;->zzb:I

    return v0
.end method
