.class public Lorg/apache/http/impl/io/ChunkedInputStreamHC4;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CHUNK_CRLF:I = 0x3

.field private static final CHUNK_DATA:I = 0x2

.field private static final CHUNK_LEN:I = 0x1


# instance fields
.field private final buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private footers:[Lorg/apache/http/Header;

.field private final in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:I

.field private state:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    new-array v1, v0, [Lorg/apache/http/Header;

    iput-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->footers:[Lorg/apache/http/Header;

    const-string v1, "Session input buffer"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/io/SessionInputBuffer;

    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    return-void
.end method

.method private getChunkSize()I
    .locals 5

    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v4, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v4}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    const-string v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_4

    return v3

    :cond_4
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    :cond_5
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1, v3, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    const-string v1, "Bad chunk header"

    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextChunk()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->getChunkSize()I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    if-ltz v0, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->parseTrailerHeaders()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    const-string v1, "Negative chunk size"

    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTrailerHeaders()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v2, v2, v1}, Lorg/apache/http/impl/io/AbstractMessageParserHC4;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->footers:[Lorg/apache/http/Header;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid footer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    instance-of v1, v0, Lorg/apache/http/io/BufferInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/http/io/BufferInfo;

    invoke-interface {v0}, Lorg/apache/http/io/BufferInfo;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    if-nez v1, :cond_1

    const/16 v1, 0x800

    new-array v1, v1, [B

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_0

    :cond_1
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public getFooters()[Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->footers:[Lorg/apache/http/Header;

    invoke-virtual {v0}, [Lorg/apache/http/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public read()I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->nextChunk()V

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    :cond_2
    return v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->closed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->nextChunk()V

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    iget v3, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_3

    iget p2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    iget p3, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    if-lt p2, p3, :cond_2

    const/4 p2, 0x3

    iput p2, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->state:I

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->eof:Z

    new-instance p1, Lorg/apache/http/TruncatedChunkException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Truncated chunk ( expected size: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->chunkSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; actual size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/http/impl/io/ChunkedInputStreamHC4;->pos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
