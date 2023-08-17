.class final Lcom/google/android/gms/internal/meet_coactivities/zzafe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/util/List;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zza:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb()Ljava/net/SocketAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zza:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zze(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zza:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzs(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v1, v4, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzh(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzd()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v2, "InternalSubchannel closed pending transport due to address change"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaie;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    :cond_2
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v4, "InternalSubchannel closed transport early due to address change"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaie;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzafd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzafd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzafe;)V

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzq(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyk;)V

    :cond_4
    return-void
.end method
