.class final Lcom/google/android/gms/internal/meet_coactivities/zzaah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private zza:Landroid/os/Parcel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza:Landroid/os/Parcel;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzaah;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaah;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza:Landroid/os/Parcel;

    :cond_0
    return-void
.end method

.method public final zza()Landroid/os/Parcel;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "get() after close()/release()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza:Landroid/os/Parcel;

    return-object v0
.end method

.method public final zzb()Landroid/os/Parcel;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza:Landroid/os/Parcel;

    return-object v0
.end method
