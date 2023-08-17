.class public final Lcom/google/android/gms/internal/meet_coactivities/zzvv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

.field private zzc:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zzvv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zza:Ljava/util/List;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzvv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzvv;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zzc:Ljava/lang/Object;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzvx;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzvx;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvv;->zzc:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/meet_coactivities/zztf;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzvw;)V

    return-object v0
.end method
