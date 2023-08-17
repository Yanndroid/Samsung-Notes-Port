.class Lcom/samsung/vsf/audio/WavFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channels:I

.field private filename:Ljava/lang/String;

.field private randomAccessWriter:Ljava/io/RandomAccessFile;

.field private sampleRate:I

.field private sampleSizeInBits:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lcom/samsung/vsf/audio/WavFileWriter;->filename:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->sampleRate:I

    iput p3, p0, Lcom/samsung/vsf/audio/WavFileWriter;->channels:I

    iput p4, p0, Lcom/samsung/vsf/audio/WavFileWriter;->sampleSizeInBits:I

    invoke-direct {p0}, Lcom/samsung/vsf/audio/WavFileWriter;->prepareFile()V

    return-void
.end method

.method private open()V
    .locals 3

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/samsung/vsf/audio/WavFileWriter;->filename:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private prepareFile()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/vsf/audio/WavFileWriter;->open()V

    invoke-direct {p0}, Lcom/samsung/vsf/audio/WavFileWriter;->writeHeader()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private writeHeader()V
    .locals 5

    iget v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->sampleRate:I

    iget v1, p0, Lcom/samsung/vsf/audio/WavFileWriter;->channels:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->sampleSizeInBits:I

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-string v3, "RIFF"

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-string v4, "WAVE"

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-string v4, "fmt "

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/samsung/vsf/audio/WavFileWriter;->channels:I

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/samsung/vsf/audio/WavFileWriter;->sampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/samsung/vsf/audio/WavFileWriter;->sampleSizeInBits:I

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public appendPayload([B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public rewriteSize(I)V
    .locals 4

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x1c

    add-int/2addr v1, v0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/WavFileWriter;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
