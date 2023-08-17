.class Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/vsf/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->startRecognition(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    const-string v0, "RecognitionEngine"

    const-string v1, "RecognitionListener, onBeginningOfSpeech"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBufferReceived([S)V
    .locals 1

    const-string p1, "RecognitionEngine"

    const-string v0, "RecognitionListener, onBufferReceived"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    const-string v0, "RecognitionEngine"

    const-string v1, "RecognitionListener, onEndOfSpeech"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string p1, "RecognitionEngine"

    const-string v0, "RecognitionListener, onError"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onErrorString(Ljava/lang/String;)V
    .locals 1

    const-string p1, "RecognitionEngine"

    const-string v0, "RecognitionListener, onErrorString"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPartialResults(Ljava/util/Properties;)V
    .locals 1

    const-string p1, "RecognitionEngine"

    const-string v0, "RecognitionListener, onPartialResults"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "RecognitionEngine"

    const-string v0, "RecognitionListener, onReadyForSpeech"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResults(Ljava/util/Properties;)V
    .locals 4

    const-string v0, "RecognitionEngine"

    const-string v1, "RecognitionListener, onResults"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utterance"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\{[^}]*\\} "

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "itn"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResults : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResults time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->a(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;)Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;->a(Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionEngine;)Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionResult;->run()V

    :cond_0
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1

    const-string p1, "RecognitionEngine"

    const-string v0, "RecognitionListener, onRmsChanged"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
