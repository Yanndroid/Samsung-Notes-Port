.class final Lcom/google/android/gms/internal/meet_coactivities/zzafh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

.field public final synthetic zzb:Z

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzacb;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafh;->zzb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzaey;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafh;->zzb:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaey;->zzc(Ljava/lang/Object;Z)V

    return-void
.end method
