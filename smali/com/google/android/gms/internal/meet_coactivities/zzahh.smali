.class final Lcom/google/android/gms/internal/meet_coactivities/zzahh;
.super Lcom/google/android/gms/internal/meet_coactivities/zztj;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zztj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzahg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztj;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzagz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzagz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    const-string p1, "authority"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zzahh;Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/meet_coactivities/zzahh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzahh;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private final zzh(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, v2, Lcom/google/android/gms/internal/meet_coactivities/zzaib;

    if-eqz v0, :cond_2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzaib;

    iget-object v0, v2, Lcom/google/android/gms/internal/meet_coactivities/zzaib;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaic;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaic;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzxa;)Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzth;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzth;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzagj;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzH(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzagj;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvg;Lcom/google/android/gms/internal/meet_coactivities/zztj;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzaha;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaha;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzahb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzahb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahh;)V

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzahf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahh;Lcom/google/android/gms/internal/meet_coactivities/zzuh;Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzahc;

    invoke-direct {p2, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahc;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahh;Lcom/google/android/gms/internal/meet_coactivities/zzahf;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    return-object v1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzvg;)V

    :cond_0
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/meet_coactivities/zzvg;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzvg;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzl()Lcom/google/android/gms/internal/meet_coactivities/zzvg;

    move-result-object p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzF(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzahf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahf;->zzl()V

    goto :goto_0

    :cond_0
    return-void
.end method
