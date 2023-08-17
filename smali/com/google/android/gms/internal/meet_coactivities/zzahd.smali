.class final Lcom/google/android/gms/internal/meet_coactivities/zzahd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/lang/Runnable;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahf;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahd;->zza:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahd;->zza:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzahe;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahe;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahf;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-void
.end method
