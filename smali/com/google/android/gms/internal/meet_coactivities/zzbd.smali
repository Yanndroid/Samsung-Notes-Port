.class final Lcom/google/android/gms/internal/meet_coactivities/zzbd;
.super Lcom/google/android/gms/internal/meet_coactivities/zzbk;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzbk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzbk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbd;->zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-object p0
.end method

.method public final zzb(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzbk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbd;->zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzbl;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbd;->zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbd;->zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzbe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzbe;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zzbc;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbd;->zza:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-nez v1, :cond_2

    const-string v1, " outgoingIpcExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbd;->zzb:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-nez v1, :cond_3

    const-string v1, " incomingIpcExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
