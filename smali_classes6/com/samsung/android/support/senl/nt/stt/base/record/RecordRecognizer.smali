.class public Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordRecognizer"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;


# instance fields
.field private final mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

.field private mSTTRecognizeListener:Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mSTTRecognizeListener:Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getStartRecodingTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->getStartRecordingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->isRecording()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->release()V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setSTTRecognizeListener(Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mSTTRecognizeListener:Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;

    return-void
.end method

.method public startVoiceRecognition()V
    .locals 4

    const-string v0, "RecordRecognizer"

    const-string v1, "startVoiceRecognition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    new-instance v2, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;-><init>(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->setRecognitionListener(Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->startRecognition()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed voice recognition, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopVoiceRecognition()V
    .locals 2

    const-string v0, "RecordRecognizer"

    const-string v1, "stopVoiceRecognition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->stopRecognition()V

    return-void
.end method
