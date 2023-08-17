.class final Lcom/google/android/gms/internal/meet_coactivities/zzahm;
.super Lcom/google/android/gms/internal/meet_coactivities/zzaas;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzvq;

.field public final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

.field public final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

.field public final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabj;

.field public final zze:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

.field public zzf:Ljava/util/List;

.field public zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

.field public zzh:Z

.field public zzi:Z

.field public zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

.field public final synthetic zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzvq;Lcom/google/android/gms/internal/meet_coactivities/zzagv;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaas;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzvq;->zzc()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzf:Ljava/util/List;

    const-string v0, "args"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzvq;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvq;

    const-string v0, "helper"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzb()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Subchannel"

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzvj;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzalg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalg;->zza()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzvq;->zzc()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Subchannel for "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzabk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvj;IJLjava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzabj;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzalg;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabj;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabk;Lcom/google/android/gms/internal/meet_coactivities/zzalg;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabj;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvj;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvq;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzh:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzh:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzf:Ljava/util/List;

    return-object v0
.end method

.method public final zzd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzh:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzaby;

    return-void
.end method

.method public final zze()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzi:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzi:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzac(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyk;->zza()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzi:Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzac(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzafw;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzahl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzahl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahm;)V

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafw;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyk;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzE(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/meet_coactivities/zzwa;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzh:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "already started"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzi:Z

    xor-int/2addr v1, v2

    const-string v3, "already shutdown"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzac(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "Channel is being terminated"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzh:Z

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzvq;->zzc()Ljava/util/List;

    move-result-object v5

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzb()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzaf(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaee;

    move-result-object v8

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    move-result-object v9

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/common/base/Supplier;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v13, Lcom/google/android/gms/internal/meet_coactivities/zzahk;

    move-object/from16 v2, p1

    invoke-direct {v13, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahm;Lcom/google/android/gms/internal/meet_coactivities/zzwa;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzvb;

    move-result-object v14

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzabh;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabh;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    move-result-object v15

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    iget-object v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    iget-object v7, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabj;

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v4, v1

    move-object/from16 v18, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v19}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzaee;Lcom/google/android/gms/internal/meet_coactivities/zzaca;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Lcom/google/android/gms/internal/meet_coactivities/zzyl;Lcom/google/android/gms/internal/meet_coactivities/zzafm;Lcom/google/android/gms/internal/meet_coactivities/zzvb;Lcom/google/android/gms/internal/meet_coactivities/zzabi;Lcom/google/android/gms/internal/meet_coactivities/zzabk;Lcom/google/android/gms/internal/meet_coactivities/zzvj;Lcom/google/android/gms/internal/meet_coactivities/zztl;[B)V

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzux;

    invoke-direct {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzux;-><init>()V

    const-string v4, "Child Subchannel started"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzux;

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzuy;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzuy;)Lcom/google/android/gms/internal/meet_coactivities/zzux;

    iget-object v4, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzalg;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzalg;->zza()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzd(J)Lcom/google/android/gms/internal/meet_coactivities/zzux;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzvn;)Lcom/google/android/gms/internal/meet_coactivities/zzux;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzva;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabk;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzva;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzvb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvb;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvi;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzd()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzf:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzF(Ljava/util/List;)V

    return-void
.end method
