.class final Lcom/google/android/gms/internal/drive/zzmd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzuw:Lcom/google/android/gms/internal/drive/zzmd;


# instance fields
.field private final zzux:Lcom/google/android/gms/internal/drive/zzmg;

.field private final zzuy:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/drive/zzmf<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/drive/zzmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzmd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzmd;->zzuw:Lcom/google/android/gms/internal/drive/zzmd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzmd;->zzuy:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzlf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzlf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzmd;->zzux:Lcom/google/android/gms/internal/drive/zzmg;

    return-void
.end method

.method public static zzej()Lcom/google/android/gms/internal/drive/zzmd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/drive/zzmd;->zzuw:Lcom/google/android/gms/internal/drive/zzmd;

    return-object v0
.end method


# virtual methods
.method public final zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/drive/zzmf<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmd;->zzuy:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/drive/zzmf;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmd;->zzux:Lcom/google/android/gms/internal/drive/zzmg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/drive/zzmg;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmd;->zzuy:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmf;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/drive/zzmf<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmd;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object p1

    return-object p1
.end method
