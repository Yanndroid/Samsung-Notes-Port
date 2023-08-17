.class public Lio/netty/util/collection/LongObjectHashMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/collection/LongObjectMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/collection/LongObjectHashMap$MapEntry;,
        Lio/netty/util/collection/LongObjectHashMap$MapIterator;,
        Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;,
        Lio/netty/util/collection/LongObjectHashMap$KeySet;,
        Lio/netty/util/collection/LongObjectHashMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/collection/LongObjectMap<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_CAPACITY:I = 0x8

.field public static final DEFAULT_LOAD_FACTOR:F = 0.5f

.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final entries:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lio/netty/util/collection/LongObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private keys:[J

.field private final loadFactor:F

.field private mask:I

.field private maxSize:I

.field private size:I

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/util/collection/LongObjectHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/collection/LongObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lio/netty/util/collection/LongObjectHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Lio/netty/util/collection/LongObjectHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/util/collection/LongObjectHashMap$KeySet;-><init>(Lio/netty/util/collection/LongObjectHashMap;Lio/netty/util/collection/LongObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keySet:Ljava/util/Set;

    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$EntrySet;

    invoke-direct {v0, p0, v1}, Lio/netty/util/collection/LongObjectHashMap$EntrySet;-><init>(Lio/netty/util/collection/LongObjectHashMap;Lio/netty/util/collection/LongObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entrySet:Ljava/util/Set;

    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$1;

    invoke-direct {v0, p0}, Lio/netty/util/collection/LongObjectHashMap$1;-><init>(Lio/netty/util/collection/LongObjectHashMap;)V

    iput-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entries:Ljava/lang/Iterable;

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iput p2, p0, Lio/netty/util/collection/LongObjectHashMap;->loadFactor:F

    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lio/netty/util/collection/LongObjectHashMap;->mask:I

    new-array p2, p1, [J

    iput-object p2, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->calcMaxSize(I)I

    move-result p1

    iput p1, p0, Lio/netty/util/collection/LongObjectHashMap;->maxSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "loadFactor must be > 0 and <= 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$1000(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lio/netty/util/collection/LongObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/util/collection/LongObjectHashMap;)I
    .locals 0

    iget p0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    return p0
.end method

.method public static synthetic access$500(Lio/netty/util/collection/LongObjectHashMap;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lio/netty/util/collection/LongObjectHashMap;->entrySet:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$600(Lio/netty/util/collection/LongObjectHashMap;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lio/netty/util/collection/LongObjectHashMap;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->removeAt(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lio/netty/util/collection/LongObjectHashMap;)[J
    .locals 0

    iget-object p0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    return-object p0
.end method

.method public static synthetic access$900(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private calcMaxSize(I)I
    .locals 2

    add-int/lit8 v0, p1, -0x1

    int-to-float p1, p1

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap;->loadFactor:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private growSize()V
    .locals 3

    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap;->maxSize:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    array-length v1, v0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/util/collection/LongObjectHashMap;->rehash(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max capacity reached at size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static hashCode(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private hashIndex(J)I
    .locals 0

    invoke-static {p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->hashCode(J)I

    move-result p1

    iget p2, p0, Lio/netty/util/collection/LongObjectHashMap;->mask:I

    and-int/2addr p1, p2

    return p1
.end method

.method private indexOf(J)I
    .locals 6

    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->hashIndex(J)I

    move-result v0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v4, v2, v1

    cmp-long v2, p1, v4

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, v1}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v3
.end method

.method private objectToKey(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private probeNext(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private rehash(I)V
    .locals 8

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    new-array v2, p1, [J

    iput-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->calcMaxSize(I)I

    move-result v2

    iput v2, p0, Lio/netty/util/collection/LongObjectHashMap;->maxSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/netty/util/collection/LongObjectHashMap;->mask:I

    const/4 p1, 0x0

    :goto_0
    array-length v2, v1

    if-ge p1, v2, :cond_2

    aget-object v2, v1, p1

    if-eqz v2, :cond_1

    aget-wide v3, v0, p1

    invoke-direct {p0, v3, v4}, Lio/netty/util/collection/LongObjectHashMap;->hashIndex(J)I

    move-result v5

    :goto_1
    iget-object v6, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v7, v6, v5

    if-nez v7, :cond_0

    iget-object v7, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aput-wide v3, v7, v5

    aput-object v2, v6, v5

    goto :goto_2

    :cond_0
    invoke-direct {p0, v5}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v5

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeAt(I)Z
    .locals 10

    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v0, p1

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v0

    iget-object v5, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v0

    move v6, p1

    :goto_0
    if-eqz v5, :cond_3

    iget-object v7, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v8, v7, v0

    invoke-direct {p0, v8, v9}, Lio/netty/util/collection/LongObjectHashMap;->hashIndex(J)I

    move-result v7

    if-ge v0, v7, :cond_0

    if-le v7, v6, :cond_1

    if-le v6, v0, :cond_1

    :cond_0
    if-gt v7, v6, :cond_2

    if-gt v6, v0, :cond_2

    :cond_1
    iget-object v7, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aput-wide v8, v7, v6

    iget-object v8, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aput-object v5, v8, v6

    aput-wide v2, v7, v0

    aput-object v4, v8, v0

    move v6, v0

    :cond_2
    iget-object v5, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v0

    aget-object v5, v5, v0

    goto :goto_0

    :cond_3
    if-eq v6, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static toExternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/collection/LongObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static toInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lio/netty/util/collection/LongObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    return-void
.end method

.method public containsKey(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->indexOf(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->objectToKey(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/collection/LongObjectHashMap;->containsKey(J)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {p1}, Lio/netty/util/collection/LongObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public entries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lio/netty/util/collection/LongObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entries:Ljava/lang/Iterable;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/netty/util/collection/LongObjectMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/netty/util/collection/LongObjectMap;

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    iget-object v4, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v5, v4, v1

    invoke-interface {p1, v5, v6}, Lio/netty/util/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lio/netty/util/collection/LongObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne v3, v5, :cond_3

    if-eqz v4, :cond_4

    return v2

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->indexOf(J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object p1, p2, p1

    invoke-static {p1}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->objectToKey(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/collection/LongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lio/netty/util/collection/LongObjectHashMap;->hashCode(J)I

    move-result v4

    xor-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public keyToString(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->hashIndex(J)I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aput-wide p1, v0, v1

    invoke-static {p3}, Lio/netty/util/collection/LongObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-direct {p0}, Lio/netty/util/collection/LongObjectHashMap;->growSize()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v3, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    aget-object p1, v2, v1

    invoke-static {p3}, Lio/netty/util/collection/LongObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {p1}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, v1}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v1

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to insert"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->objectToKey(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lio/netty/util/collection/LongObjectHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+TV;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lio/netty/util/collection/LongObjectHashMap;

    if-eqz v0, :cond_2

    check-cast p1, Lio/netty/util/collection/LongObjectHashMap;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p1, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v3, v2, v0

    invoke-virtual {p0, v3, v4, v1}, Lio/netty/util/collection/LongObjectHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/netty/util/collection/LongObjectHashMap;->put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->indexOf(J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object p2, p2, p1

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->removeAt(I)Z

    invoke-static {p2}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->objectToKey(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/collection/LongObjectHashMap;->remove(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lio/netty/util/collection/LongObjectHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    if-nez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v5, v2, v3

    invoke-virtual {p0, v5, v6}, Lio/netty/util/collection/LongObjectHashMap;->keyToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v4, p0, :cond_2

    const-string v2, "(this Map)"

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$2;

    invoke-direct {v0, p0}, Lio/netty/util/collection/LongObjectHashMap$2;-><init>(Lio/netty/util/collection/LongObjectHashMap;)V

    return-object v0
.end method
