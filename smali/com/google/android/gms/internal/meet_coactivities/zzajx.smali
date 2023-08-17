.class final Lcom/google/android/gms/internal/meet_coactivities/zzajx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzake;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzake;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzajw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzajw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzajx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
