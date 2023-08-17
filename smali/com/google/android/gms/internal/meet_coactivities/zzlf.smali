.class final Lcom/google/android/gms/internal/meet_coactivities/zzlf;
.super Lcom/google/android/gms/internal/meet_coactivities/zzky;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;


# instance fields
.field private volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzky;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, "robolectric"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ranchu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "userdebug"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v0

    :cond_5
    :goto_4
    if-nez p1, :cond_8

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzlh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzlh;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlh;->zzb(Z)Lcom/google/android/gms/internal/meet_coactivities/zzlh;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzky;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    return-void

    :cond_7
    const/4 p1, 0x0

    goto :goto_5

    :cond_8
    :goto_6
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzkz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzkz;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzky;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    move-result-object p1

    goto :goto_5
.end method

.method public static zze(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzla;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzla;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzlf;

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzlf;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzld;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzld;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzla;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzky;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzla;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzf()V

    :cond_2
    return-object v1
.end method

.method private static zzf()V
    .locals 3

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzle;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzle;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzle;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzjn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzv()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzl()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zzd(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zzb(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzle;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzle;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjp;Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzf()V

    :cond_2
    return-void
.end method

.method public final zzd(Ljava/util/logging/Level;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zzd(Ljava/util/logging/Level;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
