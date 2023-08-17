.class final Lcom/google/android/gms/internal/meet_coactivities/zzyt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzaca;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

.field private final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyv;

.field private final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzyr;

.field private zzh:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzi:Ljava/util/concurrent/Executor;

.field private zzj:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/meet_coactivities/zzaih;Lcom/google/android/gms/internal/meet_coactivities/zzaih;Lcom/google/android/gms/internal/meet_coactivities/zzyy;Lcom/google/android/gms/internal/meet_coactivities/zzyr;Lcom/google/android/gms/internal/meet_coactivities/zzyv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    iput-object p6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    iput-object p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyv;

    invoke-interface {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzaih;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p4}, Lcom/google/android/gms/internal/meet_coactivities/zzaih;->zza()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzi:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzj:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaih;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzi:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaih;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzi:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final zza(Ljava/net/SocketAddress;Lcom/google/android/gms/internal/meet_coactivities/zzabz;Lcom/google/android/gms/internal/meet_coactivities/zztl;)Lcom/google/android/gms/internal/meet_coactivities/zzacb;
    .locals 10

    iget-boolean p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzj:Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zza:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzyn;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzb:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    iget-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    iget-object v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabz;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object v9

    move-object v0, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/meet_coactivities/zzzj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/meet_coactivities/zzyn;Lcom/google/android/gms/internal/meet_coactivities/zzyr;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/meet_coactivities/zzaih;Lcom/google/android/gms/internal/meet_coactivities/zzaih;Lcom/google/android/gms/internal/meet_coactivities/zzyy;Lcom/google/android/gms/internal/meet_coactivities/zzyv;Lcom/google/android/gms/internal/meet_coactivities/zztf;)V

    return-object p3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The transport factory is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyt;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
