.class final Lcom/google/android/gms/internal/meet_coactivities/zzaaa;
.super Lcom/google/android/gms/internal/meet_coactivities/zzaad;
.source "SourceFile"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakr;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaad;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/internal/meet_coactivities/zzaac;)V

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzakr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzakr;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaaa;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakr;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/meet_coactivities/zzaah;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaaa;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakr;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzzz;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaaa;ILandroid/os/Parcel;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zzb()Landroid/os/Parcel;

    return-void
.end method
