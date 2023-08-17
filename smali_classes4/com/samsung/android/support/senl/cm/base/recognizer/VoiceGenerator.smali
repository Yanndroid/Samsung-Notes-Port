.class public Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_SOURCE:I = 0x6

.field private static final BUFFER_SIZE_IN_BYTES:I = 0xc80

.field private static final CHANNEL_CONFIG:I = 0x10

.field private static final SAMPLE_RATE_IN_HZ:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "VoiceGenerator"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VoiceGenerator"

    invoke-static {v0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xc80

    new-array v1, v0, [B

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    iget-object v2, v2, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->CONTINUE_RECOGNITION:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioRecord;->read([BII)I

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->put([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed generation,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceGenerator"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startVoiceGeneration()V
    .locals 8

    const-string v0, "VoiceGenerator"

    const-string v1, "startVoiceGeneration"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v3, 0x6

    const/16 v4, 0x3e80

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/16 v7, 0xc80

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    return-void
.end method

.method public stopVoiceGeneration()V
    .locals 2

    const-string v0, "VoiceGenerator"

    const-string v1, "stopVoiceGeneration"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    return-void
.end method
