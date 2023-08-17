.class final Lcom/google/android/gms/internal/meet_coactivities/zzaim;
.super Lcom/google/android/gms/internal/meet_coactivities/zzwb;
.source "SourceFile"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzvs;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;-><init>()V

    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    return-void
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzaim;)Lcom/google/android/gms/internal/meet_coactivities/zzvs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzaim;Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zzud;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzc()V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 p2, 0x3

    if-ne v1, p2, :cond_3

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzail;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzail;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaim;Lcom/google/android/gms/internal/meet_coactivities/zzvy;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unsupported state:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaij;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaij;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvt;)V

    move-object p2, p1

    goto :goto_0

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzaij;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaij;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvt;)V

    goto :goto_0

    :cond_6
    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzaij;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaij;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvt;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzaij;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaij;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvt;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zze()V

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvx;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zzd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zzd()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attrs="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzvq;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzvo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zzvo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzvq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzvq;)Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaii;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaii;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaim;Lcom/google/android/gms/internal/meet_coactivities/zzvy;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzwa;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzaij;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaij;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvt;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzd()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzg(Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
