.class public Lio/netty/buffer/search/KmpSearchProcessorFactory;
.super Lio/netty/buffer/search/AbstractSearchProcessorFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;
    }
.end annotation


# instance fields
.field private final jumpTable:[I

.field private final needle:[B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Lio/netty/buffer/search/AbstractSearchProcessorFactory;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory;->needle:[B

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory;->jumpTable:[I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    :goto_1
    if-lez v0, :cond_0

    aget-byte v2, p1, v0

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory;->jumpTable:[I

    aget v0, v2, v0

    goto :goto_1

    :cond_0
    aget-byte v2, p1, v0

    aget-byte v3, p1, v1

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory;->jumpTable:[I

    add-int/lit8 v1, v1, 0x1

    aput v0, v2, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public newSearchProcessor()Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;
    .locals 3

    new-instance v0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;

    iget-object v1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory;->needle:[B

    iget-object v2, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory;->jumpTable:[I

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;-><init>([B[I)V

    return-object v0
.end method

.method public bridge synthetic newSearchProcessor()Lio/netty/buffer/search/SearchProcessor;
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/search/KmpSearchProcessorFactory;->newSearchProcessor()Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;

    move-result-object v0

    return-object v0
.end method
