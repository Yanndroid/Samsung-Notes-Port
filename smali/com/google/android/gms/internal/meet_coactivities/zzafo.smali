.class final Lcom/google/android/gms/internal/meet_coactivities/zzafo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzafr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaef;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaie;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    if-ne v3, v0, :cond_2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V

    :cond_2
    return-void
.end method
