.class final Lcom/google/android/gms/internal/meet_coactivities/zzzn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:I

.field private static final zzb:Ljava/util/Queue;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x4000

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza:I

    const/high16 v1, 0x20000

    div-int/2addr v1, v0

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zzb:Ljava/util/Queue;

    return-void
.end method

.method public static zza([B)V
    .locals 2

    array-length v0, p0

    sget v1, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zzb:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static zzb()[B
    .locals 1

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zzc(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static zzc(I)[B
    .locals 1

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza:I

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zzb:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-array p0, p0, [B

    return-object p0
.end method
