.class public Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;
.super Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;
.source "SourceFile"


# instance fields
.field private cache:Ljava/io/RandomAccessFile;

.field private cacheFile:Ljava/io/File;

.field private final closeAction:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

.field private maxStreamPos:J

.field private stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a directory!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    const/4 p1, 0x0

    const-string v0, ".tmp"

    const-string v1, "imageio"

    if-nez p2, :cond_2

    new-array p1, p1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v0, p1}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array p1, p1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p2, v1, v0, p1}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cacheFile:Ljava/io/File;

    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cacheFile:Ljava/io/File;

    const-string v0, "rw"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/sun/imageio/stream/StreamCloser;->createCloseAction(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->closeAction:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    invoke-static {p1}, Lcom/sun/imageio/stream/StreamCloser;->addToQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stream == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->seek(J)V

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->flushBefore(J)V

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cacheFile:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->closeAction:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    invoke-static {v0}, Lcom/sun/imageio/stream/StreamCloser;->removeFromQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V

    return-void
.end method

.method public flushBefore(J)V
    .locals 7

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    invoke-super {p0, p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    iget-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    sub-long/2addr p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    const/16 v4, 0x200

    new-array v5, v4, [B

    iget-object v6, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    int-to-long v0, v4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v1, v5, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, v0

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_1
    return-void
.end method

.method public isCached()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCachedFile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCachedMemory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

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

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

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
    .locals 2

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
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-wide p2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_1
    return p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "off < 0 || len < 0 || off+len > b.length || off+len < 0!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(J)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public write(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->flushBits()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->flushBits()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;->maxStreamPos:J

    return-void
.end method
