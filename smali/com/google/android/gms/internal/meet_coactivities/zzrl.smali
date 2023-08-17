.class final Lcom/google/android/gms/internal/meet_coactivities/zzrl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzrl;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrq;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzrl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzrl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzqt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzqt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrq;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzrl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrl;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzrp;
    .locals 2

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzqc;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzrp;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrq;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzrq;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzrp;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzqc;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzqc;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzrp;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
