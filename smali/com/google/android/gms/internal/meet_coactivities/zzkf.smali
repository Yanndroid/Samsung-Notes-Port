.class public final Lcom/google/android/gms/internal/meet_coactivities/zzkf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzka;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzkf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzke;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzke;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzkf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzka;

    return-void
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/gms/internal/meet_coactivities/zzjx;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzkf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzjx;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjx;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzkb;Lcom/google/android/gms/internal/meet_coactivities/zzjw;)V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzkf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzka;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzka;)Lcom/google/android/gms/internal/meet_coactivities/zzjx;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzje;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
