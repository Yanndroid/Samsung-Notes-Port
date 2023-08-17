.class final Lcom/google/android/gms/internal/meet_coactivities/zzaab;
.super Lcom/google/android/gms/internal/meet_coactivities/zzaad;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaad;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/internal/meet_coactivities/zzaac;)V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/meet_coactivities/zzaah;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zzb()Landroid/os/Parcel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zzd(ILandroid/os/Parcel;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinderProxy#transact("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", FLAG_ONEWAY) returned false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
