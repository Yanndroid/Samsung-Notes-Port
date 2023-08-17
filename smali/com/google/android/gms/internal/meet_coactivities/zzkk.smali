.class final Lcom/google/android/gms/internal/meet_coactivities/zzkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzkm;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzje;

.field private zzc:I

.field private zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzkm;Lcom/google/android/gms/internal/meet_coactivities/zzje;ILcom/google/android/gms/internal/meet_coactivities/zzkj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    and-int/lit8 p1, p3, 0x1f

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzc:I

    add-int/lit8 p1, p1, 0x5

    ushr-int p1, p3, p1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzd:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzc:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkm;

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzc:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzkm;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzd:I

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzd:I

    ushr-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzc:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzc:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkk;->zzc:I

    :goto_0
    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
