.class final Lcom/google/android/gms/internal/meet_coactivities/zzafi;
.super Lcom/google/android/gms/internal/meet_coactivities/zzaek;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzafj;Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafj;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafi;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaek;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzabx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafi;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafj;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzafl;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzafl;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzafl;)Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafi;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method
