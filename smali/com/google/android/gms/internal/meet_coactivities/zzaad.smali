.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzaad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Ljava/util/logging/Logger;


# instance fields
.field public final zza:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzaad;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zzb:Ljava/util/logging/Logger;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/internal/meet_coactivities/zzaac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zza:Landroid/os/IBinder;

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzaad;
    .locals 1

    instance-of v0, p0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaaa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaaa;-><init>(Landroid/os/IBinder;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaab;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v0
.end method

.method public static bridge synthetic zzc()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zzb:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public abstract zza(ILcom/google/android/gms/internal/meet_coactivities/zzaah;)V
.end method

.method public final zzd(ILandroid/os/Parcel;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zza:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
