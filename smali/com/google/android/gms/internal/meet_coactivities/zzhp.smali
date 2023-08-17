.class Lcom/google/android/gms/internal/meet_coactivities/zzhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzho;


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/String;

.field public zzc:Ljava/lang/Object;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field

.field public zzd:Ljava/lang/Object;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field

.field private zze:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field

.field private zzf:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zze:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzf:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public zze(Ljava/lang/Object;)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation

    return-void
.end method

.method public zzf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public final zzg(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzf:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzf:Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zze(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "State has already been initialized."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzd:Ljava/lang/Object;

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzl(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzi()Lcom/google/android/gms/internal/meet_coactivities/zzhq;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzd:Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzhf;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzhf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zze:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzl(Ljava/lang/Object;I)I
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzf:Z

    if-eqz p1, :cond_1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzc:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zze(Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1

    :cond_1
    :goto_0
    return v0
.end method
