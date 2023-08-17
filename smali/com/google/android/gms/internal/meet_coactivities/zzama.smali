.class final Lcom/google/android/gms/internal/meet_coactivities/zzama;
.super Lcom/google/android/gms/internal/meet_coactivities/zzamd;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final zzb:Ljava/util/List;

.field private volatile zzc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzama;

    const-string v1, "zzc"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzamd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzamc;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzb:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzc:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzama;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzb:Ljava/util/List;

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzb:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v1

    if-lt v1, p1, :cond_0

    rem-int p1, v1, p1

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzb:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzamd;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzama;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzama;

    const/4 v0, 0x1

    if-eq p1, p0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzb:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzb:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzama;->zzb:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    move v1, v0

    :cond_3
    return v1
.end method
