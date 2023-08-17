.class final Lcom/google/android/gms/internal/meet_coactivities/zzalt;
.super Lcom/google/android/gms/internal/meet_coactivities/zzals;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzalx;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalq;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzalx;Lcom/google/android/gms/internal/meet_coactivities/zzalq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzals;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzalr;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzalx;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalq;

    instance-of p2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzalw;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzalw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalw;->zzd()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzalx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalx;->zza()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzalx;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzyf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalx;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 0

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalq;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzalq;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v0, "More than one responses received for unary or client-streaming call"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zzc:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzalx;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalx;->zzc(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalq;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzalq;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzd(I)V

    :cond_2
    return-void
.end method

.method public final zzd()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzd(I)V

    return-void
.end method
