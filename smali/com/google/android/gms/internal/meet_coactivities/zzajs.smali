.class final Lcom/google/android/gms/internal/meet_coactivities/zzajs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzajq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzajq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzajq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajs;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzajr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzajr;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzajs;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
