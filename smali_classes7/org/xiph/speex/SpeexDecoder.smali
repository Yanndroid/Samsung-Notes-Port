.class public Lorg/xiph/speex/SpeexDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:Ljava/lang/String; = "Java Speex Decoder v0.9.7 ($Revision: 1.4 $)"


# instance fields
.field private bits:Lorg/xiph/speex/Bits;

.field private channels:I

.field private decodedData:[F

.field private decoder:Lorg/xiph/speex/Decoder;

.field private frameSize:I

.field private outputData:[S

.field private outputSize:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/xiph/speex/Bits;

    invoke-direct {v0}, Lorg/xiph/speex/Bits;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/SpeexDecoder;->bits:Lorg/xiph/speex/Bits;

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiph/speex/SpeexDecoder;->sampleRate:I

    iput v0, p0, Lorg/xiph/speex/SpeexDecoder;->channels:I

    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SpeexDecoder;->channels:I

    return v0
.end method

.method public getProcessedData([BI)I
    .locals 5

    iget v0, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    if-gtz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    if-ge v1, v2, :cond_1

    shl-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p2

    iget-object v3, p0, Lorg/xiph/speex/SpeexDecoder;->outputData:[S

    aget-short v4, v3, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    aget-short v3, v3, v1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v2, 0x2

    iput v0, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    return v2
.end method

.method public getProcessedData([SI)I
    .locals 3

    iget v0, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    if-gtz v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/xiph/speex/SpeexDecoder;->outputData:[S

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    iput v2, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    return p1
.end method

.method public getProcessedDataByteSize()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SpeexDecoder;->sampleRate:I

    return v0
.end method

.method public init(IIIZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lorg/xiph/speex/SbDecoder;

    invoke-direct {p1}, Lorg/xiph/speex/SbDecoder;-><init>()V

    iput-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->decoder:Lorg/xiph/speex/Decoder;

    invoke-virtual {p1}, Lorg/xiph/speex/SbDecoder;->uwbinit()V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/xiph/speex/SbDecoder;

    invoke-direct {p1}, Lorg/xiph/speex/SbDecoder;-><init>()V

    iput-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->decoder:Lorg/xiph/speex/Decoder;

    invoke-virtual {p1}, Lorg/xiph/speex/SbDecoder;->wbinit()V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/xiph/speex/NbDecoder;

    invoke-direct {p1}, Lorg/xiph/speex/NbDecoder;-><init>()V

    iput-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->decoder:Lorg/xiph/speex/Decoder;

    invoke-virtual {p1}, Lorg/xiph/speex/NbCodec;->nbinit()V

    :goto_0
    iget-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->decoder:Lorg/xiph/speex/Decoder;

    invoke-interface {p1, p4}, Lorg/xiph/speex/Decoder;->setPerceptualEnhancement(Z)V

    iget-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->decoder:Lorg/xiph/speex/Decoder;

    invoke-interface {p1}, Lorg/xiph/speex/Decoder;->getFrameSize()I

    move-result p1

    iput p1, p0, Lorg/xiph/speex/SpeexDecoder;->frameSize:I

    iput p2, p0, Lorg/xiph/speex/SpeexDecoder;->sampleRate:I

    iput p3, p0, Lorg/xiph/speex/SpeexDecoder;->channels:I

    mul-int/2addr p2, p3

    mul-int/2addr p2, v1

    new-array p1, p2, [F

    iput-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->decodedData:[F

    new-array p1, p2, [S

    iput-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->outputData:[S

    iput v0, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    iget-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->bits:Lorg/xiph/speex/Bits;

    invoke-virtual {p1}, Lorg/xiph/speex/Bits;->init()V

    return v2
.end method

.method public processData(Z)I
    .locals 8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->decoder:Lorg/xiph/speex/Decoder;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/xiph/speex/SpeexDecoder;->decodedData:[F

    invoke-interface {p1, v0, v1}, Lorg/xiph/speex/Decoder;->decode(Lorg/xiph/speex/Bits;[F)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/xiph/speex/SpeexDecoder;->decoder:Lorg/xiph/speex/Decoder;

    iget-object v0, p0, Lorg/xiph/speex/SpeexDecoder;->bits:Lorg/xiph/speex/Bits;

    iget-object v1, p0, Lorg/xiph/speex/SpeexDecoder;->decodedData:[F

    invoke-interface {p1, v0, v1}, Lorg/xiph/speex/Decoder;->decode(Lorg/xiph/speex/Bits;[F)I

    move-result p1

    :goto_0
    iget v0, p0, Lorg/xiph/speex/SpeexDecoder;->channels:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/xiph/speex/SpeexDecoder;->decoder:Lorg/xiph/speex/Decoder;

    iget-object v1, p0, Lorg/xiph/speex/SpeexDecoder;->decodedData:[F

    iget v2, p0, Lorg/xiph/speex/SpeexDecoder;->frameSize:I

    invoke-interface {v0, v1, v2}, Lorg/xiph/speex/Decoder;->decodeStereo([FI)V

    :cond_1
    iget-object v0, p0, Lorg/xiph/speex/SpeexDecoder;->bits:Lorg/xiph/speex/Bits;

    invoke-virtual {v0}, Lorg/xiph/speex/Bits;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_2

    move p1, v1

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget v3, p0, Lorg/xiph/speex/SpeexDecoder;->frameSize:I

    iget v4, p0, Lorg/xiph/speex/SpeexDecoder;->channels:I

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/xiph/speex/SpeexDecoder;->decodedData:[F

    aget v4, v3, v2

    const v5, 0x46fffe00    # 32767.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    aput v5, v3, v2

    goto :goto_2

    :cond_3
    aget v4, v3, v2

    const/high16 v5, -0x39000000    # -32768.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    aput v5, v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    iget v2, p0, Lorg/xiph/speex/SpeexDecoder;->frameSize:I

    iget v3, p0, Lorg/xiph/speex/SpeexDecoder;->channels:I

    mul-int/2addr v2, v3

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lorg/xiph/speex/SpeexDecoder;->outputData:[S

    iget v3, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    iget-object v4, p0, Lorg/xiph/speex/SpeexDecoder;->decodedData:[F

    aget v5, v4, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-lez v5, :cond_6

    aget v4, v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v6

    goto :goto_4

    :cond_6
    aget v4, v4, v0

    float-to-double v4, v4

    sub-double/2addr v4, v6

    :goto_4
    double-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v1

    iput v3, p0, Lorg/xiph/speex/SpeexDecoder;->outputSize:I

    goto :goto_3

    :cond_7
    return p1
.end method

.method public processData([BII)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/xiph/speex/SpeexDecoder;->processData(Z)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/xiph/speex/SpeexDecoder;->bits:Lorg/xiph/speex/Bits;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xiph/speex/Bits;->read_from([BII)V

    const/4 p1, 0x0

    goto :goto_0
.end method
