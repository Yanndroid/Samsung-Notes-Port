.class final Lcom/google/android/gms/internal/meet_coactivities/zzdz;
.super Lcom/google/android/gms/internal/meet_coactivities/zzgl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzeg;


# instance fields
.field private final zzg:Lcom/google/common/util/concurrent/RateLimiter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgn;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgn;)V

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/RateLimiter;->create(D)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg:Lcom/google/common/util/concurrent/RateLimiter;

    return-void
.end method

.method private final zzf(DLcom/google/android/gms/internal/meet_coactivities/zzpd;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Expected \'rate\' to be a value greater than zero."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzds;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzds;-><init>(DLcom/google/android/gms/internal/meet_coactivities/zzpd;)V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zze:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V

    return-void
.end method

.method private final zzg(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzhq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzx()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcp;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zznl;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzdw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzdz;Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzd(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public final notifyBuffering(Ljava/time/Duration;)V
    .locals 1

    const-string v0, "Expected \'mediaPlayoutPosition\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdt;-><init>(Ljava/time/Duration;)V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V

    return-void
.end method

.method public final notifyEnded(Ljava/time/Duration;)V
    .locals 1

    const-string v0, "Expected \'mediaPlayoutPosition\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zze()V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdv;-><init>(Ljava/time/Duration;)V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V

    return-void
.end method

.method public final notifyPauseState(ZLjava/time/Duration;)V
    .locals 1

    const-string v0, "Expected \'mediaPlayoutPosition\' to be provided."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdu;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzdu;-><init>(ZLjava/time/Duration;)V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V

    return-void
.end method

.method public final notifyPlayoutRate(D)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhn;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzf(DLcom/google/android/gms/internal/meet_coactivities/zzpd;)V

    return-void
.end method

.method public final notifyPlayoutRate(DLjava/time/Duration;)V
    .locals 0

    invoke-static {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zza(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzf(DLcom/google/android/gms/internal/meet_coactivities/zzpd;)V

    return-void
.end method

.method public final notifyReady(Ljava/time/Duration;)V
    .locals 1

    const-string v0, "Expected \'mediaPlayoutPosition\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdx;-><init>(Ljava/time/Duration;)V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V

    return-void
.end method

.method public final notifySeekToTimestamp(Ljava/time/Duration;)V
    .locals 3

    const-string v0, "Expected \'mediaPlayoutPosition\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg:Lcom/google/common/util/concurrent/RateLimiter;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire()Z

    move-result v0

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Number of seeks per second cannot exceed %s."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdr;-><init>(Ljava/time/Duration;)V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V

    return-void
.end method

.method public final notifySwitchedToMedia(Ljava/lang/String;Ljava/lang/String;Ljava/time/Duration;)V
    .locals 1

    const-string v0, "Expected \'mediaTitle\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Expected \'mediaId\' to be provided."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Expected \'mediaPlayoutPosition\' to be provided."

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzho;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhp;->zzk(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzdy;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzdy;-><init>(Ljava/lang/String;Ljava/time/Duration;)V

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznr;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzdz;->zzg(Ljava/util/function/UnaryOperator;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V

    return-void
.end method
