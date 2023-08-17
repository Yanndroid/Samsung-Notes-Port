.class public Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;
.super Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;
.source "SourceFile"


# instance fields
.field private cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

.field private stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;-><init>()V

    new-instance v0, Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    invoke-direct {v0}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stream == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->flushBefore(J)V

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    return-void
.end method

.method public flushBefore(J)V
    .locals 6

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    invoke-super {p0, p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    iget-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    sub-long v4, p1, v2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->writeToStream(Ljava/io/OutputStream;JJ)V

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->disposeBefore(J)V

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

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

.method public length()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public read()I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iget-wide v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->read(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_0
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
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iget-wide v6, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->read([BIIJ)V

    iget-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return p3

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off+len > b.length || off+len < 0!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->flushBits()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iget-wide v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->write(IJ)V

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void
.end method

.method public write([BII)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->flushBits()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    iget-wide v4, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->write([BIIJ)V

    iget-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void
.end method
