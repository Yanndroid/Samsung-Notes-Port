.class public final Lcom/google/android/gms/internal/meet_coactivities/zzuo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final zza:Lcom/google/common/base/Joiner;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuo;


# instance fields
.field private final zzc:Ljava/util/Map;

.field private final zzd:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zza:Lcom/google/common/base/Joiner;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuo;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zztx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/meet_coactivities/zztx;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzuo;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzum;ZLcom/google/android/gms/internal/meet_coactivities/zzuo;)V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzty;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztz;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzuo;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzum;ZLcom/google/android/gms/internal/meet_coactivities/zzuo;)V

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzc:Ljava/util/Map;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzd:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzum;ZLcom/google/android/gms/internal/meet_coactivities/zzuo;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzum;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Comma is currently not allowed in message encoding"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v1, p3, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p3, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzc:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzum;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object p3, p3, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzc:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzun;

    iget-object v3, v1, Lcom/google/android/gms/internal/meet_coactivities/zzun;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzum;

    invoke-interface {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzum;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzun;

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzun;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzum;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzun;->zzb:Z

    invoke-direct {v4, v5, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzun;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzum;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p3, Lcom/google/android/gms/internal/meet_coactivities/zzun;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzun;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzum;Z)V

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzc:Ljava/util/Map;

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zza:Lcom/google/common/base/Joiner;

    new-instance p3, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzun;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/meet_coactivities/zzun;->zzb:Z

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "US-ASCII"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzd:[B

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzuo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    return-object v0
.end method


# virtual methods
.method public final zzb()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zzd:[B

    return-object v0
.end method
