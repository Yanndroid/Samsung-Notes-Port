.class final Lcom/google/android/gms/internal/meet_coactivities/zzade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzua;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;Lcom/google/android/gms/internal/meet_coactivities/zzua;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzade;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadt;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzade;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzade;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadt;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzadt;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzade;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzua;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzua;)V

    return-void
.end method
