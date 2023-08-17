.class final Lcom/google/android/gms/internal/meet_coactivities/zzajq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/Object;

.field public zzb:Ljava/util/concurrent/Future;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public zzc:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/concurrent/Future;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zzb:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final zzb(Ljava/util/concurrent/Future;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zzc:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajq;->zzb:Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
