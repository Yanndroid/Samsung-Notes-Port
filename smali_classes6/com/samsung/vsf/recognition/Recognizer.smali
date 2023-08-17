.class public abstract Lcom/samsung/vsf/recognition/Recognizer;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;,
        Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;
    }
.end annotation


# static fields
.field private static final MSG:I = 0x1

.field private static final MSG2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "tickcount::"


# instance fields
.field private mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/samsung/vsf/recognition/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCmdHandler:Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;

.field private mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

.field private mContext:Landroid/content/Context;

.field private mLockObject:Ljava/lang/Object;

.field private mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/vsf/SpeechRecognizer$Config;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/vsf/recognition/Recognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public clearAudioQueue()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/samsung/vsf/recognition/BufferObject;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-direct {v1, v3, v2}, Lcom/samsung/vsf/recognition/BufferObject;-><init>([BZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    return-void
.end method

.method public clearCmds()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public execCommand(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Cmd;->shouldClearQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->clearCmds()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mCmdHandler:Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/Cmd;->execute(Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;)V

    :cond_1
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/vsf/recognition/Cmd;

    const-string v0, "tickcount::"

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/vsf/recognition/Recognizer;->onCmd(Lcom/samsung/vsf/recognition/Cmd;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mCmdHandler:Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognizer execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mCmdHandler:Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/Cmd;->execute(Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;)V

    goto :goto_0

    :cond_0
    const-string p1, "handleMessage: cmd is null!"

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyEndOfSpeech()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsSpeechDetectionNotificationRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer notifyEndOfSpeech() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onSpeechEnded()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/vsf/recognition/cmds/StopCmd;

    invoke-direct {v0}, Lcom/samsung/vsf/recognition/cmds/StopCmd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/vsf/recognition/Recognizer;->postCommand(Lcom/samsung/vsf/recognition/Cmd;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer notifyError() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1, p1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onError(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyErrorString(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer notifyErrorString() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1, p1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onErrorString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1, p1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onError(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyPartialResult(Ljava/util/Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer notifyPartialResult() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1, p1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onPartialResult(Ljava/util/Properties;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyRMSresult(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer notifyRMSresult() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1, p1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onRMSresult(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyReadyForSpeech(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsSpeechDetectionNotificationRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer notifyReadyForSpeech() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1, p1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onReadyForSpeech(Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyRecordedBuffer([S)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer notifyRecordedBuffer() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1, p1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onBufferReceived([S)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyResult(Ljava/util/Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer onResult() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1, p1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onResult(Ljava/util/Properties;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyStartOfSpeech()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsSpeechDetectionNotificationRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    if-eqz v1, :cond_0

    const-string v1, "tickcount::"

    const-string v2, "Recognizer notifyStartOfSpeech() "

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    invoke-interface {v1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onSpeechStarted()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCmd(Lcom/samsung/vsf/recognition/Cmd;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public postCommand(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Cmd;->shouldClearQueue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->clearCmds()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postCommand2(Lcom/samsung/vsf/recognition/Cmd;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Cmd;->shouldClearQueue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->clearCmds()V

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueBuffer(Lcom/samsung/vsf/recognition/BufferObject;)V
    .locals 2

    const-string v0, "tickcount::"

    const-string v1, "Enqueue audio buffer"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public readAudioBuffer()Lcom/samsung/vsf/recognition/BufferObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vsf/recognition/BufferObject;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setCmdHandler(Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mCmdHandler:Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;

    return-void
.end method

.method public setResponseHandler(Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    return-void
.end method

.method public shutdown()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/Recognizer;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;->onDestroy()V

    iput-object v2, p0, Lcom/samsung/vsf/recognition/Recognizer;->mResponseHandler:Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/samsung/vsf/recognition/Recognizer;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsung/vsf/recognition/Recognizer;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v2, p0, Lcom/samsung/vsf/recognition/Recognizer;->mCmdHandler:Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
