.class public final Lcom/google/android/gms/internal/meet_coactivities/zzaau;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzabc;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

.field private zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzabc;Lcom/google/android/gms/internal/meet_coactivities/zzvs;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzabc;)Lcom/google/android/gms/internal/meet_coactivities/zzwf;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabc;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzabc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzwf;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzvr;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzvs;)Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabc;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzabc;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find policy \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzwb;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    return-object v0
.end method

.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzc()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzvx;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzakt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabc;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabc;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzabc;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "using default policy"

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzabc;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzabc;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzabb; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzakt;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzwd;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzaax;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaax;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzc()V

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaaz;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaaz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaay;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    return v1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzwd;->zzd()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzwd;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    sget-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzaaw;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaaw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaav;)V

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzc()V

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwd;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzvr;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzvs;)Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Load balancer changed from {0} to {1}"

    invoke-virtual {v2, v5, v3, v6}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakt;->zzb:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v4, "Load-balancing config: {0}"

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaau;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwb;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzvv;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zzd()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zzvv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzvv;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzvv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzvx;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvx;)Z

    move-result p1

    return p1
.end method
