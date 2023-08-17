.class Lcom/samsung/vsf/audio/AudioDumper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DUMP_ROOT:Ljava/lang/String; = "audio_dumps_svoice"


# instance fields
.field private mByteStream:Ljava/io/BufferedOutputStream;

.field private mCount:I

.field private mDataSize:I

.field private mFilename:Ljava/lang/String;

.field private mSamplingRate:I

.field private mWave:Lcom/samsung/vsf/audio/WavFileWriter;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mSamplingRate:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mCount:I

    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "audio_dumps_svoice"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method private dumpAudio([BZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mByteStream:Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/vsf/audio/AudioDumper;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p3, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mByteStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mByteStream:Ljava/io/BufferedOutputStream;

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/samsung/vsf/audio/AudioDumper;->mByteStream:Ljava/io/BufferedOutputStream;

    if-nez p3, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p3, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz p2, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mByteStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mByteStream:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mFilename:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private makeFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_dumps_svoice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mFilename:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mCount:I

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/vsf/audio/AudioDumper;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/samsung/vsf/audio/AudioDumper;->mDataSize:I

    invoke-virtual {v0, v2}, Lcom/samsung/vsf/audio/WavFileWriter;->rewriteSize(I)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/WavFileWriter;->close()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mByteStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mByteStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mFilename:Ljava/lang/String;

    return-void
.end method

.method public dumpAudio([B[BZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mCount:I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/samsung/vsf/audio/AudioDumper;->dumpWave([BZ)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/samsung/vsf/audio/AudioDumper;->dumpSpeex([BZ)V

    :cond_2
    return-void
.end method

.method public dumpOpus([BZ)V
    .locals 1

    const-string v0, "opus"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/vsf/audio/AudioDumper;->dumpAudio([BZLjava/lang/String;)V

    return-void
.end method

.method public dumpSpeex([BZ)V
    .locals 1

    const-string v0, "spx"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/vsf/audio/AudioDumper;->dumpAudio([BZLjava/lang/String;)V

    return-void
.end method

.method public dumpWave([BZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    if-nez v0, :cond_0

    const-string v0, "wav"

    invoke-direct {p0, v0}, Lcom/samsung/vsf/audio/AudioDumper;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/samsung/vsf/audio/WavFileWriter;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/samsung/vsf/audio/AudioDumper;->mSamplingRate:I

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/vsf/audio/WavFileWriter;-><init>(Ljava/lang/String;III)V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mDataSize:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    invoke-virtual {v0, p1}, Lcom/samsung/vsf/audio/WavFileWriter;->appendPayload([B)V

    iget v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mDataSize:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/vsf/audio/AudioDumper;->mDataSize:I

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/audio/WavFileWriter;->rewriteSize(I)V

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/WavFileWriter;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mWave:Lcom/samsung/vsf/audio/WavFileWriter;

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioDumper;->mFilename:Ljava/lang/String;

    :cond_1
    return-void
.end method
