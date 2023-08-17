.class final Lcom/google/android/gms/internal/meet_coactivities/zzacd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private zza:Ljava/util/ArrayList;

.field private volatile zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zza:Ljava/util/ArrayList;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzuc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-eq v0, v1, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zza:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zza:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zza:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzacc;

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
