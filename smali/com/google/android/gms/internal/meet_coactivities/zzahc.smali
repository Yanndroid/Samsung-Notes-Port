.class final Lcom/google/android/gms/internal/meet_coactivities/zzahc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahh;Lcom/google/android/gms/internal/meet_coactivities/zzahf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzahh;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzL(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaey;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaey;->zzc(Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzl()V

    return-void
.end method
