.class final Lcom/google/android/gms/internal/meet_coactivities/zzaiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaix;Lcom/google/android/gms/internal/meet_coactivities/zzaiv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaix;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaix;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzaix;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzaiu;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaiu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaix;Lcom/google/android/gms/internal/meet_coactivities/zzait;)V

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method
