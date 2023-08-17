.class final Lcom/google/android/gms/internal/meet_coactivities/zzaju;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Ljava/util/Collection;

.field public final zzd:Ljava/util/Collection;

.field public final zze:I

.field public final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzg:Z

.field public final zzh:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/gms/internal/meet_coactivities/zzakf;ZZZI)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/meet_coactivities/zzakf;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzb:Ljava/util/List;

    const-string v0, "drainedSubstreams"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzc:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzd:Ljava/util/Collection;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzg:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zza:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzh:Z

    iput p8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zze:I

    const/4 p3, 0x0

    const/4 p7, 0x1

    if-eqz p6, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p7

    :goto_1
    const-string p8, "passThrough should imply buffer is null"

    invoke-static {p1, p8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move p1, p3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, p7

    :goto_3
    const-string p8, "passThrough should imply winningSubstream != null"

    invoke-static {p1, p8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz p6, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, p7, :cond_4

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p4, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzb:Z

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move p1, p3

    goto :goto_5

    :cond_6
    :goto_4
    move p1, p7

    :goto_5
    const-string p2, "passThrough should imply winningSubstream is drained"

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz p5, :cond_7

    if-eqz p4, :cond_8

    :cond_7
    move p3, p7

    :cond_8
    const-string p1, "cancelled should imply committed"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzakf;)Lcom/google/android/gms/internal/meet_coactivities/zzaju;
    .locals 11
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzh:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "hedging frozen"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "already committed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzd:Ljava/util/Collection;

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_1
    move-object v5, p1

    iget p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zze:I

    add-int/lit8 v10, p1, 0x1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzb:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzc:Ljava/util/Collection;

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzg:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zza:Z

    iget-boolean v9, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzh:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/meet_coactivities/zzaju;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/gms/internal/meet_coactivities/zzakf;ZZZI)V

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzaju;
    .locals 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzh:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzb:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzc:Ljava/util/Collection;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzd:Ljava/util/Collection;

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zzg:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zza:Z

    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaju;->zze:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/meet_coactivities/zzaju;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/gms/internal/meet_coactivities/zzakf;ZZZI)V

    return-object v0
.end method
