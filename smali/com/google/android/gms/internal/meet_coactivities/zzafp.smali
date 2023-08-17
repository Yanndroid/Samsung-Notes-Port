.class final Lcom/google/android/gms/internal/meet_coactivities/zzafp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzafr;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V

    return-void

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    move-result-object v1

    if-ne v1, v2, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v1

    const-string v2, "Expected state is CONNECTING, actual state is %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzg()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzC(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    :cond_4
    return-void
.end method
