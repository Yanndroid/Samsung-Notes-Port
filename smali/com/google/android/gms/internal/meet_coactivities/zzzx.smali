.class public final Lcom/google/android/gms/internal/meet_coactivities/zzzx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzzw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzzw;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzzw;-><init>(Landroid/os/Parcelable$Creator;Z)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzzx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzw;

    return-void
.end method

.method public static zza(Landroid/os/Parcel;Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzwu;
    .locals 8

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    return-object p0

    :cond_0
    add-int v1, v0, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    add-int/lit8 v3, v3, 0x4

    invoke-static {p0, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzzx;->zzb(Landroid/os/Parcel;II)[B

    move-result-object v5

    add-int/2addr v3, v4

    add-int v4, v2, v2

    aput-object v5, v1, v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_2

    if-ltz v5, :cond_1

    add-int/lit8 v3, v3, 0x4

    invoke-static {p0, v5, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzzx;->zzb(Landroid/os/Parcel;II)[B

    move-result-object v6

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    aput-object v6, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string p1, "Unrecognized metadata sentinel"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzye;

    invoke-direct {p1, p0, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzye;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    throw p1

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztd;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzyv;

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string p1, "Parcelable metadata values not allowed"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzye;

    invoke-direct {p1, p0, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzye;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    throw p1

    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvl;->zzc(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Landroid/os/Parcel;II)[B
    .locals 1

    add-int/2addr p2, p1

    const/16 v0, 0x2000

    if-gt p2, v0, :cond_1

    new-array p2, p1, [B

    if-lez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-object p2

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string p1, "Metadata too large"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzye;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzye;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    throw p1
.end method
