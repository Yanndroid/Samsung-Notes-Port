.class final Lcom/google/android/gms/internal/meet_coactivities/zzady;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzadz;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzady;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzady;->zza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzady;->zza:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzady;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadz;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzf:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzady;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadz;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaec;Z)V

    return-void
.end method
