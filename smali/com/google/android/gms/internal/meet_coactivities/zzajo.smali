.class final Lcom/google/android/gms/internal/meet_coactivities/zzajo;
.super Lcom/google/android/gms/internal/meet_coactivities/zztw;
.source "SourceFile"


# instance fields
.field public zza:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzakf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztw;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzb:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zza:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zza:J

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzu(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-lez p2, :cond_6

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)J

    move-result-wide v4

    cmp-long p2, v2, v4

    const/4 v4, 0x1

    if-lez p2, :cond_2

    iput-boolean v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzc:Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzA(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzajp;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzu(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzajp;->zza(J)J

    move-result-wide p1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iget-wide v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zza:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzP(Lcom/google/android/gms/internal/meet_coactivities/zzakh;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iput-boolean v4, p1, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzc:Z

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzc:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    monitor-exit v0

    return-void

    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
