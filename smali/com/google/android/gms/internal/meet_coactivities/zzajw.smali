.class final Lcom/google/android/gms/internal/meet_coactivities/zzajw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzajx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzajx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajx;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzajx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzake;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zzd:I

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzC(Lcom/google/android/gms/internal/meet_coactivities/zzakh;IZ)Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajx;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzajx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzake;

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzU(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    return-void
.end method
