.class final Lcom/google/android/gms/internal/meet_coactivities/zzagj;
.super Lcom/google/android/gms/internal/meet_coactivities/zzur;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzvg;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zztj;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzti;

.field private zzg:Lcom/google/android/gms/internal/meet_coactivities/zztn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzvg;Lcom/google/android/gms/internal/meet_coactivities/zztj;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzur;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzn()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzn()Ljava/util/concurrent/Executor;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzb(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    return-void
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzagj;)Lcom/google/android/gms/internal/meet_coactivities/zzuh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaio;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvg;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvf;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzc:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzagi;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzagi;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzagj;Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvf;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzaic;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzxa;)Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzth;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzth;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zze(Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method

.method public final zzf()Lcom/google/android/gms/internal/meet_coactivities/zztn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    return-object v0
.end method
