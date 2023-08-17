.class final Lcom/google/android/gms/internal/meet_coactivities/zzafr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzaid;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

.field public final zzb:Ljava/net/SocketAddress;

.field public zzc:Z

.field public final synthetic zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzb:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Z)V

    return-void
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "READY"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zza(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzafo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzafo;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzafr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzvn;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "{0} SHUTDOWN with {1}"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzafp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzafp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzafr;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public final zzd()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzc:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzvn;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "{0} Terminated"

    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzvb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvb;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzvi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzB(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzafq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzafq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzafr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method
