.class final Lcom/google/android/gms/internal/meet_coactivities/zzkv;
.super Lcom/google/android/gms/internal/meet_coactivities/zzjo;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Ljava/util/Set;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzkc;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkv;->zza:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjo;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzkf;->zza(Ljava/util/Set;)Lcom/google/android/gms/internal/meet_coactivities/zzjx;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzjz;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjx;Lcom/google/android/gms/internal/meet_coactivities/zzjy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    return-void
.end method
