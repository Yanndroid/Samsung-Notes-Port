.class final Lcom/google/android/gms/internal/drive/zzmz;
.super Lcom/google/android/gms/internal/drive/zzmx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzmx<",
        "Lcom/google/android/gms/internal/drive/zzmy;",
        "Lcom/google/android/gms/internal/drive/zzmy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzmx;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmy;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/drive/zzkk;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzjc;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method public final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->zza(Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmy;->zzbp()V

    return-void
.end method

.method public final synthetic zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzmz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmy;)V

    return-void
.end method

.method public final synthetic zzez()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfb()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzmz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmy;)V

    return-void
.end method

.method public final synthetic zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    check-cast p2, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfa()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/drive/zzmy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->zza(Lcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zzmy;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzn(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmy;->zzcx()I

    move-result p1

    return p1
.end method

.method public final synthetic zzr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    return-object p1
.end method

.method public final synthetic zzs(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmy;->zzfc()I

    move-result p1

    return p1
.end method
