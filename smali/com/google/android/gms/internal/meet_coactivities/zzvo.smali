.class public final Lcom/google/android/gms/internal/meet_coactivities/zzvo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

.field private final zzc:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzc:[[Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzup;)Lcom/google/android/gms/internal/meet_coactivities/zzvo;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zza:Ljava/util/List;

    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zzvo;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addrs is empty"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zza:Ljava/util/List;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzvo;
    .locals 1

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzvq;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzvq;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzc:[[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzvq;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/meet_coactivities/zztf;[[Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzvp;)V

    return-object v0
.end method
