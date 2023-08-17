.class Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalResponseHandler"
.end annotation


# static fields
.field private static final MSG_DESTROY:I = 0x9

.field private static final MSG_ERROR:I = 0x5

.field private static final MSG_ERROR_TXT:I = 0x7

.field private static final MSG_ERROR_WAIT:I = 0xa

.field private static final MSG_FINAL_RESULT:I = 0x4

.field private static final MSG_PARTIAL_RESULT:I = 0x3

.field private static final MSG_RMS:I = 0x6

.field private static final MSG_SPEECH_ENDED:I = 0x2

.field private static final MSG_SPEECH_READY:I = 0x8

.field private static final MSG_SPEECH_STARTED:I = 0x1


# instance fields
.field private final ERROR_DELAY:I

.field private client:Lcom/samsung/vsf/RecognitionListener;

.field private mInternalHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/samsung/vsf/SpeechRecognizer;


# direct methods
.method private constructor <init>(Lcom/samsung/vsf/SpeechRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->this$0:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xbb8

    iput p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->ERROR_DELAY:I

    new-instance p1, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;

    invoke-direct {p1, p0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;-><init>(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)V

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/vsf/SpeechRecognizer;Lcom/samsung/vsf/SpeechRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;-><init>(Lcom/samsung/vsf/SpeechRecognizer;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Lcom/samsung/vsf/RecognitionListener;)Lcom/samsung/vsf/RecognitionListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method public onBufferReceived([S)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/vsf/RecognitionListener;->onBufferReceived([S)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RAVISH"

    const-string v2, "sendError"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onErrorString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPartialResult(Ljava/util/Properties;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onRMSresult(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onResult(Ljava/util/Properties;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onSpeechEnded()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onSpeechStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
