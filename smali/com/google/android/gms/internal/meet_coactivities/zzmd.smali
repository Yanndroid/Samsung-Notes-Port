.class public final Lcom/google/android/gms/internal/meet_coactivities/zzmd;
.super Lcom/google/android/gms/internal/meet_coactivities/zzmb;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Map;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjj;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzjj;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzjj;->values()[Lcom/google/android/gms/internal/meet_coactivities/zzjj;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const/16 v6, 0xa

    new-array v7, v6, [Lcom/google/android/gms/internal/meet_coactivities/zzmd;

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    new-instance v9, Lcom/google/android/gms/internal/meet_coactivities/zzmd;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzjk;

    move-result-object v10

    invoke-direct {v9, v8, v5, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmd;-><init>(ILcom/google/android/gms/internal/meet_coactivities/zzjj;Lcom/google/android/gms/internal/meet_coactivities/zzjk;)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzmd;->zza:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/meet_coactivities/zzjj;Lcom/google/android/gms/internal/meet_coactivities/zzjk;)V
    .locals 1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjk;I)V

    const-string p1, "format char"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjj;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzj()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjj;->zze()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjj;->zza()C

    move-result p1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzk()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0xffdf

    and-int/2addr p1, p2

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzh(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmd;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/meet_coactivities/zzjj;Lcom/google/android/gms/internal/meet_coactivities/zzjk;)Lcom/google/android/gms/internal/meet_coactivities/zzmd;
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzj()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzmd;->zza:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/meet_coactivities/zzmd;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzmd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzmd;-><init>(ILcom/google/android/gms/internal/meet_coactivities/zzjj;Lcom/google/android/gms/internal/meet_coactivities/zzjk;)V

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzmc;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjk;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzmc;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzjj;Lcom/google/android/gms/internal/meet_coactivities/zzjk;)V

    return-void
.end method
