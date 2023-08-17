.class abstract Lcom/google/android/gms/internal/meet_coactivities/zzace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzace;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzace;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzace;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzace;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzace;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    throw v1
.end method

.method public abstract zza()V
.end method
