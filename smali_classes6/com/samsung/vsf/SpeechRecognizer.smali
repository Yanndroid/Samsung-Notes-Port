.class public final Lcom/samsung/vsf/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;,
        Lcom/samsung/vsf/SpeechRecognizer$CancelTask;,
        Lcom/samsung/vsf/SpeechRecognizer$Config;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "tickcount"

.field private static final TAGL:Ljava/lang/String; = "ASRProfiling"


# instance fields
.field private mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

.field private mContext:Landroid/content/Context;

.field private mRecognitionLooper:Landroid/os/Looper;

.field private mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

.field private mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tickcount"

    const-string v1, "SamsungSpeechRecognizer : SpeechRecognizer()"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Recognizer Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognitionLooper:Landroid/os/Looper;

    new-instance v0, Lcom/samsung/vsf/recognition/SamsungRecognizer;

    iget-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognitionLooper:Landroid/os/Looper;

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/vsf/SpeechRecognizer$Config;)V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    new-instance p1, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;-><init>(Lcom/samsung/vsf/SpeechRecognizer;Lcom/samsung/vsf/SpeechRecognizer$1;)V

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    iget-object p2, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {p2, p1}, Lcom/samsung/vsf/recognition/Recognizer;->setResponseHandler(Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    new-instance p2, Lcom/samsung/vsf/recognition/cmds/CreateCmd;

    invoke-direct {p2}, Lcom/samsung/vsf/recognition/cmds/CreateCmd;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/vsf/recognition/Recognizer;->postCommand(Lcom/samsung/vsf/recognition/Cmd;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/vsf/SpeechRecognizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/SpeechRecognizer;->destroyThread()V

    return-void
.end method

.method private static checkIsCalledFromMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SpeechRecognizer should be used only from the application\'s main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)Lcom/samsung/vsf/SpeechRecognizer;
    .locals 2

    const-string v0, "tickcount"

    const-string v1, "SamsungSpeechRecognizer : createSpeechRecognizer"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/vsf/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/vsf/SpeechRecognizer;-><init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V

    return-object v0
.end method

.method private destroyThread()V
    .locals 2

    const-string v0, "tickcount"

    const-string v1, "SamsungSpeechRecognizer : onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognitionLooper:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iput-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognitionLooper:Landroid/os/Looper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$102(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Lcom/samsung/vsf/RecognitionListener;)Lcom/samsung/vsf/RecognitionListener;

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0, v1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$302(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Landroid/os/Handler;)Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    :cond_1
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    return-void
.end method


# virtual methods
.method public cancelRecognition()V
    .locals 3

    const-string v0, "tickcount"

    const-string v1, "SamsungSpeechRecognizer : cancelRecognition"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/vsf/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;-><init>(Lcom/samsung/vsf/SpeechRecognizer$1;)V

    invoke-virtual {v1, v0}, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->setRecognizer(Lcom/samsung/vsf/recognition/Recognizer;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "tickcount"

    const-string v1, "SamsungSpeechRecognizer : destroy"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/vsf/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/vsf/recognition/cmds/DestroyCmd;

    invoke-direct {v1}, Lcom/samsung/vsf/recognition/cmds/DestroyCmd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/recognition/Recognizer;->postCommand2(Lcom/samsung/vsf/recognition/Cmd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    :cond_0
    return-void
.end method

.method public registerPDSSCallbacks(Lcom/samsung/vsf/util/PLMUtils$PdssCallbacks;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/vsf/util/PLMUtils;->registerPdssCallback(Lcom/samsung/vsf/util/PLMUtils$PdssCallbacks;)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/vsf/util/PLMUtils;->registerPdssReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public requestServerDataWipe()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/vsf/util/PLMUtils;->requestPLMWipe(Landroid/content/Context;)V

    return-void
.end method

.method public sendAudio([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/vsf/SpeechRecognizer;->sendAudio([BZ)V

    return-void
.end method

.method public sendAudio([BZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendAudio - length is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickcount"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/vsf/recognition/BufferObject;

    invoke-direct {v0, p1, p2}, Lcom/samsung/vsf/recognition/BufferObject;-><init>([BZ)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/Recognizer;->queueBuffer(Lcom/samsung/vsf/recognition/BufferObject;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/vsf/RecognitionListener;)V
    .locals 2

    const-string v0, "tickcount"

    const-string v1, "SamsungSpeechRecognizer : setListener()"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/vsf/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0, p1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$102(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Lcom/samsung/vsf/RecognitionListener;)Lcom/samsung/vsf/RecognitionListener;

    return-void
.end method

.method public startListening()V
    .locals 3

    const-string v0, "tickcount"

    const-string v1, "SamsungSpeechRecognizer : startListening()"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TEST_PLATFORM: SPEAK_NOW"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startListening() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRProfiling"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/vsf/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/vsf/recognition/cmds/StartCmd;

    invoke-direct {v1}, Lcom/samsung/vsf/recognition/cmds/StartCmd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/recognition/Recognizer;->postCommand(Lcom/samsung/vsf/recognition/Cmd;)V

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    const-string v0, "tickcount"

    const-string v1, "SamsungSpeechRecognizer : stopListening()"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopListening() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRProfiling"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/vsf/SpeechRecognizer;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/vsf/recognition/cmds/StopCmd;

    invoke-direct {v1}, Lcom/samsung/vsf/recognition/cmds/StopCmd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/recognition/Recognizer;->postCommand(Lcom/samsung/vsf/recognition/Cmd;)V

    :cond_0
    return-void
.end method

.method public unregisterPDSSCallbacks()V
    .locals 1

    invoke-static {}, Lcom/samsung/vsf/util/PLMUtils;->unregisterPdssCallback()V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/vsf/util/PLMUtils;->unregisterPdssReceiver(Landroid/content/Context;)V

    return-void
.end method
