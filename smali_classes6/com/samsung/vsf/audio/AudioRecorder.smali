.class public Lcom/samsung/vsf/audio/AudioRecorder;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_SOURCE:I = 0x6

.field private static final BUFFER_SIZE:I = 0x1900

.field private static final CHANNEL_CONFIG:I = 0x10

.field private static final READ_BLOCK_SIZE:I = 0xc80

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "AudioRecorder"

.field private static final WAIT_TIME:I = 0x64


# instance fields
.field private isRecording:Z

.field private final mLockObject:Ljava/lang/Object;

.field private mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRun:Z


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/recognition/Recognizer;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    new-instance p1, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x1900

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->isRecording:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method private performRecording()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "AudioRecorder"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    const-string v0, "Recording Started"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xc80

    new-array v1, v0, [B

    iget-object v4, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4, v1, v3, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    new-instance v4, Lcom/samsung/vsf/recognition/BufferObject;

    invoke-direct {v4, v1, v3}, Lcom/samsung/vsf/recognition/BufferObject;-><init>([BZ)V

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/samsung/vsf/recognition/Recognizer;->queueBuffer(Lcom/samsung/vsf/recognition/BufferObject;)V

    goto :goto_1

    :cond_1
    const-string v0, "mRecognizer is null"

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "Recording Stoppped"

    invoke-static {v2, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iput-boolean v3, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    const-string v0, "Failed to startRecording"

    invoke-static {v2, v0}, Lcom/samsung/vsf/util/SVoiceLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public isRecording()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecording : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecorder"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    return v0
.end method

.method public run()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->isRecording:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/vsf/audio/AudioRecorder;->performRecording()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method public shutdown()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->isRecording:Z

    iput-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startRecording()Z
    .locals 4

    const-string v0, "AudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v0, "AudioRecorder"

    const-string v1, "Recording not started"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "AudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    return v0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public stopRecording()V
    .locals 2

    const-string v0, "AudioRecorder"

    const-string v1, "Stopping the recorder"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mRun:Z

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioRecorder;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
