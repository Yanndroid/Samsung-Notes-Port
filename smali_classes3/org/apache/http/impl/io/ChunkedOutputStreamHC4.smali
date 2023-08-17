.class public Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(ILorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->wroteLastChunk:Z

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    iput-object p2, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;-><init>(ILorg/apache/http/io/SessionOutputBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2, p1}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;-><init>(ILorg/apache/http/io/SessionOutputBuffer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->finish()V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->wroteLastChunk:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->flushCache()V

    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->writeClosingChunk()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->wroteLastChunk:Z

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->flushCache()V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public flushCache()V
    .locals 4

    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    :cond_0
    return-void
.end method

.method public flushCacheWithAppend([BII)V
    .locals 4

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    iget-object p1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string p2, ""

    invoke-interface {p1, p2}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    array-length p1, v0

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->flushCache()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    array-length v1, v0

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->flushCacheWithAppend([BII)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeClosingChunk()V
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    return-void
.end method
