.class final Lcom/google/android/gms/internal/meet_coactivities/zzagp;
.super Lcom/google/android/gms/internal/meet_coactivities/zzaey;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzago;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaey;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzW()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzT(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)V

    return-void
.end method
