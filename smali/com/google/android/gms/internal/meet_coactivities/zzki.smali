.class final Lcom/google/android/gms/internal/meet_coactivities/zzki;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzkm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzkm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzki;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkm;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzkh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzkh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzki;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzki;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkm;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzkm;)I

    move-result v0

    return v0
.end method
