.class Lcom/samsung/vsf/recognition/SamsungCmdHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/vsf/recognition/cmds/SendCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tickcount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/vsf/recognition/SamsungCmdHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 2

    sget-object p1, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel() called in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->clearCancelled()V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->stopRecordingIfRequired()V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public create(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 3

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create() called in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoiceOpenAsync()V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->OPEN:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 2

    sget-object p1, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy() called in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    :cond_0
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->stopRecordingIfRequired()V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    invoke-virtual {p1, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->shutdown()V

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    :cond_1
    return-void
.end method

.method public send(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/samsung/vsf/recognition/cmds/SendCmd;

    sget-object v1, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send() called in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v3}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and detection result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getSpeechDetectionResult()Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->isBufferBeforeEPD()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    const/16 v3, 0x1f4

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getDuration()I

    move-result v4

    div-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->PREPARED:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    const-string v4, "Network error occured"

    if-ne v2, v3, :cond_3

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getAudioBuffer()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoiceSend([B)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For the current instance, first send() called with seqNumber "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getSequenceNumber()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setStartSeqNumber(I)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->SEND:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1, v4}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->notifyCCLError(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    goto/16 :goto_6

    :cond_3
    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v2

    sget-object v5, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->SEND:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    if-ne v2, v5, :cond_a

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getAudioBuffer()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoiceSend([B)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->isBufferBeforeEPD()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->speechTimeLimitExceeded()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getSpeechDetectionResult()Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    move-result-object p1

    sget-object v0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH_END:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "EPD is not yet detected"

    goto :goto_4

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoiceProcess(Z)Z

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->switchInstance()V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoiceOpen()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoicePrepare()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1, v3}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    :goto_3
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->TAG:Ljava/lang/String;

    const-string v1, "send() dumping silence buffer "

    invoke-static {p1, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/vsf/recognition/cmds/SendCmd;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setIsBufferBeforeEPD(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->send(Lcom/samsung/vsf/recognition/Cmd;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->stopRecordingIfRequired()V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    const-string v0, "Network error occurred"

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->notifyCCLError(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    goto :goto_5

    :cond_8
    const-string p1, "SINGLE_SESSION_MODE : do not start next session"

    goto :goto_4

    :cond_9
    const-string p1, "Not a buffer before EPD"

    :goto_4
    invoke-static {v1, p1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_b
    :goto_6
    return-void
.end method

.method public start(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 5

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() called in state  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->START:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    invoke-virtual {v1, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setRecState(Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    const-string v3, "Recording not started in state "

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v1

    sget-object v4, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->OPEN:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->PREPARED:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    if-ne v1, v2, :cond_2

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->startRecordingIfRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->createInstanceIfDestroyed()V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->startRecordingIfRequired()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->createInstanceIfDestroyed()V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoiceOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoicePrepare()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->openNextInstance()V

    :cond_4
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->PREPARED:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    const-string v0, "Network error occurred"

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->notifyCCLError(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->abort()V

    :goto_2
    return-void
.end method

.method public stop(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 3

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() called in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->LAST:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    invoke-virtual {v1, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setRecState(Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->stopRecordingIfRequired()V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->SEND:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    if-ne v1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->svoiceProcess(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->switchInstance()V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Recognizer;->clearAudioQueue()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->mRecognizer:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungCmdHandler;->linkedListB4EPD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method
