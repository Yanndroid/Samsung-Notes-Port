.class public Lorg/xiph/speex/OggSpeexWriter;
.super Lorg/xiph/speex/AudioFileWriter;
.source "SourceFile"


# static fields
.field public static final PACKETS_PER_OGG_PAGE:I = 0xfa


# instance fields
.field private channels:I

.field private dataBuffer:[B

.field private dataBufferPtr:I

.field private granulepos:J

.field private headerBuffer:[B

.field private headerBufferPtr:I

.field private mode:I

.field private nframes:I

.field private out:Ljava/io/OutputStream;

.field private packetCount:I

.field private pageCount:I

.field private sampleRate:I

.field private size:I

.field private streamSerialNumber:I

.field private vbr:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/xiph/speex/AudioFileWriter;-><init>()V

    iget v0, p0, Lorg/xiph/speex/OggSpeexWriter;->streamSerialNumber:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->streamSerialNumber:I

    :cond_0
    const v0, 0x1001d

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBufferPtr:I

    const/16 v1, 0xff

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/xiph/speex/OggSpeexWriter;->headerBuffer:[B

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->headerBufferPtr:I

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->pageCount:I

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->packetCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiph/speex/OggSpeexWriter;->granulepos:J

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/OggSpeexWriter;-><init>()V

    invoke-direct/range {p0 .. p5}, Lorg/xiph/speex/OggSpeexWriter;->setFormat(IIIIZ)V

    return-void
.end method

.method private flush(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-wide v2, p0, Lorg/xiph/speex/OggSpeexWriter;->granulepos:J

    iget v4, p0, Lorg/xiph/speex/OggSpeexWriter;->streamSerialNumber:I

    iget v5, p0, Lorg/xiph/speex/OggSpeexWriter;->pageCount:I

    add-int/lit8 p1, v5, 0x1

    iput p1, p0, Lorg/xiph/speex/OggSpeexWriter;->pageCount:I

    iget v6, p0, Lorg/xiph/speex/OggSpeexWriter;->packetCount:I

    iget-object v7, p0, Lorg/xiph/speex/OggSpeexWriter;->headerBuffer:[B

    invoke-static/range {v1 .. v7}, Lorg/xiph/speex/AudioFileWriter;->buildOggPageHeader(IJIII[B)[B

    move-result-object p1

    array-length v1, p1

    invoke-static {v0, p1, v0, v1}, Lorg/xiph/speex/OggCrc;->checksum(I[BII)I

    move-result v1

    iget-object v2, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBuffer:[B

    iget v3, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBufferPtr:I

    invoke-static {v1, v2, v0, v3}, Lorg/xiph/speex/OggCrc;->checksum(I[BII)I

    move-result v1

    const/16 v2, 0x16

    invoke-static {p1, v2, v1}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    iget-object v1, p0, Lorg/xiph/speex/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/xiph/speex/OggSpeexWriter;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBuffer:[B

    iget v2, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBufferPtr:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBufferPtr:I

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->headerBufferPtr:I

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->packetCount:I

    return-void
.end method

.method private setFormat(IIIIZ)V
    .locals 0

    iput p1, p0, Lorg/xiph/speex/OggSpeexWriter;->mode:I

    iput p2, p0, Lorg/xiph/speex/OggSpeexWriter;->sampleRate:I

    iput p3, p0, Lorg/xiph/speex/OggSpeexWriter;->channels:I

    iput p4, p0, Lorg/xiph/speex/OggSpeexWriter;->nframes:I

    iput-boolean p5, p0, Lorg/xiph/speex/OggSpeexWriter;->vbr:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xiph/speex/OggSpeexWriter;->flush(Z)V

    iget-object v0, p0, Lorg/xiph/speex/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public open(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xiph/speex/OggSpeexWriter;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    iput p1, p0, Lorg/xiph/speex/OggSpeexWriter;->size:I

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xiph/speex/OggSpeexWriter;->open(Ljava/io/File;)V

    return-void
.end method

.method public setSerialNumber(I)V
    .locals 0

    iput p1, p0, Lorg/xiph/speex/OggSpeexWriter;->streamSerialNumber:I

    return-void
.end method

.method public writeHeader(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    iget v4, v0, Lorg/xiph/speex/OggSpeexWriter;->streamSerialNumber:I

    iget v5, v0, Lorg/xiph/speex/OggSpeexWriter;->pageCount:I

    add-int/lit8 v1, v5, 0x1

    iput v1, v0, Lorg/xiph/speex/OggSpeexWriter;->pageCount:I

    const/4 v8, 0x1

    new-array v7, v8, [B

    const/16 v1, 0x50

    const/4 v9, 0x0

    aput-byte v1, v7, v9

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v7}, Lorg/xiph/speex/AudioFileWriter;->buildOggPageHeader(IJIII[B)[B

    move-result-object v1

    iget v2, v0, Lorg/xiph/speex/OggSpeexWriter;->sampleRate:I

    iget v3, v0, Lorg/xiph/speex/OggSpeexWriter;->mode:I

    iget v4, v0, Lorg/xiph/speex/OggSpeexWriter;->channels:I

    iget-boolean v5, v0, Lorg/xiph/speex/OggSpeexWriter;->vbr:Z

    iget v6, v0, Lorg/xiph/speex/OggSpeexWriter;->nframes:I

    invoke-static {v2, v3, v4, v5, v6}, Lorg/xiph/speex/AudioFileWriter;->buildSpeexHeader(IIIZI)[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v9, v1, v9, v3}, Lorg/xiph/speex/OggCrc;->checksum(I[BII)I

    move-result v3

    array-length v4, v2

    invoke-static {v3, v2, v9, v4}, Lorg/xiph/speex/OggCrc;->checksum(I[BII)I

    move-result v3

    const/16 v4, 0x16

    invoke-static {v1, v4, v3}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    iget-object v3, v0, Lorg/xiph/speex/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, v0, Lorg/xiph/speex/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget v13, v0, Lorg/xiph/speex/OggSpeexWriter;->streamSerialNumber:I

    iget v14, v0, Lorg/xiph/speex/OggSpeexWriter;->pageCount:I

    add-int/lit8 v1, v14, 0x1

    iput v1, v0, Lorg/xiph/speex/OggSpeexWriter;->pageCount:I

    new-array v1, v8, [B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v15, 0x1

    move-object/from16 v16, v1

    invoke-static/range {v10 .. v16}, Lorg/xiph/speex/AudioFileWriter;->buildOggPageHeader(IJIII[B)[B

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/xiph/speex/AudioFileWriter;->buildSpeexComment(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v9, v1, v9, v3}, Lorg/xiph/speex/OggCrc;->checksum(I[BII)I

    move-result v3

    array-length v5, v2

    invoke-static {v3, v2, v9, v5}, Lorg/xiph/speex/OggCrc;->checksum(I[BII)I

    move-result v3

    invoke-static {v1, v4, v3}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    iget-object v3, v0, Lorg/xiph/speex/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, v0, Lorg/xiph/speex/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writePacket([BII)V
    .locals 3

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/xiph/speex/OggSpeexWriter;->packetCount:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xiph/speex/OggSpeexWriter;->flush(Z)V

    :cond_1
    iget-object v0, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBuffer:[B

    iget v1, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBufferPtr:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBufferPtr:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/xiph/speex/OggSpeexWriter;->dataBufferPtr:I

    iget-object p1, p0, Lorg/xiph/speex/OggSpeexWriter;->headerBuffer:[B

    iget p2, p0, Lorg/xiph/speex/OggSpeexWriter;->headerBufferPtr:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lorg/xiph/speex/OggSpeexWriter;->headerBufferPtr:I

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    iget p1, p0, Lorg/xiph/speex/OggSpeexWriter;->packetCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/xiph/speex/OggSpeexWriter;->packetCount:I

    iget-wide v0, p0, Lorg/xiph/speex/OggSpeexWriter;->granulepos:J

    iget p1, p0, Lorg/xiph/speex/OggSpeexWriter;->nframes:I

    iget p3, p0, Lorg/xiph/speex/OggSpeexWriter;->mode:I

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    const/16 p2, 0x280

    goto :goto_0

    :cond_2
    if-ne p3, p2, :cond_3

    const/16 p2, 0x140

    goto :goto_0

    :cond_3
    const/16 p2, 0xa0

    :goto_0
    mul-int/2addr p1, p2

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/xiph/speex/OggSpeexWriter;->granulepos:J

    return-void
.end method
