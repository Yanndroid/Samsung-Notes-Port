.class final Lcom/google/android/gms/internal/meet_coactivities/zzame;
.super Lcom/google/android/gms/internal/meet_coactivities/zzwb;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zztd;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

.field private final zze:Ljava/util/Map;

.field private final zzf:Ljava/util/Random;

.field private zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

.field private zzh:Lcom/google/android/gms/internal/meet_coactivities/zzamd;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "state-info"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zztd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzvs;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzalz;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzamd;

    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzf:Ljava/util/Random;

    return-void
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzame;Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zzud;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzc()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v2, "%s does not have exactly one group"

    invoke-static {v4, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzup;)Lcom/google/android/gms/internal/meet_coactivities/zzup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzc()V

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzd()V

    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzvy;)Lcom/google/android/gms/internal/meet_coactivities/zzamb;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzamb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    iput-object p2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzamb;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzi()V

    return-void
.end method

.method private static zzg(Lcom/google/android/gms/internal/meet_coactivities/zzup;)Lcom/google/android/gms/internal/meet_coactivities/zzup;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzup;->zzb()Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzup;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/meet_coactivities/zztf;)V

    return-object v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/meet_coactivities/zzvy;)Lcom/google/android/gms/internal/meet_coactivities/zzamb;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztd;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzamb;

    const-string v0, "STATE_INFO"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzamb;

    return-object p0
.end method

.method private final zzi()V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzvy;)Lcom/google/android/gms/internal/meet_coactivities/zzamb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzamb;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzud;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzvy;)Lcom/google/android/gms/internal/meet_coactivities/zzamb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzamb;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzud;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v4, v5, :cond_4

    :cond_3
    move v2, v6

    :cond_4
    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-eq v0, v4, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzalz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzamd;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzf:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzama;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzama;-><init>(Ljava/util/List;I)V

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzamd;)V

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzamd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzamd;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzamd;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzamd;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzamd;

    return-void
.end method

.method private static final zzk(Lcom/google/android/gms/internal/meet_coactivities/zzvy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zze()V

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzvy;)Lcom/google/android/gms/internal/meet_coactivities/zzamb;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzuc;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzamb;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzalz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzamd;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvx;)V
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zzd()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzup;)Lcom/google/android/gms/internal/meet_coactivities/zzup;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzg(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztc;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzamb;

    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzuc;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzamb;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztd;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zztc;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzvq;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzvo;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzup;)Lcom/google/android/gms/internal/meet_coactivities/zzvo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zztc;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzvo;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzvo;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzvq;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzvq;)Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    move-result-object v0

    const-string v3, "subchannel"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzaly;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaly;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzame;Lcom/google/android/gms/internal/meet_coactivities/zzvy;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzwa;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzd()V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzi()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzvy;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final zzc()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzvy;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final zze()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzame;->zze:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
