.class Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    iget-object p1, p1, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->this$0:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/SpeechRecognizer;->access$400(Lcom/samsung/vsf/SpeechRecognizer;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, p1}, Lcom/samsung/vsf/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/vsf/RecognitionListener;->onErrorString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-interface {v0, p1}, Lcom/samsung/vsf/RecognitionListener;->onRmsChanged(F)V

    goto :goto_1

    :goto_0
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/samsung/vsf/RecognitionListener;->onError(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Properties;

    invoke-interface {v0, p1}, Lcom/samsung/vsf/RecognitionListener;->onResults(Ljava/util/Properties;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Properties;

    invoke-interface {v0, p1}, Lcom/samsung/vsf/RecognitionListener;->onPartialResults(Ljava/util/Properties;)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {p1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/vsf/RecognitionListener;->onEndOfSpeech()V

    goto :goto_1

    :pswitch_8
    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {p1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/vsf/RecognitionListener;->onBeginningOfSpeech()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
