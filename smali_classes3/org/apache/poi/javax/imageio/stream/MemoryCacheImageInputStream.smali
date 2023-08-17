.class public Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;
.super Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream$StreamDisposerRecord;
    }
.end annotation


# instance fields
.field private cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

.field private final disposerRecord:Lorg/apache/poi/sun/java2d/DisposerRecord;

.field private final disposerReferent:Ljava/lang/Object;

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;-><init>()V

    new-instance v0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    invoke-direct {v0}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->stream:Ljava/io/InputStream;

    new-instance p1, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream$StreamDisposerRecord;

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream$StreamDisposerRecord;-><init>(Lorg/apache/poi/javax/imageio/stream/MemoryCache;)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->disposerRecord:Lorg/apache/poi/sun/java2d/DisposerRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->disposerReferent:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/apache/poi/sun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/imageio/stream/StreamFinalizer;

    invoke-direct {p1, p0}, Lcom/sun/imageio/stream/StreamFinalizer;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->disposerReferent:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stream == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->disposerRecord:Lorg/apache/poi/sun/java2d/DisposerRecord;

    invoke-interface {v0}, Lorg/apache/poi/sun/java2d/DisposerRecord;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->stream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    return-void
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public flushBefore(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->disposeBefore(J)V

    return-void
.end method

.method public isCached()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCachedFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCachedMemory()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->stream:Ljava/io/InputStream;

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->loadFromStream(Ljava/io/InputStream;J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    add-long v6, v2, v4

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->read(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const-string v0, "b == null!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->stream:Ljava/io/InputStream;

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->loadFromStream(Ljava/io/InputStream;J)J

    move-result-wide v0

    iget-wide v6, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    sub-long/2addr v0, v6

    long-to-int p3, v0

    if-lez p3, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->read([BIIJ)V

    iget-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return p3

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off+len > b.length || off+len < 0!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
