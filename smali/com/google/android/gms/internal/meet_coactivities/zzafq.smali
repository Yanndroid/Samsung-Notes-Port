.class final Lcom/google/android/gms/internal/meet_coactivities/zzafq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzafr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Ljava/util/Collection;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzA(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    :cond_0
    return-void
.end method
