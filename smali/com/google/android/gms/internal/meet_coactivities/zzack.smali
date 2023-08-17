.class final Lcom/google/android/gms/internal/meet_coactivities/zzack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzack;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzack;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzack;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzack;->zza:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzd(Ljava/lang/Object;)V

    return-void
.end method
