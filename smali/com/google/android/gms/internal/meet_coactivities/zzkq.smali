.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzkq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzkq;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzkg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzkq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkq;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzkp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/meet_coactivities/zzjt;Lcom/google/android/gms/internal/meet_coactivities/zzjt;)Lcom/google/android/gms/internal/meet_coactivities/zzkq;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zza()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzkq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkq;

    return-object p0

    :cond_0
    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzkm;

    invoke-direct {v0, p0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzkm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjt;Lcom/google/android/gms/internal/meet_coactivities/zzjt;Lcom/google/android/gms/internal/meet_coactivities/zzkl;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzko;

    invoke-direct {v0, p0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzko;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjt;Lcom/google/android/gms/internal/meet_coactivities/zzjt;Lcom/google/android/gms/internal/meet_coactivities/zzkn;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/util/Set;
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/meet_coactivities/zzkc;Ljava/lang/Object;)V
.end method
