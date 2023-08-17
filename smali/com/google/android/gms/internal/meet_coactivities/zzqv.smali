.class public final Lcom/google/android/gms/internal/meet_coactivities/zzqv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzqu;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzsw;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzsw;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzqu;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzqu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzsw;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzsw;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzqu;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqv;->zzb:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqv;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zzqu;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzsw;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzsw;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/meet_coactivities/zzsw;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzsw;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzqv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzqv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzqv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzsw;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzsw;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/meet_coactivities/zzoy;Lcom/google/android/gms/internal/meet_coactivities/zzqu;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzqu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzoy;Lcom/google/android/gms/internal/meet_coactivities/zzsw;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzqu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzoy;Lcom/google/android/gms/internal/meet_coactivities/zzsw;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzqu;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzqv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzqu;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzD(I)I

    move-result p1

    add-int/2addr p1, p3

    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzqu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzqu;

    return-object v0
.end method
