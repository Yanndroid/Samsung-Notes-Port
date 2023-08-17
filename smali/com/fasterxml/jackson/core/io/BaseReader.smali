.class abstract Lcom/fasterxml/jackson/core/io/BaseReader;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field public static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field public static final NULL_BYTE:C

.field public static final NULL_CHAR:C


# instance fields
.field public _buffer:[B

.field public final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field public _in:Ljava/io/InputStream;

.field public _length:I

.field public _ptr:I

.field public _tmpBuf:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B

    iput p4, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_ptr:I

    iput p5, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_length:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/BaseReader;->freeBuffers()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public final freeBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    aget-char v0, v0, v2

    return v0
.end method

.method public reportBounds([CII)V
    .locals 3

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), cbuf["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportStrangeStream()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
