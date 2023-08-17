.class final Lcom/google/android/gms/internal/meet_coactivities/zzagy;
.super Lcom/google/android/gms/internal/meet_coactivities/zzxg;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

.field public final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxk;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzagv;Lcom/google/android/gms/internal/meet_coactivities/zzxk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxg;-><init>()V

    const-string p1, "helperImpl"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    const-string p1, "resolver"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxk;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxk;

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zzagy;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object p1, v5, v7

    const-string v2, "io.grpc.internal.ManagedChannelImpl$NameResolverListener"

    const-string v3, "handleErrorInSyncContext"

    const-string v4, "[{0}] Failed to resolve name. status={1}"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzad(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const-string v3, "Failed to resolve name: {0}"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzae(Lcom/google/android/gms/internal/meet_coactivities/zzahp;I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zze()V

    return-void
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/meet_coactivities/zzagy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zze()V

    return-void
.end method

.method private final zze()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzo(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzag(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    invoke-direct {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaef;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzah(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzaef;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzag(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaef;->zza()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "Scheduling DNS resolution backoff for {0} ns"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzagk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzagk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzM(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzyk;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzagw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzagw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzagy;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzxi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzagx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzagx;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzagy;Lcom/google/android/gms/internal/meet_coactivities/zzxi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method
