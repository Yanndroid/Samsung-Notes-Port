.class final Lcom/google/android/gms/internal/meet_coactivities/zzafc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "CONNECTING as requested"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zza(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzaft;Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzD(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V

    :cond_0
    return-void
.end method
