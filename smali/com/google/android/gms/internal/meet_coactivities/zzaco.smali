.class final Lcom/google/android/gms/internal/meet_coactivities/zzaco;
.super Lcom/google/android/gms/internal/meet_coactivities/zzace;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zztm;

.field public final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzace;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaco;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaco;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaco;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaco;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztm;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method
