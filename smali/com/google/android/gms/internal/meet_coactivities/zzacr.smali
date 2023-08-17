.class final Lcom/google/android/gms/internal/meet_coactivities/zzacr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzact;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzact;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacr;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzact;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacr;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzact;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzact;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzact;)Lcom/google/android/gms/internal/meet_coactivities/zztm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztm;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method
