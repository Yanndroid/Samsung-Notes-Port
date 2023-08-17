.class final Lcom/google/android/gms/internal/meet_coactivities/zzir;
.super Lcom/google/android/gms/internal/meet_coactivities/zzis;
.source "SourceFile"


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zziq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzis;-><init>()V

    const/4 p5, 0x0

    iput p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzc:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzd:I

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzir;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzir;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzd:I

    iget p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzd:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzf:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x1303

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzc:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzf:I

    :cond_0
    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzd:I

    int-to-char v0, v0

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzb:Ljava/lang/String;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzir;->zzc:Ljava/lang/String;

    return-object v0
.end method
