.class public final Lcom/google/android/gms/internal/meet_coactivities/zztu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

.field private zzb:I

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztu;
    .locals 1

    const-string v0, "callOptions cannot be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/meet_coactivities/zztu;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zzc:Z

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/meet_coactivities/zztu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zzb:I

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zztv;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zztv;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zzb:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zzc:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zztv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;IZ)V

    return-object v0
.end method
