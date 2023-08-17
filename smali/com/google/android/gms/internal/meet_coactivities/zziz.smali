.class final Lcom/google/android/gms/internal/meet_coactivities/zziz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zziv;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzix;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zziv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzit;Lcom/google/android/gms/internal/meet_coactivities/zzjt;)Lcom/google/android/gms/internal/meet_coactivities/zziz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zziv;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zziv;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzit;Lcom/google/android/gms/internal/meet_coactivities/zzjt;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zziz;

    return-object p0
.end method


# virtual methods
.method public final zzb(JLcom/google/android/gms/internal/meet_coactivities/zziy;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc(I)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    int-to-long v2, p1

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
