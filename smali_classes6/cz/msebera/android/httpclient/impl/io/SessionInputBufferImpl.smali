.class public Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/io/SessionInputBuffer;
.implements Lcz/msebera/android/httpclient/io/BufferInfo;


# instance fields
.field private final buffer:[B

.field private bufferLen:I

.field private bufferPos:I

.field private cbuf:Ljava/nio/CharBuffer;

.field private final constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private inStream:Ljava/io/InputStream;

.field private final lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private final metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

.field private final minChunkLimit:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;-><init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILcz/msebera/android/httpclient/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILcz/msebera/android/httpclient/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP transport metrcis"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    new-array p1, p2, [B

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x200

    :goto_0
    iput p3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    :goto_1
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    new-instance p1, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method private appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    return v1
.end method

.method private handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result p1

    :goto_0
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result p3

    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    return p1
.end method

.method private lineFromLineBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .locals 3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->clear()V

    return v0
.end method

.method private lineFromReadBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I
    .locals 3

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    if-le p2, v0, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    sub-int/2addr p2, v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {p1, v1, v0, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([BII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p2

    :goto_0
    return p2
.end method

.method private streamRead([BII)I
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->inStream:Ljava/io/InputStream;

    const-string v1, "Input stream"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public available()I
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bind(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->inStream:Ljava/io/InputStream;

    return-void
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    return-void
.end method

.method public fillBuffer()I
    .locals 4

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    if-lez v0, :cond_1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->streamRead([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    add-int/2addr v0, v1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    return v1
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 2

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDataAvailable(I)Z
    .locals 0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result p1

    return p1
.end method

.method public length()I
    .locals 2

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    return p3

    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    if-le p3, v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->streamRead([BII)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_2
    return p1

    :cond_3
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v1

    :cond_4
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .locals 8

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxLineLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_9

    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    :goto_1
    iget v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    aget-byte v6, v6, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_2
    if-lez v0, :cond_5

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v6

    if-ltz v5, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    iget v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    :goto_3
    add-int/2addr v6, v7

    iget v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v6, v7

    if-ge v6, v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Lcz/msebera/android/httpclient/MessageConstraintException;

    const-string v0, "Maximum line length limit exceeded"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    if-eq v5, v4, :cond_7

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, v5}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineFromReadBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I

    move-result p1

    return p1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int v4, v5, v1

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {v6, v7, v1, v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    iput v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    :goto_5
    move v1, v2

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v3, v5

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {v6, v7, v5, v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    :cond_8
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_5

    :cond_9
    if-ne v3, v4, :cond_a

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_a
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineFromLineBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result p1

    return p1
.end method

.method public readLine()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
