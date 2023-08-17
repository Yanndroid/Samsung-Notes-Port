.class public final Lcom/google/android/gms/internal/meet_coactivities/zzxb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

.field private zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxj;

.field private zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zztl;

.field private zzg:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zztl;)Lcom/google/android/gms/internal/meet_coactivities/zzxb;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zztl;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zztl;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zzxb;
    .locals 0

    const/16 p1, 0x1bb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzc(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzxb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzg:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxt;)Lcom/google/android/gms/internal/meet_coactivities/zzxb;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    return-object p0
.end method

.method public final zze(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzxb;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/meet_coactivities/zzxj;)Lcom/google/android/gms/internal/meet_coactivities/zzxb;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxj;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxj;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/meet_coactivities/zzyl;)Lcom/google/android/gms/internal/meet_coactivities/zzxb;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/meet_coactivities/zzxd;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/meet_coactivities/zzxd;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zza:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxj;

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zztl;

    iget-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxb;->zzg:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/meet_coactivities/zzxd;-><init>(Ljava/lang/Integer;Lcom/google/android/gms/internal/meet_coactivities/zzxt;Lcom/google/android/gms/internal/meet_coactivities/zzyl;Lcom/google/android/gms/internal/meet_coactivities/zzxj;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zztl;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzxc;)V

    return-object v10
.end method
