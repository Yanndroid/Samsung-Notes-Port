.class final Lcom/google/android/gms/internal/meet_coactivities/zzacg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/lang/StringBuilder;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacg;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacg;->zza:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacg;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzacu;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzacg;->zza:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzacu;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzacu;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-void
.end method
