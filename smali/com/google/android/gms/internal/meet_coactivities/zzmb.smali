.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzmb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzjk;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjk;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "format options cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract zzb(Lcom/google/android/gms/internal/meet_coactivities/zzmc;Ljava/lang/Object;)V
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zza:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjk;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zzmc;[Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zza:I

    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object p2, p2, v0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzmc;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzmc;->zzg()V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzmc;->zzf()V

    return-void
.end method
