.class public final Lcom/google/android/gms/gcm/zzh;
.super Lcom/google/android/gms/internal/gcm/zzd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/gcm/zzg;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.gcm.INetworkTaskCallback"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gcm/zzd;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzf(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gcm/zzd;->zzd()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gcm/zzd;->zzd(ILandroid/os/Parcel;)V

    return-void
.end method
