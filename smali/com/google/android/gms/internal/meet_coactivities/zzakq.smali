.class final Lcom/google/android/gms/internal/meet_coactivities/zzakq;
.super Lcom/google/android/gms/internal/meet_coactivities/zzakm;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzakl;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakp;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzakl;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzakr;I)V
    .locals 0

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzakr;I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzakr;II)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzakr;)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzakr;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzakr;I)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
