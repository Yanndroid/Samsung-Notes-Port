.class final Lcom/google/android/gms/internal/meet_coactivities/zzafn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzup;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/net/SocketAddress;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzup;->zzb()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzc:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzc:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzup;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzc:I

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzc:I

    return-void
.end method

.method public final zze(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzd()V

    return-void
.end method

.method public final zzf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzc:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(Ljava/net/SocketAddress;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zza:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzup;->zzb()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzb:I

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafn;->zzc:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
