.class final Lcom/google/android/gms/internal/meet_coactivities/zzaiz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/util/Collection;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

.field public final synthetic zzc:Ljava/util/concurrent/Future;

.field public final synthetic zzd:Ljava/util/concurrent/Future;

.field public final synthetic zze:Lcom/google/android/gms/internal/meet_coactivities/zzakh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Ljava/util/Collection;Lcom/google/android/gms/internal/meet_coactivities/zzakf;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zza:Ljava/util/Collection;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zzc:Ljava/util/concurrent/Future;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zzd:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zza:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    if-eq v1, v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zzc:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zzd:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaiz;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzq()V

    return-void
.end method
