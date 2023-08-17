.class final Lcom/google/android/gms/internal/meet_coactivities/zzail;
.super Lcom/google/android/gms/internal/meet_coactivities/zzvz;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaim;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaim;Lcom/google/android/gms/internal/meet_coactivities/zzvy;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzail;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaim;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvz;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzail;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "subchannel"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzail;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzail;)Lcom/google/android/gms/internal/meet_coactivities/zzvy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzail;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzail;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzail;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaim;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaim;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzaim;)Lcom/google/android/gms/internal/meet_coactivities/zzvs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvs;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzyl;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaik;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaik;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzail;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyl;->zzb()V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p1

    return-object p1
.end method
