.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zziv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zziv;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zziv;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zziv;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzit;Lcom/google/android/gms/internal/meet_coactivities/zzjt;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zziv;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zziv;->zzb()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zziv;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zza()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzd(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/meet_coactivities/zzjc;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zziu;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zziu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zziv;Lcom/google/android/gms/internal/meet_coactivities/zzit;)V

    :cond_2
    check-cast v4, Lcom/google/android/gms/internal/meet_coactivities/zzjc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjc;->zza()V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method public abstract zzb()Ljava/lang/Object;
.end method
