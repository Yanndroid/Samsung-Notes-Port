.class final Lcom/sun/imageio/plugins/png/IDATOutputStream;
.super Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;
.source "SourceFile"


# static fields
.field private static chunkType:[B


# instance fields
.field public buf:[B

.field private bytesRemaining:I

.field private chunkLength:I

.field private crc:Lcom/sun/imageio/plugins/png/CRC;

.field public def:Ljava/util/zip/Deflater;

.field private startPos:J

.field private stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->chunkType:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x41t
        0x54t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;-><init>()V

    new-instance v0, Lcom/sun/imageio/plugins/png/CRC;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/png/CRC;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->buf:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iput p2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->chunkLength:I

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->startChunk()V

    return-void
.end method

.method private finishChunk()V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/png/CRC;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-wide v3, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->startPos:J

    invoke-interface {v2, v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-wide v3, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->startPos:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    add-int/lit8 v3, v3, -0xc

    invoke-interface {v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->flushBefore(J)V

    return-void
.end method

.method private startChunk()V
    .locals 4

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/CRC;->reset()V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->startPos:J

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    sget-object v1, Lcom/sun/imageio/plugins/png/IDATOutputStream;->chunkType:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/imageio/plugins/png/CRC;->update([BII)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    sget-object v1, Lcom/sun/imageio/plugins/png/IDATOutputStream;->chunkType:[B

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    iget v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->chunkLength:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->bytesRemaining:I

    return-void
.end method


# virtual methods
.method public deflate()V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->bytesRemaining:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->finishChunk()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->startChunk()V

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->bytesRemaining:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->buf:[B

    invoke-virtual {v2, v4, v3, v1}, Lcom/sun/imageio/plugins/png/CRC;->update([BII)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->buf:[B

    invoke-interface {v2, v4, v3, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v3, v1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->bytesRemaining:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->bytesRemaining:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->deflate()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->finishChunk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    throw v0
.end method

.method public read()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Method not available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    :goto_0
    iget-object p1, p0, Lcom/sun/imageio/plugins/png/IDATOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->deflate()V

    goto :goto_0

    :cond_1
    return-void
.end method
