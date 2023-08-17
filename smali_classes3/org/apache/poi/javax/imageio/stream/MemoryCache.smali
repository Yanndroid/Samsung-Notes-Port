.class Lorg/apache/poi/javax/imageio/stream/MemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_LENGTH:I = 0x2000


# instance fields
.field private cache:Ljava/util/ArrayList;

.field private cacheStart:J

.field private length:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cache:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cacheStart:J

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    return-void
.end method

.method private getCacheBlock(J)[B
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cacheStart:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cache:Ljava/util/ArrayList;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cache addressing limit exceeded!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pad(J)V
    .locals 6

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cacheStart:J

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x2000

    div-long/2addr p1, v4

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cache:Ljava/util/ArrayList;

    const/16 v5, 0x2000

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No memory left for cache!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public disposeBefore(J)V
    .locals 6

    const-wide/16 v0, 0x2000

    div-long/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cacheStart:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    sub-long v0, p1, v0

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cache:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cacheStart:J

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "pos already disposed"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    return-wide v0
.end method

.method public loadFromStream(Ljava/io/InputStream;J)J
    .locals 12

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    return-wide p2

    :cond_0
    const-wide/16 v2, 0x2000

    rem-long v4, v0, v2

    long-to-int v4, v4

    sub-long v5, p2, v0

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getCacheBlock(J)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v7

    :cond_2
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-lez v1, :cond_6

    const/16 v1, 0x2000

    if-nez v0, :cond_3

    :try_start_0
    new-array v0, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No memory left for cache!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    rsub-int v2, v4, 0x2000

    int-to-long v2, v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    return-wide p1

    :cond_4
    if-nez v4, :cond_5

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    int-to-long v8, v2

    sub-long/2addr v5, v8

    iget-wide v10, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    add-long/2addr v10, v8

    iput-wide v10, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    add-int/2addr v4, v2

    if-lt v4, v1, :cond_2

    goto :goto_0

    :cond_6
    return-wide p2
.end method

.method public read(J)I
    .locals 6

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    cmp-long v0, p1, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x2000

    div-long v4, p1, v2

    invoke-direct {p0, v4, v5}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getCacheBlock(J)[B

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    rem-long/2addr p1, v2

    long-to-int p1, p1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public read([BIIJ)V
    .locals 4

    const-string v0, "b == null!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    int-to-long v0, p3

    add-long/2addr v0, p4

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x2000

    div-long v0, p4, v0

    long-to-int p4, p4

    rem-int/lit16 p4, p4, 0x2000

    :goto_0
    if-lez p3, :cond_0

    rsub-int p5, p4, 0x2000

    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getCacheBlock(J)[B

    move-result-object v0

    invoke-static {v0, p4, p1, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, p5

    add-int/2addr p2, p5

    const/4 p4, 0x0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cacheStart:J

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    return-void
.end method

.method public write(IJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->pad(J)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    :cond_0
    const-wide/16 v0, 0x2000

    div-long v2, p2, v0

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getCacheBlock(J)[B

    move-result-object v2

    rem-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "pos < 0"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BIIJ)V
    .locals 6

    const-string v0, "b == null!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    int-to-long v0, p3

    add-long/2addr v0, p4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-wide v4, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->pad(J)V

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    :cond_0
    const-wide/16 v0, 0x2000

    rem-long v2, p4, v0

    long-to-int v2, v2

    :goto_0
    if-lez p3, :cond_1

    div-long v3, p4, v0

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getCacheBlock(J)[B

    move-result-object v3

    rsub-int v4, v2, 0x2000

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p1, p2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v2, v4

    add-long/2addr p4, v2

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeToStream(Ljava/io/OutputStream;JJ)V
    .locals 8

    add-long v0, p2, p4

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->length:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    cmp-long v2, p4, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x2000

    div-long v4, p2, v2

    iget-wide v6, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->cacheStart:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    rem-long/2addr p2, v2

    long-to-int p2, p2

    const-wide/16 v2, 0x1

    add-long v6, v4, v2

    invoke-direct {p0, v4, v5}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getCacheBlock(J)[B

    move-result-object p3

    :goto_0
    cmp-long v4, p4, v0

    if-lez v4, :cond_2

    if-nez p3, :cond_1

    add-long p2, v6, v2

    invoke-direct {p0, v6, v7}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getCacheBlock(J)[B

    move-result-object v4

    const/4 v5, 0x0

    move-wide v6, p2

    move-object p3, v4

    move p2, v5

    :cond_1
    rsub-int v4, p2, 0x2000

    int-to-long v4, v4

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1, p3, p2, v4}, Ljava/io/OutputStream;->write([BII)V

    const/4 p3, 0x0

    int-to-long v4, v4

    sub-long/2addr p4, v4

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "pos already disposed"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Negative pos or len"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Argument out of cache"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
