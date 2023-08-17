.class final Lcom/google/android/gms/internal/meet_coactivities/zzaci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zztm;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzacu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaci;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaci;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaci;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaci;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaci;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaci;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zze(Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method
