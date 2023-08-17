.class public Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceRecognizer"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

.field private mRecognitionEngine:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

.field private mRecognitionResult:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

.field private mVoiceGenerator:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "VoiceRecognizer"

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionResult:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;-><init>(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mVoiceGenerator:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionResult:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;-><init>(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mInstance:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mInstance:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mInstance:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;
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
.method public isVoiceRecognizing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    iget-object v0, v0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->CONTINUE_RECOGNITION:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public startVoiceRecognition()V
    .locals 4

    const-string v0, "VoiceRecognizer"

    const-string v1, "startVoiceRecognition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->CONTINUE_RECOGNITION:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mVoiceGenerator:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;->startVoiceGeneration()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->startRecognition(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mVoiceGenerator:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed voice recognition,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopVoiceRecognition()V
    .locals 2

    const-string v0, "VoiceRecognizer"

    const-string v1, "stopVoiceRecognition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->CONTINUE_RECOGNITION:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mVoiceGenerator:Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceGenerator;->stopVoiceGeneration()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/VoiceRecognizer;->mRecognitionEngine:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->stopRecognition()V

    return-void
.end method
