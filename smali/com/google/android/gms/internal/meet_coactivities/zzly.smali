.class public final Lcom/google/android/gms/internal/meet_coactivities/zzly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Comparator;

.field private static final zzb:Ljava/util/Comparator;

.field private static final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzly;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zza:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzb:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzly;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzly;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzlw;)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzly;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzlw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzly;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzly;

    return-object v0
.end method

.method public static bridge synthetic zzc()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzly;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzly;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzly;)Lcom/google/android/gms/internal/meet_coactivities/zzly;
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzly;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzlw;Lcom/google/android/gms/internal/meet_coactivities/zzlw;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzly;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzlw;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final zzd()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method
