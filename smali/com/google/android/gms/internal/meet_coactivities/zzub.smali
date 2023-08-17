.class public final Lcom/google/android/gms/internal/meet_coactivities/zzub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzub;


# instance fields
.field private final zzb:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzub;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/meet_coactivities/zzua;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zztx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/meet_coactivities/zztx;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzty;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztz;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzub;-><init>([Lcom/google/android/gms/internal/meet_coactivities/zzua;)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzub;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzub;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/meet_coactivities/zzua;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzub;->zzb:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzub;->zzb:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzua;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzub;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzub;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzub;

    return-object v0
.end method
