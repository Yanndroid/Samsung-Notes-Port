.class public Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;
.super Lio/netty/buffer/search/AbstractMultiSearchProcessorFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;,
        Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;
    }
.end annotation


# static fields
.field public static final ALPHABET_SIZE:I = 0x100

.field public static final BITS_PER_SYMBOL:I = 0x8


# instance fields
.field private final jumpTable:[I

.field private final matchForNeedleId:[I


# direct methods
.method public varargs constructor <init>([[B)V
    .locals 4

    invoke-direct {p0}, Lio/netty/buffer/search/AbstractMultiSearchProcessorFactory;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    array-length v3, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Needle must be non empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->buildTrie([[B)Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;

    move-result-object p1

    iget-object v0, p1, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->jumpTable:[I

    iput-object v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    iget-object p1, p1, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->matchForNeedleId:[I

    iput-object p1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    invoke-direct {p0}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->linkSuffixes()V

    :goto_1
    iget-object p1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    array-length v0, p1

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    aget v2, p1, v1

    shr-int/lit8 v2, v2, 0x8

    aget v0, v0, v2

    if-ltz v0, :cond_2

    aget v0, p1, v1

    neg-int v0, v0

    aput v0, p1, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static buildTrie([[B)Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v2

    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_4

    aget-object v6, p0, v5

    array-length v7, v6

    move v8, v2

    move v9, v8

    :goto_2
    if-ge v8, v7, :cond_3

    aget-byte v10, v6, v8

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v4, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v10, v2

    :goto_3
    if-ge v10, v1, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    shr-int/lit8 v6, v9, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;-><init>(Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$1;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->jumpTable:[I

    move v1, v2

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->jumpTable:[I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->matchForNeedleId:[I

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->matchForNeedleId:[I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-object p0
.end method

.method private linkSuffixes()V
    .locals 11

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    array-length v2, v2

    new-array v2, v2, [I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shr-int/lit8 v5, v4, 0x8

    aget v6, v2, v5

    if-ne v6, v3, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    aget v6, v2, v5

    :goto_0
    iget-object v7, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    aget v8, v7, v5

    if-ne v8, v3, :cond_2

    shr-int/lit8 v8, v6, 0x8

    aget v8, v7, v8

    aput v8, v7, v5

    :cond_2
    move v5, v1

    :goto_1
    const/16 v7, 0x100

    if-ge v5, v7, :cond_0

    or-int v7, v4, v5

    or-int v8, v6, v5

    iget-object v9, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    aget v10, v9, v7

    aget v8, v9, v8

    if-eq v10, v3, :cond_4

    shr-int/lit8 v7, v10, 0x8

    if-lez v4, :cond_3

    if-eq v8, v3, :cond_3

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    aput v8, v2, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    if-eq v8, v3, :cond_5

    goto :goto_3

    :cond_5
    move v8, v1

    :goto_3
    aput v8, v9, v7

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public newSearchProcessor()Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;
    .locals 3

    new-instance v0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;

    iget-object v1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    iget-object v2, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;-><init>([I[I)V

    return-object v0
.end method

.method public bridge synthetic newSearchProcessor()Lio/netty/buffer/search/MultiSearchProcessor;
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->newSearchProcessor()Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSearchProcessor()Lio/netty/buffer/search/SearchProcessor;
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->newSearchProcessor()Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;

    move-result-object v0

    return-object v0
.end method
