.class final Lcom/google/android/gms/internal/meet_coactivities/zzxn;
.super Lcom/google/android/gms/internal/meet_coactivities/zzxf;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzxq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzxq;Lcom/google/android/gms/internal/meet_coactivities/zzxm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/net/URI;Lcom/google/android/gms/internal/meet_coactivities/zzxd;)Lcom/google/android/gms/internal/meet_coactivities/zzxk;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzd()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzxl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzxf;->zza(Ljava/net/URI;Lcom/google/android/gms/internal/meet_coactivities/zzxd;)Lcom/google/android/gms/internal/meet_coactivities/zzxk;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxq;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzxq;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzxq;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
