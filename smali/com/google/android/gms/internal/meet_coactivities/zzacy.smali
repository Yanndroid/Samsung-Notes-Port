.class final Lcom/google/android/gms/internal/meet_coactivities/zzacy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzadb;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacy;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacy;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadb;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzadb;)Lcom/google/android/gms/internal/meet_coactivities/zzaid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaid;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method
