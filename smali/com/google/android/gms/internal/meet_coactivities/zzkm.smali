.class final Lcom/google/android/gms/internal/meet_coactivities/zzkm;
.super Lcom/google/android/gms/internal/meet_coactivities/zzkq;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzjt;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjt;

.field private final zzc:[I

.field private final zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzjt;Lcom/google/android/gms/internal/meet_coactivities/zzjt;Lcom/google/android/gms/internal/meet_coactivities/zzkl;)V
    .locals 8

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzkq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzkp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zza()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v0, 0x1c

    if-gt p1, v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const-string v1, "metadata size too large"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zzc(ZLjava/lang/String;)V

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzc:[I

    const-wide/16 v0, 0x0

    move v2, p2

    move v3, v2

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_5

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzi(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzc()J

    move-result-wide v5

    or-long/2addr v5, v0

    cmp-long v0, v5, v0

    if-nez v0, :cond_4

    move v0, p2

    :goto_2
    const/4 v1, -0x1

    if-ge v0, v3, :cond_2

    aget v7, p1, v0

    and-int/lit8 v7, v7, 0x1f

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzi(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    if-eq v0, v1, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzi()Z

    move-result v1

    if-eqz v1, :cond_3

    aget v1, p1, v0

    add-int/lit8 v4, v2, 0x4

    shl-int v4, p3, v4

    or-int/2addr v1, v4

    goto :goto_4

    :cond_3
    move v1, v2

    :goto_4
    aput v1, p1, v0

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v3, 0x1

    aput v2, p1, v3

    move v3, v0

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_1

    :cond_5
    iput v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzd:I

    return-void
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/meet_coactivities/zzkm;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzd:I

    return p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzkm;I)Lcom/google/android/gms/internal/meet_coactivities/zzje;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzi(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzkm;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzj(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzkm;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzc:[I

    return-object p0
.end method

.method private final zzi(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object p1

    return-object p1
.end method

.method private final zzj(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzd(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzd:I

    return v0
.end method

.method public final zzb()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzki;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzki;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzkm;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzkc;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzd:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzc:[I

    aget v1, v1, v0

    and-int/lit8 v2, v1, 0x1f

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzi(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzi()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzj(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzkc;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzje;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzkk;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzkk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzkm;Lcom/google/android/gms/internal/meet_coactivities/zzje;ILcom/google/android/gms/internal/meet_coactivities/zzkj;)V

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzkc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzje;Ljava/util/Iterator;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
