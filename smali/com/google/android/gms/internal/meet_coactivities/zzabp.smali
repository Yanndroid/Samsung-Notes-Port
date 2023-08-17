.class final Lcom/google/android/gms/internal/meet_coactivities/zzabp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzabx;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zztm;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzabu;Lcom/google/android/gms/internal/meet_coactivities/zztm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "observer"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zztm;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzabp;)Lcom/google/android/gms/internal/meet_coactivities/zztm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztm;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzabp;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zzabp;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 2

    sget p2, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzul;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zzd()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaez;)V

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ClientCall was cancelled at or after deadline. "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzamh;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzabn;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzabn;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabp;Lcom/google/android/gms/internal/meet_coactivities/zzamh;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzamh;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzabl;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabp;Lcom/google/android/gms/internal/meet_coactivities/zzamh;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzamh;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzabm;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabp;Lcom/google/android/gms/internal/meet_coactivities/zzamh;Lcom/google/android/gms/internal/meet_coactivities/zzald;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final zzg()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzamh;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzabo;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabo;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabp;Lcom/google/android/gms/internal/meet_coactivities/zzamh;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method
