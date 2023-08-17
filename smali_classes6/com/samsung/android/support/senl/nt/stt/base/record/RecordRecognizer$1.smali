.class Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->startVoiceRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recognitionListener onError: code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " message: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "RecordRecognizer"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPartialResults(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;

    move-result-object v0

    const-string v1, "timing_info"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;->onPartialResults(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResults(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;)Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;

    move-result-object v0

    const-string v1, "timing_info"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;->onResults(Ljava/lang/String;[I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->release()V

    return-void
.end method
