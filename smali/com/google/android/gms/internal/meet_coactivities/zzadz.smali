.class final Lcom/google/android/gms/internal/meet_coactivities/zzadz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaec;Lcom/google/android/gms/internal/meet_coactivities/zzxg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "savedListener"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxg;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzk()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const-string v2, "run"

    const-string v3, "io.grpc.internal.DnsNameResolver$Resolve"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzk()Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Attempting DNS resolution of "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)Lcom/google/android/gms/internal/meet_coactivities/zzup;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxh;

    move-result-object v7

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzk()Ljava/util/logging/Logger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzk()Ljava/util/logging/Logger;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using proxy address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v3, v2, v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zzxh;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzi(Z)Lcom/google/android/gms/internal/meet_coactivities/zzadw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxg;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxg;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzady;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzady;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadz;Z)V

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void

    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zzxh;

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzxe;)Lcom/google/android/gms/internal/meet_coactivities/zzxh;

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzxi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxg;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzxi;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzady;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzady;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadz;Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxg;

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to resolve host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzxg;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzady;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzady;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadz;Z)V

    goto :goto_1

    :goto_5
    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadw;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzadw;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    move v4, v5

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzaec;)Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzady;

    invoke-direct {v2, p0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzady;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzadz;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    throw v1
.end method
