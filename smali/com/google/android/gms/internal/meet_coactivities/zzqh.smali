.class public Lcom/google/android/gms/internal/meet_coactivities/zzqh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpg;


# instance fields
.field public volatile zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

.field private volatile zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzpg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzqh;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzqh;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    iget-object v1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzrd;->zzO()Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzrd;->zzO()Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzok;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzok;->zza:[B

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzv()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzon;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzs()Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;
    :try_end_1
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzqe; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
