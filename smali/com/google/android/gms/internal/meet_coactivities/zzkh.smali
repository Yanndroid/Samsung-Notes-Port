.class final Lcom/google/android/gms/internal/meet_coactivities/zzkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzki;

.field private zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzki;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkh;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkh;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzki;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzki;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkm;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzkm;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzki;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzki;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkm;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzkm;)[I

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkh;->zzb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkh;->zzb:I

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzkm;I)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
