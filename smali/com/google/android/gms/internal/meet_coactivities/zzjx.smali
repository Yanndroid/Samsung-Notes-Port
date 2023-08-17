.class public final Lcom/google/android/gms/internal/meet_coactivities/zzjx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzka;


# instance fields
.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzka;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzju;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzjv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzka;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzkb;Lcom/google/android/gms/internal/meet_coactivities/zzjw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzc:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzd:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzka;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzjx;)Lcom/google/android/gms/internal/meet_coactivities/zzka;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzka;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjx;)Lcom/google/android/gms/internal/meet_coactivities/zzkb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzjx;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzd:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzjx;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzc:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzka;)Lcom/google/android/gms/internal/meet_coactivities/zzjx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzka;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzkc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzjz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjz;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjx;Lcom/google/android/gms/internal/meet_coactivities/zzjy;)V

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/meet_coactivities/zzje;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzi()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzka;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzi()Z

    move-result v0

    const-string v2, "key must be repeating"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zzc(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzd:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkb;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzc:Ljava/util/Map;

    goto :goto_0
.end method
