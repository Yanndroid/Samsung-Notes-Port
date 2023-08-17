.class final Lcom/google/android/gms/internal/meet_coactivities/zzacj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzi()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
