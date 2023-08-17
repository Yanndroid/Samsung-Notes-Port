.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzy(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
