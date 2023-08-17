.class public Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;
.super Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# instance fields
.field private final disposerRecord:Lcom/sun/imageio/stream/CloseableDisposerRecord;

.field private final disposerReferent:Ljava/lang/Object;

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;-><init>(Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->raf:Ljava/io/RandomAccessFile;

    new-instance v0, Lcom/sun/imageio/stream/CloseableDisposerRecord;

    invoke-direct {v0, p1}, Lcom/sun/imageio/stream/CloseableDisposerRecord;-><init>(Ljava/io/Closeable;)V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->disposerRecord:Lcom/sun/imageio/stream/CloseableDisposerRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->disposerReferent:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/sun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/imageio/stream/StreamFinalizer;

    invoke-direct {p1, p0}, Lcom/sun/imageio/stream/StreamFinalizer;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->disposerReferent:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "raf == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->disposerRecord:Lcom/sun/imageio/stream/CloseableDisposerRecord;

    invoke-virtual {v0}, Lcom/sun/imageio/stream/CloseableDisposerRecord;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public length()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->raf:Ljava/io/RandomAccessFile;

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

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->raf:Ljava/io/RandomAccessFile;

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

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_0
    return p1
.end method

.method public seek(J)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "pos < flushedPos!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
