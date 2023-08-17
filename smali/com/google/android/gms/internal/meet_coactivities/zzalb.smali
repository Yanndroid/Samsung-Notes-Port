.class public final Lcom/google/android/gms/internal/meet_coactivities/zzalb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzalb;


# instance fields
.field private final zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;-><init>([Lcom/google/android/gms/internal/meet_coactivities/zzyg;)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/meet_coactivities/zzyg;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    return-void
.end method

.method public static zza([Lcom/google/android/gms/internal/meet_coactivities/zztw;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)Lcom/google/android/gms/internal/meet_coactivities/zzalb;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;-><init>([Lcom/google/android/gms/internal/meet_coactivities/zzyg;)V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_0

    aget-object v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final zzb()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zztw;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zztw;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zztw;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zze(I)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzf(IJJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzg(J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzh(J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzi(I)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzj(IJJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzk(J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzl(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyg;->zza(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzyg;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
