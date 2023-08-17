.class public final Lcom/google/android/gms/internal/meet_coactivities/zzkw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Set;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzkw;->zza:Ljava/util/Set;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzkv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkv;-><init>(Ljava/util/Set;)V

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzkw;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjo;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzk()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjr;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zzkq;Lcom/google/android/gms/internal/meet_coactivities/zzkc;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzjm;

    const-string v1, "[CONTEXT "

    const-string v2, " ]"

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkq;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzkc;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjm;->zzb()V

    return-object p2
.end method

.method public static zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjn;Lcom/google/android/gms/internal/meet_coactivities/zzkq;Ljava/util/Set;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzkq;->zza()I

    move-result p0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-gt p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzkq;->zzb()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
