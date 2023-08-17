.class Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_CHANNEL:I = 0x10

.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_SAMPLE_RATE:I = 0x3e80

.field private static final AUDIO_SOURCE:I = 0x1

.field private static final BUFFER_SIZE:I = 0x140

.field private static final TAG:Ljava/lang/String; = "RecognitionEngine"


# instance fields
.field private mAudioRecorder:Landroid/media/AudioRecord;

.field private mConfig:Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mInputStream:Ljava/io/InputStream;

.field private mIsRecording:Z

.field private mLocale:Ljava/util/Locale;

.field private mOutputStream:Ljava/io/PipedOutputStream;

.field private mRecognitionListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

.field private mRecognizer:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

.field private mStartRecordingTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mIsRecording:Z

    const-string v0, "RecognitionEngine"

    const-string v1, "Record Engine Constructor"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mAudioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mIsRecording:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Ljava/io/PipedOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mOutputStream:Ljava/io/PipedOutputStream;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mIsRecording:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mStartRecordingTime:J

    return-void
.end method

.method private init()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mIsRecording:Z

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mAudioRecorder:Landroid/media/AudioRecord;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mRecognitionListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getSpeechRecognizer(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mRecognizer:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->init()V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->setLocale(Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->LOCAL:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->setType(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enableAudioCompression(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enablePartialResult(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->build()Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mConfig:Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

    return-void
.end method

.method private startAudioRecorder()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "RecognitionEngine"

    if-eqz v0, :cond_0

    const-string v0, "startAudioRecorder: checkSelfPermission RECORD_AUDIO NOT GRANTED"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v3, 0x1

    const/16 v4, 0x3e80

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/16 v7, 0x140

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mAudioRecorder:Landroid/media/AudioRecord;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;-><init>(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getStartRecordingTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mStartRecordingTime:J

    return-wide v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mIsRecording:Z

    return v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mRecognizer:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mRecognizer:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mAudioRecorder:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public setRecognitionListener(Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mRecognitionListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    return-void
.end method

.method public startRecognition()V
    .locals 4

    const-string v0, "RecognitionEngine"

    const-string v1, "startRecognition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->init()V

    :try_start_0
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mOutputStream:Ljava/io/PipedOutputStream;

    new-instance v1, Ljava/io/PipedInputStream;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mOutputStream:Ljava/io/PipedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mInputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->startAudioRecorder()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mRecognizer:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mConfig:Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->start(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecognition error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopRecognition()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mIsRecording:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    return-void
.end method
