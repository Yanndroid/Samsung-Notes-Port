.class public final Lcom/google/android/gms/internal/meet_coactivities/zzyk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzyi;

.field private final zzb:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyi;Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/internal/meet_coactivities/zzyj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "runnable"

    invoke-static {p1, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyi;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyi;

    const-string p1, "future"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zzb:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyi;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zzb:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method

.method public final zzb()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyi;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyi;->zzc:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyi;->zzb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
