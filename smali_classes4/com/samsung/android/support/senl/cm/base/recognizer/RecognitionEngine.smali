.class public Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOCALE:Ljava/lang/String; = "ko-KR"

.field private static final RPC_TIMEOUT:I = 0x2bf20

.field private static final TAG:Ljava/lang/String; = "RecognitionEngine"


# instance fields
.field private mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

.field private mRecognitionResult:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

.field private mSpeechRecognizer:Lcom/samsung/vsf/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RecognitionEngine"

    invoke-static {v0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mRecognitionResult:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;)Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mRecognitionResult:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "RecognitionEngine"

    const-string v1, "run recognition - begin"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    iget-object v1, v1, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->CONTINUE_RECOGNITION:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mRecognitionData:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->get()[B

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mSpeechRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v2, v1}, Lcom/samsung/vsf/SpeechRecognizer;->sendAudio([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed recognition,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "run recognition - end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startRecognition(Landroid/content/Context;)V
    .locals 2

    const-string v0, "RecognitionEngine"

    const-string v1, "startRecognition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-direct {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;-><init>()V

    const-string v1, "ko-KR"

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setLocale(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setEncodingType(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    const v1, 0x2bf20

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setRPCTimeout(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/vsf/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)Lcom/samsung/vsf/SpeechRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mSpeechRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine$1;-><init>(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;)V

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/SpeechRecognizer;->setListener(Lcom/samsung/vsf/RecognitionListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mSpeechRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/SpeechRecognizer;->startListening()V

    return-void
.end method

.method public stopRecognition()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mSpeechRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->mSpeechRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SpeechRecognizer;->setListener(Lcom/samsung/vsf/RecognitionListener;)V

    return-void
.end method
