.class public final Lcom/google/android/gms/internal/meet_coactivities/zzxh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zza:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zzxh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zza:Ljava/util/List;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzxh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzxe;)Lcom/google/android/gms/internal/meet_coactivities/zzxh;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzxe;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzxi;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzxi;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxe;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzxi;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/meet_coactivities/zztf;Lcom/google/android/gms/internal/meet_coactivities/zzxe;)V

    return-object v0
.end method
