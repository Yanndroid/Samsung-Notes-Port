.class final Lcom/google/android/gms/internal/meet_coactivities/zzaff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzd()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzA(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzy(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaie;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaie;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    :cond_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaff;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaie;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    :cond_4
    return-void
.end method
