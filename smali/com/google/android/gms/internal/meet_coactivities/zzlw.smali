.class final Lcom/google/android/gms/internal/meet_coactivities/zzlw;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Comparator;


# instance fields
.field private final zzb:[Ljava/lang/Object;

.field private final zzc:[I

.field private final zzd:Ljava/util/Set;

.field private zze:Ljava/lang/Integer;

.field private zzf:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zza:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzlw;Lcom/google/android/gms/internal/meet_coactivities/zzlw;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlv;

    const/4 v9, -0x1

    invoke-direct {v0, v6, v9}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzlw;I)V

    iput-object v0, v6, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzd:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze:Ljava/lang/Integer;

    iput-object v0, v6, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzf:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractMap;->size()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/AbstractMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzc:[I

    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractMap;->size()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, v8, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzc:[I

    invoke-virtual/range {p2 .. p2}, Ljava/util/AbstractMap;->size()I

    move-result v3

    aget v2, v2, v3

    add-int v10, v1, v2

    add-int/lit8 v11, v0, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    new-array v13, v11, [I

    const/4 v14, 0x0

    aput v0, v13, v14

    invoke-direct {v7, v14}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze(I)Ljava/util/Map$Entry;

    move-result-object v2

    move v3, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move v2, v14

    move/from16 v17, v2

    move/from16 v18, v17

    :goto_0
    const/4 v0, 0x1

    if-nez v15, :cond_5

    if-eqz v16, :cond_0

    goto :goto_4

    :cond_0
    aget v1, v13, v14

    sub-int v3, v1, v2

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    move v4, v14

    :goto_1
    if-gt v4, v2, :cond_2

    aget v5, v13, v4

    sub-int/2addr v5, v3

    aput v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    aget v3, v13, v2

    sub-int v4, v3, v2

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzg(II)Z

    move-result v5

    if-eqz v5, :cond_3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v12, v14, v3, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    move-object v3, v12

    :goto_2
    invoke-static {v12, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v12, v3

    :goto_3
    iput-object v12, v6, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzb:[Ljava/lang/Object;

    aget v1, v13, v14

    add-int/2addr v1, v0

    invoke-static {v11, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzg(II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v13

    :cond_4
    iput-object v13, v6, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzc:[I

    return-void

    :cond_5
    :goto_4
    if-nez v15, :cond_6

    move v1, v0

    goto :goto_5

    :cond_6
    if-nez v16, :cond_7

    move v1, v9

    goto :goto_5

    :cond_7
    move v1, v14

    :goto_5
    if-nez v1, :cond_f

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzf(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v12, v2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/meet_coactivities/zzlv;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzlv;

    move v2, v14

    move v15, v2

    :goto_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zza()I

    move-result v16

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzb()I

    move-result v19

    sub-int v0, v16, v19

    if-lt v2, v0, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zza()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzb()I

    move-result v16

    sub-int v0, v0, v16

    if-ge v15, v0, :cond_8

    goto :goto_7

    :cond_8
    aput v3, v13, v4

    add-int/lit8 v0, v17, 0x1

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze(I)Ljava/util/Map$Entry;

    move-result-object v15

    add-int/lit8 v1, v18, 0x1

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze(I)Ljava/util/Map$Entry;

    move-result-object v16

    move/from16 v17, v0

    move/from16 v18, v1

    move v2, v4

    goto/16 :goto_0

    :cond_9
    :goto_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zza()I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzb()I

    move-result v16

    sub-int v0, v0, v16

    if-ne v2, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zza()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzb()I

    move-result v16

    sub-int v0, v0, v16

    if-ne v15, v0, :cond_b

    move v0, v9

    goto :goto_8

    :cond_b
    move v0, v14

    :goto_8
    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzc()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzc(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzc(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v9, v14}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_c
    if-gez v0, :cond_d

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzc(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9

    :cond_d
    add-int/lit8 v9, v15, 0x1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzc(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v0, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    move v0, v2

    move v15, v9

    move-object v2, v14

    :goto_9
    add-int/lit8 v9, v3, 0x1

    aput-object v2, v12, v3

    move v2, v0

    move v3, v9

    const/4 v0, 0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    goto :goto_6

    :cond_f
    add-int/lit8 v9, v2, 0x1

    move-object/from16 v0, p0

    if-gez v1, :cond_10

    move-object v1, v15

    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzd(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I

    move-result v3

    add-int/lit8 v0, v17, 0x1

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze(I)Ljava/util/Map$Entry;

    move-result-object v15

    move/from16 v17, v0

    goto :goto_a

    :cond_10
    move-object/from16 v1, v16

    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzd(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I

    move-result v3

    add-int/lit8 v0, v18, 0x1

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze(I)Ljava/util/Map$Entry;

    move-result-object v16

    move/from16 v18, v0

    :goto_a
    move v2, v9

    const/4 v9, -0x1

    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlv;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzlw;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzd:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzf:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x0

    aput p1, v3, p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzg(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzb:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzc:[I

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzls;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzls;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzls;)Ljava/lang/String;

    throw v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzls;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzls;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzls;)Ljava/lang/String;

    throw v0
.end method

.method public static bridge synthetic zza()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zza:Ljava/util/Comparator;

    return-object v0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzlw;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzc:[I

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/meet_coactivities/zzlw;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzb:[Ljava/lang/Object;

    return-object p0
.end method

.method private final zzd(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzlv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zza()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzb()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzlw;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzb:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;->zzb()I

    move-result v0

    invoke-static {v2, v0, p4, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzf(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, p4, p2

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p3, v1

    aput p3, p5, p2

    return p3
.end method

.method private final zze(I)Ljava/util/Map$Entry;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzb:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzf(Ljava/lang/String;I)Ljava/util/Map$Entry;
    .locals 2

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzlv;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzlv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzlw;I)V

    invoke-direct {v0, p1, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static zzg(II)Z
    .locals 1

    const/16 v0, 0x10

    if-le p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x9

    mul-int/lit8 p1, p1, 0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzd:Ljava/util/Set;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zze:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzf:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzf:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlw;->zzf:Ljava/lang/String;

    return-object v0
.end method
