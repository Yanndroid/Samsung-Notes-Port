.class final Lcom/google/android/gms/internal/meet_coactivities/zzafd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzafe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzafe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzn(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaie;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzyk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzafe;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzaie;)V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v2, "InternalSubchannel closed transport due to address change"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaie;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method
