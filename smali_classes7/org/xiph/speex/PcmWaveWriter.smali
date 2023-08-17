.class public Lorg/xiph/speex/PcmWaveWriter;
.super Lorg/xiph/speex/AudioFileWriter;
.source "SourceFile"


# static fields
.field public static final WAVE_BITS_PER_FRAME:[[[I

.field public static final WAVE_FORMAT_PCM:S = 0x1s

.field public static final WAVE_FORMAT_SPEEX:S = -0x5ef7s

.field public static final WAVE_FRAME_SIZES:[[[I


# instance fields
.field private channels:I

.field private isPCM:Z

.field private mode:I

.field private nframes:I

.field private quality:I

.field private raf:Ljava/io/RandomAccessFile;

.field private sampleRate:I

.field private size:I

.field private vbr:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [[[I

    const/4 v2, 0x2

    new-array v3, v2, [[I

    const/16 v4, 0xb

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v7, 0x1

    aput-object v5, v3, v7

    aput-object v3, v1, v6

    new-array v3, v2, [[I

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v7

    aput-object v3, v1, v7

    new-array v3, v2, [[I

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v7

    aput-object v3, v1, v2

    sput-object v1, Lorg/xiph/speex/PcmWaveWriter;->WAVE_FRAME_SIZES:[[[I

    new-array v0, v0, [[[I

    new-array v1, v2, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v7

    aput-object v1, v0, v6

    new-array v1, v2, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v7

    aput-object v1, v0, v7

    new-array v1, v2, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v7

    aput-object v1, v0, v2

    sput-object v0, Lorg/xiph/speex/PcmWaveWriter;->WAVE_BITS_PER_FRAME:[[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
        0x1
        0x7
        0x7
        0x8
        0x8
        0x8
        0x8
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x8
        0x8
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x2
        0x8
        0x7
        0x6
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x8
        0x8
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x1
        0x7
        0x8
        0x3
        0x6
        0x6
        0x5
        0x5
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x2b
        0x4f
        0x77
        0xa0
        0xa0
        0xdc
        0xdc
        0x12c
        0x12c
        0x16c
        0x1ec
    .end array-data

    :array_7
    .array-data 4
        0x3c
        0x60
        0x88
        0xb1
        0xb1
        0xed
        0xed
        0x13d
        0x13d
        0x17d
        0x1fd
    .end array-data

    :array_8
    .array-data 4
        0x4f
        0x73
        0x9b
        0xc4
        0x100
        0x150
        0x19c
        0x1dc
        0x22c
        0x2ac
        0x34c
    .end array-data

    :array_9
    .array-data 4
        0x60
        0x84
        0xac
        0xd5
        0x111
        0x161
        0x1ad
        0x1ed
        0x23d
        0x2bd
        0x35d
    .end array-data

    :array_a
    .array-data 4
        0x53
        0x97
        0xbf
        0xe8
        0x124
        0x174
        0x1c0
        0x200
        0x250
        0x2d0
        0x370
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xa8
        0xd0
        0xf9
        0x135
        0x185
        0x1d1
        0x211
        0x261
        0x2e1
        0x381
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xiph/speex/AudioFileWriter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiph/speex/PcmWaveWriter;->size:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/PcmWaveWriter;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/xiph/speex/PcmWaveWriter;->setPCMFormat(II)V

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/PcmWaveWriter;-><init>()V

    invoke-direct/range {p0 .. p6}, Lorg/xiph/speex/PcmWaveWriter;->setSpeexFormat(IIIIIZ)V

    return-void
.end method

.method private static final calculateBlockSize(III)I
    .locals 2

    sget-object v0, Lorg/xiph/speex/PcmWaveWriter;->WAVE_FRAME_SIZES:[[[I

    add-int/lit8 p0, p0, -0x1

    aget-object v0, v0, p0

    add-int/lit8 p1, p1, -0x1

    aget-object v0, v0, p1

    aget v0, v0, p2

    sget-object v1, Lorg/xiph/speex/PcmWaveWriter;->WAVE_BITS_PER_FRAME:[[[I

    aget-object p0, v1, p0

    aget-object p0, p0, p1

    aget p0, p0, p2

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 p0, v0, 0x3

    return p0
.end method

.method private static final calculateEffectiveBitrate(III)I
    .locals 3

    sget-object v0, Lorg/xiph/speex/PcmWaveWriter;->WAVE_FRAME_SIZES:[[[I

    add-int/lit8 p0, p0, -0x1

    aget-object v0, v0, p0

    add-int/lit8 p1, p1, -0x1

    aget-object v0, v0, p1

    aget v0, v0, p2

    sget-object v1, Lorg/xiph/speex/PcmWaveWriter;->WAVE_BITS_PER_FRAME:[[[I

    aget-object v2, v1, p0

    aget-object v2, v2, p1

    aget v2, v2, p2

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x32

    mul-int/lit8 v0, v0, 0x8

    aget-object p0, v1, p0

    aget-object p0, p0, p1

    aget p0, p0, p2

    div-int/2addr v0, p0

    return v0
.end method

.method private setPCMFormat(II)V
    .locals 0

    iput p2, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    iput p1, p0, Lorg/xiph/speex/PcmWaveWriter;->sampleRate:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/xiph/speex/PcmWaveWriter;->isPCM:Z

    return-void
.end method

.method private setSpeexFormat(IIIIIZ)V
    .locals 0

    iput p1, p0, Lorg/xiph/speex/PcmWaveWriter;->mode:I

    iput p2, p0, Lorg/xiph/speex/PcmWaveWriter;->quality:I

    iput p3, p0, Lorg/xiph/speex/PcmWaveWriter;->sampleRate:I

    iput p4, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    iput p5, p0, Lorg/xiph/speex/PcmWaveWriter;->nframes:I

    iput-boolean p6, p0, Lorg/xiph/speex/PcmWaveWriter;->vbr:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/xiph/speex/PcmWaveWriter;->isPCM:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x8

    iget-object v1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v1, v0}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/xiph/speex/PcmWaveWriter;->size:I

    invoke-static {v0, v1}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public open(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    const/4 p1, 0x0

    iput p1, p0, Lorg/xiph/speex/PcmWaveWriter;->size:I

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xiph/speex/PcmWaveWriter;->open(Ljava/io/File;)V

    return-void
.end method

.method public writeHeader(Ljava/lang/String;)V
    .locals 7

    const-string v0, "RIFF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v0, v3}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    const-string v0, "WAVE"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    const-string v0, "fmt "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-boolean v0, p0, Lorg/xiph/speex/PcmWaveWriter;->isPCM:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    iget-object p1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-static {p1, v1}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    iget-object p1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    int-to-short v1, v1

    invoke-static {p1, v1}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    iget-object p1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/xiph/speex/PcmWaveWriter;->sampleRate:I

    invoke-static {p1, v1}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    iget-object p1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/xiph/speex/PcmWaveWriter;->sampleRate:I

    iget v2, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    iget-object p1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    mul-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-static {p1, v1}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    iget-object p1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-static {p1, v0}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    add-int/lit8 v4, v0, 0x64

    int-to-short v4, v4

    invoke-static {v2, v4}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    iget-object v2, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    const/16 v4, -0x5ef7

    invoke-static {v2, v4}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    iget-object v2, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v4, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    int-to-short v4, v4

    invoke-static {v2, v4}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    iget-object v2, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v4, p0, Lorg/xiph/speex/PcmWaveWriter;->sampleRate:I

    invoke-static {v2, v4}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    iget-object v2, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v4, p0, Lorg/xiph/speex/PcmWaveWriter;->mode:I

    iget v5, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    iget v6, p0, Lorg/xiph/speex/PcmWaveWriter;->quality:I

    invoke-static {v4, v5, v6}, Lorg/xiph/speex/PcmWaveWriter;->calculateEffectiveBitrate(III)I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    invoke-static {v2, v4}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    iget-object v2, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v4, p0, Lorg/xiph/speex/PcmWaveWriter;->mode:I

    iget v5, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    iget v6, p0, Lorg/xiph/speex/PcmWaveWriter;->quality:I

    invoke-static {v4, v5, v6}, Lorg/xiph/speex/PcmWaveWriter;->calculateBlockSize(III)I

    move-result v4

    int-to-short v4, v4

    invoke-static {v2, v4}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    iget-object v2, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v4, p0, Lorg/xiph/speex/PcmWaveWriter;->quality:I

    int-to-short v4, v4

    invoke-static {v2, v4}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    iget-object v2, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    add-int/lit8 v0, v0, 0x52

    int-to-short v0, v0

    invoke-static {v2, v0}, Lorg/xiph/speex/AudioFileWriter;->writeShort(Ljava/io/DataOutput;S)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeByte(I)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/xiph/speex/PcmWaveWriter;->sampleRate:I

    iget v2, p0, Lorg/xiph/speex/PcmWaveWriter;->mode:I

    iget v4, p0, Lorg/xiph/speex/PcmWaveWriter;->channels:I

    iget-boolean v5, p0, Lorg/xiph/speex/PcmWaveWriter;->vbr:Z

    iget v6, p0, Lorg/xiph/speex/PcmWaveWriter;->nframes:I

    invoke-static {v1, v2, v4, v5, v6}, Lorg/xiph/speex/AudioFileWriter;->buildSpeexHeader(IIIZI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    :goto_0
    const-string p1, "data"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    array-length v1, p1

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object p1, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-static {p1, v3}, Lorg/xiph/speex/AudioFileWriter;->writeInt(Ljava/io/DataOutput;I)V

    return-void
.end method

.method public writePacket([BII)V
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/PcmWaveWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget p1, p0, Lorg/xiph/speex/PcmWaveWriter;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/xiph/speex/PcmWaveWriter;->size:I

    return-void
.end method
