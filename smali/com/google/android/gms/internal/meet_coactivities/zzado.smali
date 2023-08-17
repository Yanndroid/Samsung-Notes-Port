.class final Lcom/google/android/gms/internal/meet_coactivities/zzado;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzald;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzads;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzads;Lcom/google/android/gms/internal/meet_coactivities/zzald;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzado;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzads;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzado;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzald;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzado;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzads;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzads;)Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzado;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzald;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzale;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V

    return-void
.end method
