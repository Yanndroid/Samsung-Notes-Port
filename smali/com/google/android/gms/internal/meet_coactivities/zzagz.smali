.class final Lcom/google/android/gms/internal/meet_coactivities/zzagz;
.super Lcom/google/android/gms/internal/meet_coactivities/zztj;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzI(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzs(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzabq;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzab(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaca;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaca;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzq(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzabq;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zzabi;Lcom/google/android/gms/internal/meet_coactivities/zzvg;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzuo;)Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzub;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzub;)Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    return-object v8
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzahh;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
