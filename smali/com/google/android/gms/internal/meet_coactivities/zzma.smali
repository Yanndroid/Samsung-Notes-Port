.class public final Lcom/google/android/gms/internal/meet_coactivities/zzma;
.super Lcom/google/android/gms/internal/meet_coactivities/zzmb;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzlz;

.field private final zzb:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzjk;ILcom/google/android/gms/internal/meet_coactivities/zzlz;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjk;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzma;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzlz;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzh(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzk()Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/16 p1, 0x74

    goto :goto_0

    :cond_0
    const/16 p1, 0x54

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzlz;->zza()C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzma;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzlz;Lcom/google/android/gms/internal/meet_coactivities/zzjk;I)Lcom/google/android/gms/internal/meet_coactivities/zzmb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzma;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzma;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjk;ILcom/google/android/gms/internal/meet_coactivities/zzlz;)V

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzmc;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzma;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzlz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjk;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzmc;->zze(Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzlz;Lcom/google/android/gms/internal/meet_coactivities/zzjk;)V

    return-void
.end method
