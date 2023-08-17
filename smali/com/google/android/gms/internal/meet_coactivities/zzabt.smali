.class final Lcom/google/android/gms/internal/meet_coactivities/zzabt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzabu;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabt;->zzb:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaez;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabt;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v1, v6

    iget-wide v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabt;->zzb:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    rem-long/2addr v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deadline exceeded after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabt;->zzb:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, ".%09d"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s. "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method
