.class final Lcom/google/android/gms/internal/meet_coactivities/zzaao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(ILandroid/os/Parcel;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    and-int/lit8 p0, p0, 0x20

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzc(I)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static zzb(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static zzc(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
