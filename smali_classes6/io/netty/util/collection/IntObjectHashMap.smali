.class public Lio/netty/util/collection/IntObjectHashMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/collection/IntObjectMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/collection/IntObjectHashMap$MapEntry;,
        Lio/netty/util/collection/IntObjectHashMap$MapIterator;,
        Lio/netty/util/collection/IntObjectHashMap$PrimitiveIterator;,
        Lio/netty/util/collection/IntObjectHashMap$KeySet;,
        Lio/netty/util/collection/IntObjectHashMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/collection/IntObjectMap<",
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
            "Lio/netty/util/collection/IntObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keys:[I

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

    const-class v0, Lio/netty/util/collection/IntObjectHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/collection/IntObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lio/netty/util/collection/IntObjectHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Lio/netty/util/collection/IntObjectHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/util/collection/IntObjectHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/util/collection/IntObjectHashMap$KeySet;-><init>(Lio/netty/util/collection/IntObjectHashMap;Lio/netty/util/collection/IntObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->keySet:Ljava/util/Set;

    new-instance v0, Lio/netty/util/collection/IntObjectHashMap$EntrySet;

    invoke-direct {v0, p0, v1}, Lio/netty/util/collection/IntObjectHashMap$EntrySet;-><init>(Lio/netty/util/collection/IntObjectHashMap;Lio/netty/util/collection/IntObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->entrySet:Ljava/util/Set;

    new-instance v0, Lio/netty/util/collection/IntObjectHashMap$1;

    invoke-direct {v0, p0}, Lio/netty/util/collection/IntObjectHashMap$1;-><init>(Lio/netty/util/collection/IntObjectHashMap;)V

    iput-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->entries:Ljava/lang/Iterable;

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iput p2, p0, Lio/netty/util/collection/IntObjectHashMap;->loadFactor:F

    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lio/netty/util/collection/IntObjectHashMap;->mask:I

    new-array p2, p1, [I

    iput-object p2, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->calcMaxSize(I)I

    move-result p1

    iput p1, p0, Lio/netty/util/collection/IntObjectHashMap;->maxSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "loadFactor must be > 0 and <= 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$1000(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lio/netty/util/collection/IntObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/util/collection/IntObjectHashMap;)I
    .locals 0

    iget p0, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    return p0
.end method

.method public static synthetic access$500(Lio/netty/util/collection/IntObjectHashMap;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lio/netty/util/collection/IntObjectHashMap;->entrySet:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$600(Lio/netty/util/collection/IntObjectHashMap;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lio/netty/util/collection/IntObjectHashMap;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->removeAt(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lio/netty/util/collection/IntObjectHashMap;)[I
    .locals 0

    iget-object p0, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    return-object p0
.end method

.method public static synthetic access$900(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lio/netty/util/collection/IntObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private calcMaxSize(I)I
    .locals 2

    add-int/lit8 v0, p1, -0x1

    int-to-float p1, p1

    iget v1, p0, Lio/netty/util/collection/IntObjectHashMap;->loadFactor:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private growSize()V
    .locals 3

    iget v0, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    iget v1, p0, Lio/netty/util/collection/IntObjectHashMap;->maxSize:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    array-length v1, v0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/util/collection/IntObjectHashMap;->rehash(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max capacity reached at size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static hashCode(I)I
    .locals 0

    return p0
.end method

.method private hashIndex(I)I
    .locals 1

    invoke-static {p1}, Lio/netty/util/collection/IntObjectHashMap;->hashCode(I)I

    move-result p1

    iget v0, p0, Lio/netty/util/collection/IntObjectHashMap;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private indexOf(I)I
    .locals 4

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->hashIndex(I)I

    move-result v0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, v1}, Lio/netty/util/collection/IntObjectHashMap;->probeNext(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v3
.end method

.method private objectToKey(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private probeNext(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lio/netty/util/collection/IntObjectHashMap;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private rehash(I)V
    .locals 7

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    iget-object v1, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    new-array v2, p1, [I

    iput-object v2, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->calcMaxSize(I)I

    move-result v2

    iput v2, p0, Lio/netty/util/collection/IntObjectHashMap;->maxSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/netty/util/collection/IntObjectHashMap;->mask:I

    const/4 p1, 0x0

    :goto_0
    array-length v2, v1

    if-ge p1, v2, :cond_2

    aget-object v2, v1, p1

    if-eqz v2, :cond_1

    aget v3, v0, p1

    invoke-direct {p0, v3}, Lio/netty/util/collection/IntObjectHashMap;->hashIndex(I)I

    move-result v4

    :goto_1
    iget-object v5, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v6, v5, v4

    if-nez v6, :cond_0

    iget-object v6, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aput v3, v6, v4

    aput-object v2, v5, v4

    goto :goto_2

    :cond_0
    invoke-direct {p0, v4}, Lio/netty/util/collection/IntObjectHashMap;->probeNext(I)I

    move-result v4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeAt(I)Z
    .locals 8

    iget v0, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    const/4 v2, 0x0

    aput v2, v0, p1

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v0, p1

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->probeNext(I)I

    move-result v0

    iget-object v4, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    move v5, p1

    :goto_0
    if-eqz v4, :cond_3

    iget-object v6, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aget v6, v6, v0

    invoke-direct {p0, v6}, Lio/netty/util/collection/IntObjectHashMap;->hashIndex(I)I

    move-result v7

    if-ge v0, v7, :cond_0

    if-le v7, v5, :cond_1

    if-le v5, v0, :cond_1

    :cond_0
    if-gt v7, v5, :cond_2

    if-gt v5, v0, :cond_2

    :cond_1
    iget-object v7, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aput v6, v7, v5

    iget-object v6, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    aput-object v4, v6, v5

    aput v2, v7, v0

    aput-object v3, v6, v0

    move v5, v0

    :cond_2
    iget-object v4, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/netty/util/collection/IntObjectHashMap;->probeNext(I)I

    move-result v0

    aget-object v4, v4, v0

    goto :goto_0

    :cond_3
    if-eq v5, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

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

    sget-object v0, Lio/netty/util/collection/IntObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

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

    sget-object p0, Lio/netty/util/collection/IntObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v1, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    return-void
.end method

.method public containsKey(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->indexOf(I)I

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
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->objectToKey(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->containsKey(I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {p1}, Lio/netty/util/collection/IntObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

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
            "Lio/netty/util/collection/IntObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->entries:Ljava/lang/Iterable;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/netty/util/collection/IntObjectMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/netty/util/collection/IntObjectMap;

    iget v1, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    iget-object v4, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aget v4, v4, v1

    invoke-interface {p1, v4}, Lio/netty/util/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lio/netty/util/collection/IntObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

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

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lio/netty/util/collection/IntObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->objectToKey(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    iget-object v1, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    invoke-static {v4}, Lio/netty/util/collection/IntObjectHashMap;->hashCode(I)I

    move-result v4

    xor-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public keyToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->hashIndex(I)I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aput p1, v0, v1

    invoke-static {p2}, Lio/netty/util/collection/IntObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-direct {p0}, Lio/netty/util/collection/IntObjectHashMap;->growSize()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v3, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    aget-object p1, v2, v1

    invoke-static {p2}, Lio/netty/util/collection/IntObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {p1}, Lio/netty/util/collection/IntObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, v1}, Lio/netty/util/collection/IntObjectHashMap;->probeNext(I)I

    move-result v1

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to insert"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->objectToKey(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/netty/util/collection/IntObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/collection/IntObjectHashMap;->put(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Integer;",
            "+TV;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lio/netty/util/collection/IntObjectHashMap;

    if-eqz v0, :cond_2

    check-cast p1, Lio/netty/util/collection/IntObjectHashMap;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p1, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2, v1}, Lio/netty/util/collection/IntObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

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

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/netty/util/collection/IntObjectHashMap;->put(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->removeAt(I)Z

    invoke-static {v0}, Lio/netty/util/collection/IntObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->objectToKey(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/util/collection/IntObjectHashMap;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lio/netty/util/collection/IntObjectHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/util/collection/IntObjectHashMap;->size:I

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lio/netty/util/collection/IntObjectHashMap;->values:[Ljava/lang/Object;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    if-nez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lio/netty/util/collection/IntObjectHashMap;->keys:[I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lio/netty/util/collection/IntObjectHashMap;->keyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v4, p0, :cond_2

    const-string v2, "(this Map)"

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lio/netty/util/collection/IntObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lio/netty/util/collection/IntObjectHashMap$2;

    invoke-direct {v0, p0}, Lio/netty/util/collection/IntObjectHashMap$2;-><init>(Lio/netty/util/collection/IntObjectHashMap;)V

    return-object v0
.end method
