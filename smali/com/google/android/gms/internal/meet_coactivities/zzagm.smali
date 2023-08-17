.class final Lcom/google/android/gms/internal/meet_coactivities/zzagm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzaid;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzagl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaey;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaey;->zzc(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string v0, "Channel must have been shut down"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public final zzd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzO(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzU(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzQ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)V

    return-void
.end method
