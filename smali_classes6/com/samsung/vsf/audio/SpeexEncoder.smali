.class public Lcom/samsung/vsf/audio/SpeexEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/vsf/audio/IAudioEncoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeexEncoder"

.field private static mSpeexEncoderInstance:Lcom/samsung/vsf/audio/SpeexEncoder;


# instance fields
.field private bits:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;

.field private mEncoderId:J

.field private mFrameSize:I

.field private mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

.field private spx_enc:Lorg/xiph/speex/SpeexEncoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    return-void
.end method

.method private encodeSpeex([B)[B
    .locals 10

    iget v0, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mFrameSize:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    array-length v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v5, p1

    div-int/2addr v5, v0

    array-length p1, p1

    rem-int/2addr p1, v0

    if-lez p1, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    move p1, v4

    :goto_0
    if-ge p1, v5, :cond_2

    new-array v6, v0, [B

    add-int/lit8 v7, v5, -0x1

    if-eq p1, v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v2, v6, v4, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_1
    iget-object v7, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    invoke-virtual {v7, v6, v4, v0}, Lorg/xiph/speex/SpeexEncoder;->processData([BII)Z

    iget-object v6, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    invoke-virtual {v6}, Lorg/xiph/speex/SpeexEncoder;->getProcessedDataByteSize()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    new-array v8, v6, [B

    iget-object v9, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    invoke-virtual {v9, v8, v7}, Lorg/xiph/speex/SpeexEncoder;->getProcessedData([BI)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v8, v4

    invoke-virtual {v3, v8, v4, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    new-array v1, p1, [B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v1
.end method

.method private encodeSpeex([S)[B
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SpeexEncoder"

    const-string v3, "Inside native encode speex"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Lcom/samsung/vsf/audio/SpeexEncoder;->mFrameSize:I

    if-eqz v0, :cond_4

    :try_start_0
    array-length v5, v0

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v7

    array-length v8, v0

    div-int/2addr v8, v3

    array-length v0, v0

    rem-int/2addr v0, v3

    if-lez v0, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_3

    new-array v10, v3, [S

    add-int/lit8 v11, v8, -0x1

    if-eq v9, v11, :cond_1

    invoke-virtual {v7, v10}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v11

    invoke-virtual {v7, v10, v0, v11}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    :goto_1
    iget-object v11, v1, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    iget-object v12, v1, Lcom/samsung/vsf/audio/SpeexEncoder;->bits:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;

    invoke-virtual {v11, v12}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->speex_bits_reset(Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;)V

    iget-object v11, v1, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    iget-wide v12, v1, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J

    iget-object v14, v1, Lcom/samsung/vsf/audio/SpeexEncoder;->bits:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;

    invoke-virtual {v11, v12, v13, v10, v14}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->speex_encode_int(J[SLcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;)I

    mul-int/lit8 v10, v3, 0x2

    new-array v11, v10, [B

    iget-object v12, v1, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    iget-object v13, v1, Lcom/samsung/vsf/audio/SpeexEncoder;->bits:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;

    invoke-virtual {v12, v13, v11, v10}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->speex_bits_write(Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;[BI)I

    move-result v10

    new-array v12, v6, [B

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    const/16 v4, 0x10

    const/16 v16, 0x1

    if-ge v14, v15, :cond_2

    aput-byte v0, v12, v0

    invoke-static {v13, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v12, v16

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v6

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->byteValue()B

    move-result v14

    aput-byte v14, v12, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v12, v16

    :goto_2
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v11, v0, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    new-array v4, v3, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    :goto_3
    const-string v3, "Error occured during encoding"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    return-object v4
.end method

.method public static getInstance()Lcom/samsung/vsf/audio/SpeexEncoder;
    .locals 2

    const-string v0, "SpeexEncoder"

    const-string v1, "inside getInstance"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoderInstance:Lcom/samsung/vsf/audio/SpeexEncoder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/vsf/audio/SpeexEncoder;

    invoke-direct {v0}, Lcom/samsung/vsf/audio/SpeexEncoder;-><init>()V

    :cond_0
    return-object v0
.end method

.method private declared-synchronized initJspeexEncoder(I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeexEncoder"

    const-string v1, "initJSpeex"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/xiph/speex/SpeexEncoder;

    invoke-direct {v0}, Lorg/xiph/speex/SpeexEncoder;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    const/16 v1, 0x1f40

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-le p1, v1, :cond_0

    invoke-virtual {v0, v3, v2, p1, v3}, Lorg/xiph/speex/SpeexEncoder;->init(IIII)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/xiph/speex/SpeexEncoder;->init(IIII)Z

    :goto_0
    iget-object p1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    invoke-virtual {p1}, Lorg/xiph/speex/SpeexEncoder;->getEncoder()Lorg/xiph/speex/Encoder;

    move-result-object p1

    invoke-interface {p1, v3}, Lorg/xiph/speex/Encoder;->setVbr(Z)V

    iget-object p1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    invoke-virtual {p1}, Lorg/xiph/speex/SpeexEncoder;->getEncoder()Lorg/xiph/speex/Encoder;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-interface {p1, v0}, Lorg/xiph/speex/Encoder;->setVbrQuality(F)V

    iget-object p1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    invoke-virtual {p1}, Lorg/xiph/speex/SpeexEncoder;->getFrameSize()I

    move-result p1

    iput p1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mFrameSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initNativeSpeex(I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeexEncoder"

    const-string v1, "initNativeSpeex "

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;

    invoke-direct {v0}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->bits:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;

    new-instance v0, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    invoke-direct {v0}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J

    invoke-virtual {v0, p1}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->speex_encoder_init(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    iget-wide v3, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5, p1}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->speex_encoder_ctl(JILjava/lang/Long;)I

    move-result p1

    iput p1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mFrameSize:I

    const-string p1, "SpeexEncoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speex EncoderFactory frame size is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mFrameSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND encoderId is : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 5

    const-string v0, "SpeexEncoder"

    const-string v1, "inside destroy"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->spx_enc:Lorg/xiph/speex/SpeexEncoder;

    iget-object v2, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdown : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    iget-object v2, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->bits:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;

    invoke-virtual {v0, v2}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->speex_bits_destroy(Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    iget-wide v2, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->speex_encoder_destroy(J)V

    iput-object v1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mSpeexEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->mEncoderId:J

    :cond_0
    iput-object v1, p0, Lcom/samsung/vsf/audio/SpeexEncoder;->bits:Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;

    return-void
.end method

.method public encodeAudio([S)[B
    .locals 4

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/vsf/recognition/RecognizerConstants;->useJSpeexEncoder:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/vsf/audio/SpeexEncoder;->encodeSpeex([B)[B

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/vsf/audio/SpeexEncoder;->encodeSpeex([S)[B

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public init(Lcom/samsung/vsf/audio/AudioProcessorConfig;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSamplingRate()I

    move-result p1

    sget-boolean v0, Lcom/samsung/vsf/recognition/RecognizerConstants;->useJSpeexEncoder:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/audio/SpeexEncoder;->initJspeexEncoder(I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/vsf/audio/SpeexEncoder;->initNativeSpeex(I)Z

    :goto_0
    return-void
.end method
