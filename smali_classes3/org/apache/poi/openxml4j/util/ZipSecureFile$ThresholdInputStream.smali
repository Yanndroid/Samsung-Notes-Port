.class public Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
.super Ljava/io/PushbackInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/openxml4j/util/ZipSecureFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThresholdInputStream"
.end annotation


# instance fields
.field public cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

.field public counter:J

.field public markPos:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->markPos:J

    iput-object p2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    return-void
.end method


# virtual methods
.method public advance(I)V
    .locals 7

    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$100()J

    move-result-wide v2

    cmp-long p1, v0, v2

    const-string v0, ", cis.counter: "

    if-lez p1, :cond_1

    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zip bomb detected! The file would exceed the max size of the expanded data in the zip-file. This may indicates that the file is used to inflate memory usage and thus could pose a security risk. You can adjust this limit via ZipSecureFile.setMaxEntrySize() if you need to work with files which are very large. Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "Limits: MAX_ENTRY_SIZE: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$100()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-wide v1, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    const-wide/32 v3, 0x19000

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    return-void

    :cond_3
    iget-wide v3, p1, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    long-to-double v3, v3

    long-to-double v1, v1

    div-double/2addr v3, v1

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$200()D

    move-result-wide v1

    cmpl-double p1, v3, v1

    if-ltz p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zip bomb detected! The file would exceed the max. ratio of compressed file size to the size of the expanded data.\nThis may indicate that the file is used to inflate memory usage and thus could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMinInflateRatio() if you need to work with files which exceed this limit.\nCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->cis:Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    iget-wide v5, v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ratio: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Limits: MIN_INFLATE_RATIO: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$200()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public available()I
    .locals 1
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "just delegating"
    .end annotation

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public closeEntry()V
    .locals 2

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/ZipInputStream;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "underlying stream is not a ZipInputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 2

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/ZipInputStream;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "underlying stream is not a ZipInputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->markPos:J

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->advance(I)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->advance(I)V

    :cond_0
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->markPos:J

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    invoke-super {p0}, Ljava/io/PushbackInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    return-wide p1
.end method

.method public unread(I)V
    .locals 4

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    :cond_0
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "underlying stream is not a PushbackInputStream"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unread([BII)V
    .locals 4

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->counter:J

    :cond_0
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->unread([BII)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "underlying stream is not a PushbackInputStream"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
