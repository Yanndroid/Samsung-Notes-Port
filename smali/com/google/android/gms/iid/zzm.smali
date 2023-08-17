.class public final Lcom/google/android/gms/iid/zzm;
.super Lcom/google/android/gms/internal/gcm/zzd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/iid/zzl;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.iid.IMessengerCompat"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gcm/zzd;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final send(Landroid/os/Message;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gcm/zzd;->zzd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gcm/zze;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gcm/zzd;->zze(ILandroid/os/Parcel;)V

    return-void
.end method
