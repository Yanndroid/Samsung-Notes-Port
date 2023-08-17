.class final Lcom/google/android/gms/internal/meet_coactivities/zzagv;
.super Lcom/google/android/gms/internal/meet_coactivities/zzvs;
.source "SourceFile"


# instance fields
.field public zza:Lcom/google/android/gms/internal/meet_coactivities/zzaau;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzagu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzvq;)Lcom/google/android/gms/internal/meet_coactivities/zzvy;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzac(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is being terminated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzahm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzvq;Lcom/google/android/gms/internal/meet_coactivities/zzagv;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    return-object v0
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzags;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzags;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzagv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newPicker"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzagt;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzagt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzagv;Lcom/google/android/gms/internal/meet_coactivities/zzvz;Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method
