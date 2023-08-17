.class final Lcom/google/android/gms/internal/meet_coactivities/zzagh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzabq;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzagg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzagh;Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzaby;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzaby;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzaby;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzvz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzadb;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzage;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzage;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzagh;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvz;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzo()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvt;Z)Lcom/google/android/gms/internal/meet_coactivities/zzaby;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzuh;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzZ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaio;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzagh;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzaby;

    move-result-object v0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, p3, v2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzwu;IZ)[Lcom/google/android/gms/internal/meet_coactivities/zztw;

    move-result-object v2

    :try_start_0
    invoke-interface {v0, p1, p3, p2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaby;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    throw p1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzA(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzaic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzakg;

    move-result-object v8

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzth;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzth;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v6, v1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaki;

    move-object v6, v2

    :goto_0
    if-nez v0, :cond_2

    move-object v7, v1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzaex;

    move-object v7, v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzagf;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/meet_coactivities/zzagf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzagh;Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzaki;Lcom/google/android/gms/internal/meet_coactivities/zzaex;Lcom/google/android/gms/internal/meet_coactivities/zzakg;Lcom/google/android/gms/internal/meet_coactivities/zzuh;)V

    return-object v0
.end method
