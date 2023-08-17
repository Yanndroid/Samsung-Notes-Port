.class public Lcom/samsung/vsf/audio/OpusEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/vsf/audio/IAudioEncoder;


# static fields
.field private static final BITRATE:I = 0x5dc0

.field private static final CHANNELS:I = 0x1

.field private static final COMPLEXITY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OpusEncoder"

.field private static final VBR:I = 0x1

.field private static mOpusEncoderInstance:Lcom/samsung/vsf/audio/OpusEncoder;


# instance fields
.field private mOpusEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;

.field private mOpusEncoderId:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/vsf/audio/OpusEncoder;
    .locals 3

    const-class v0, Lcom/samsung/vsf/audio/OpusEncoder;

    monitor-enter v0

    :try_start_0
    const-string v1, "OpusEncoder"

    const-string v2, "inside getInstance"

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoderInstance:Lcom/samsung/vsf/audio/OpusEncoder;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/vsf/audio/OpusEncoder;

    invoke-direct {v1}, Lcom/samsung/vsf/audio/OpusEncoder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "OpusEncoder"

    const-string v1, "inside destroy"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;

    iget-wide v1, p0, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoderId:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;->encoder_destroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoderId:J

    return-void
.end method

.method public encodeAudio([S)[B
    .locals 14

    const/16 v0, 0x280

    new-array v0, v0, [B

    if-eqz p1, :cond_4

    array-length v1, p1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    array-length v4, p1

    const/16 v5, 0x140

    div-int/2addr v4, v5

    array-length p1, p1

    rem-int/2addr p1, v5

    if-lez p1, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    const/4 p1, 0x0

    move v6, p1

    :goto_0
    if-ge v6, v4, :cond_3

    new-array v7, v5, [S

    add-int/lit8 v8, v4, -0x1

    if-eq v6, v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v8

    invoke-virtual {v3, v7, p1, v8}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    :goto_1
    iget-object v8, p0, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;

    iget-wide v9, p0, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoderId:J

    invoke-virtual {v8, v7, v0, v9, v10}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;->encoder_process([S[BJ)I

    move-result v7

    new-array v8, v2, [B

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/4 v13, 0x1

    if-ge v10, v11, :cond_2

    aput-byte p1, v8, p1

    invoke-static {v9, v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->byteValue()B

    move-result v9

    aput-byte v9, v8, v13

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v9, p1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->byteValue()B

    move-result v10

    aput-byte v10, v8, p1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->byteValue()B

    move-result v9

    aput-byte v9, v8, v13

    :goto_2
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, p1, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public declared-synchronized init(Lcom/samsung/vsf/audio/AudioProcessorConfig;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSamplingRate()I

    move-result v1

    const-string p1, "OpusEncoder"

    const-string v0, "initOpusEncoder"

    invoke-static {p1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;

    invoke-direct {v0}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoder:Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;

    const/16 v2, 0x5dc0

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/voiceserviceplatform/voiceserviceframework/OpusJNI;->encoder_init(IIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoderId:J

    const-string p1, "OpusEncoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The opus encoder id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/vsf/audio/OpusEncoder;->mOpusEncoderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
