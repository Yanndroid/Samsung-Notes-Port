.class final Lcom/google/android/gms/internal/meet_coactivities/zzacl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:I

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacl;->zza:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzacu;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacl;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzc(I)V

    return-void
.end method
