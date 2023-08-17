.class final Lcom/google/android/gms/internal/meet_coactivities/zzbe;
.super Lcom/google/android/gms/internal/meet_coactivities/zzbl;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zzbc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzbl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzbl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzbl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbl;->zzb()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbl;->zza()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpcExecutors{outgoingIpcExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", incomingIpcExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-object v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbe;->zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-object v0
.end method
