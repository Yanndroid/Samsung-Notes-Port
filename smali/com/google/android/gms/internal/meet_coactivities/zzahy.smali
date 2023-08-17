.class final Lcom/google/android/gms/internal/meet_coactivities/zzahy;
.super Lcom/google/android/gms/internal/meet_coactivities/zzaem;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/ref/ReferenceQueue;

.field private static final zzb:Ljava/util/concurrent/ConcurrentMap;

.field private static final zzc:Ljava/util/logging/Logger;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzahy;->zza:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzahy;->zzb:Ljava/util/concurrent/ConcurrentMap;

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzahy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzahy;->zzc:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzwg;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzahy;->zza:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzahy;->zzb:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaem;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzwg;)V

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzahx;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahx;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzahy;Lcom/google/android/gms/internal/meet_coactivities/zzwg;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahy;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzahx;

    return-void
.end method

.method public static bridge synthetic zzc()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzahy;->zzc:Ljava/util/logging/Logger;

    return-object v0
.end method
