.class public Lorg/xiph/speex/SpeexEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:Ljava/lang/String; = "Java Speex Encoder v0.9.7 ($Revision: 1.6 $)"


# instance fields
.field private bits:Lorg/xiph/speex/Bits;

.field private channels:I

.field private encoder:Lorg/xiph/speex/Encoder;

.field private frameSize:I

.field private rawData:[F

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/xiph/speex/Bits;

    invoke-direct {v0}, Lorg/xiph/speex/Bits;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/SpeexEncoder;->bits:Lorg/xiph/speex/Bits;

    return-void
.end method

.method public static mapPcm16bitLittleEndian2Float([BI[FII)V
    .locals 4

    array-length v0, p0

    sub-int/2addr v0, p1

    mul-int/lit8 v1, p4, 0x2

    if-lt v0, v1, :cond_2

    array-length v0, p2

    sub-int/2addr v0, p3

    if-lt v0, p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient float buffer to convert the samples"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient Samples to convert to floats"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SpeexEncoder;->channels:I

    return v0
.end method

.method public getEncoder()Lorg/xiph/speex/Encoder;
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/SpeexEncoder;->encoder:Lorg/xiph/speex/Encoder;

    return-object v0
.end method

.method public getFrameSize()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SpeexEncoder;->frameSize:I

    return v0
.end method

.method public getProcessedData([BI)I
    .locals 3

    iget-object v0, p0, Lorg/xiph/speex/SpeexEncoder;->bits:Lorg/xiph/speex/Bits;

    invoke-virtual {v0}, Lorg/xiph/speex/Bits;->getBufferSize()I

    move-result v0

    iget-object v1, p0, Lorg/xiph/speex/SpeexEncoder;->bits:Lorg/xiph/speex/Bits;

    invoke-virtual {v1}, Lorg/xiph/speex/Bits;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->bits:Lorg/xiph/speex/Bits;

    invoke-virtual {p1}, Lorg/xiph/speex/Bits;->init()V

    return v0
.end method

.method public getProcessedDataByteSize()I
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/SpeexEncoder;->bits:Lorg/xiph/speex/Bits;

    invoke-virtual {v0}, Lorg/xiph/speex/Bits;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SpeexEncoder;->sampleRate:I

    return v0
.end method

.method public init(IIII)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/xiph/speex/SbEncoder;

    invoke-direct {p1}, Lorg/xiph/speex/SbEncoder;-><init>()V

    iput-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->encoder:Lorg/xiph/speex/Encoder;

    invoke-virtual {p1}, Lorg/xiph/speex/SbEncoder;->uwbinit()V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/xiph/speex/SbEncoder;

    invoke-direct {p1}, Lorg/xiph/speex/SbEncoder;-><init>()V

    iput-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->encoder:Lorg/xiph/speex/Encoder;

    invoke-virtual {p1}, Lorg/xiph/speex/SbEncoder;->wbinit()V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/xiph/speex/NbEncoder;

    invoke-direct {p1}, Lorg/xiph/speex/NbEncoder;-><init>()V

    iput-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->encoder:Lorg/xiph/speex/Encoder;

    invoke-virtual {p1}, Lorg/xiph/speex/NbCodec;->nbinit()V

    :goto_0
    iget-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->encoder:Lorg/xiph/speex/Encoder;

    invoke-interface {p1, p2}, Lorg/xiph/speex/Encoder;->setQuality(I)V

    iget-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->encoder:Lorg/xiph/speex/Encoder;

    invoke-interface {p1}, Lorg/xiph/speex/Encoder;->getFrameSize()I

    move-result p1

    iput p1, p0, Lorg/xiph/speex/SpeexEncoder;->frameSize:I

    iput p3, p0, Lorg/xiph/speex/SpeexEncoder;->sampleRate:I

    iput p4, p0, Lorg/xiph/speex/SpeexEncoder;->channels:I

    mul-int/2addr p4, p1

    new-array p1, p4, [F

    iput-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->rawData:[F

    iget-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->bits:Lorg/xiph/speex/Bits;

    invoke-virtual {p1}, Lorg/xiph/speex/Bits;->init()V

    return v0
.end method

.method public processData([BII)Z
    .locals 2

    iget-object v0, p0, Lorg/xiph/speex/SpeexEncoder;->rawData:[F

    div-int/lit8 p3, p3, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Lorg/xiph/speex/SpeexEncoder;->mapPcm16bitLittleEndian2Float([BI[FII)V

    iget-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->rawData:[F

    invoke-virtual {p0, p1, p3}, Lorg/xiph/speex/SpeexEncoder;->processData([FI)Z

    move-result p1

    return p1
.end method

.method public processData([FI)Z
    .locals 3

    iget v0, p0, Lorg/xiph/speex/SpeexEncoder;->channels:I

    iget v1, p0, Lorg/xiph/speex/SpeexEncoder;->frameSize:I

    mul-int v2, v0, v1

    if-ne p2, v2, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lorg/xiph/speex/SpeexEncoder;->bits:Lorg/xiph/speex/Bits;

    invoke-static {p2, p1, v1}, Lorg/xiph/speex/Stereo;->encode(Lorg/xiph/speex/Bits;[FI)V

    :cond_0
    iget-object p2, p0, Lorg/xiph/speex/SpeexEncoder;->encoder:Lorg/xiph/speex/Encoder;

    iget-object v0, p0, Lorg/xiph/speex/SpeexEncoder;->bits:Lorg/xiph/speex/Bits;

    invoke-interface {p2, v0, p1}, Lorg/xiph/speex/Encoder;->encode(Lorg/xiph/speex/Bits;[F)I

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeexEncoder requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " samples to process a Frame, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processData([SII)Z
    .locals 3

    iget v0, p0, Lorg/xiph/speex/SpeexEncoder;->channels:I

    iget v1, p0, Lorg/xiph/speex/SpeexEncoder;->frameSize:I

    mul-int/2addr v0, v1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lorg/xiph/speex/SpeexEncoder;->rawData:[F

    add-int v2, p2, v0

    aget-short v2, p1, v2

    int-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/xiph/speex/SpeexEncoder;->rawData:[F

    invoke-virtual {p0, p1, p3}, Lorg/xiph/speex/SpeexEncoder;->processData([FI)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeexEncoder requires "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " samples to process a Frame, not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
