.class public Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;
.super Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH:I = 0x400


# instance fields
.field private buf:[B

.field private cache:Ljava/io/RandomAccessFile;

.field private cacheFile:Ljava/io/File;

.field private final closeAction:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

.field private final disposerRecord:Lorg/apache/poi/sun/java2d/DisposerRecord;

.field private final disposerReferent:Ljava/lang/Object;

.field private foundEOF:Z

.field private length:J

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->buf:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->length:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->foundEOF:Z

    if-eqz p1, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a directory!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->stream:Ljava/io/InputStream;

    const-string p1, ".tmp"

    const-string v1, "imageio"

    if-nez p2, :cond_2

    new-array p2, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, p1, p2}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p2, v1, p1, v0}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cacheFile:Ljava/io/File;

    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cacheFile:Ljava/io/File;

    const-string v0, "rw"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/sun/imageio/stream/StreamCloser;->createCloseAction(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->closeAction:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    invoke-static {p1}, Lcom/sun/imageio/stream/StreamCloser;->addToQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V

    new-instance p1, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;

    iget-object p2, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cacheFile:Ljava/io/File;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-direct {p1, p2, v0}, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;-><init>(Ljava/io/File;Ljava/io/RandomAccessFile;)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->disposerRecord:Lorg/apache/poi/sun/java2d/DisposerRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;

    if-ne p2, v0, :cond_3

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->disposerReferent:Ljava/lang/Object;

    invoke-static {p2, p1}, Lorg/apache/poi/sun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/sun/imageio/stream/StreamFinalizer;

    invoke-direct {p1, p0}, Lcom/sun/imageio/stream/StreamFinalizer;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->disposerReferent:Ljava/lang/Object;

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stream == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readUntil(J)J
    .locals 6

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->length:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide p1

    :cond_0
    iget-boolean v2, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->foundEOF:Z

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    sub-long v2, p1, v0

    iget-object v4, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->stream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->buf:[B

    const-wide/16 v4, 0x400

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->foundEOF:Z

    iget-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->length:J

    return-wide p1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->buf:[B

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v0, v0

    sub-long/2addr v2, v0

    iget-wide v4, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->length:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->length:J

    goto :goto_0

    :cond_3
    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->disposerRecord:Lorg/apache/poi/sun/java2d/DisposerRecord;

    invoke-interface {v0}, Lorg/apache/poi/sun/java2d/DisposerRecord;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->stream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cacheFile:Ljava/io/File;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->closeAction:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    invoke-static {v0}, Lcom/sun/imageio/stream/StreamCloser;->removeFromQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V

    return-void
.end method

.method public finalize()V
    .locals 0

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

.method public read()I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->readUntil(J)J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 6

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
    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->readUntil(J)J

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;->cache:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

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
