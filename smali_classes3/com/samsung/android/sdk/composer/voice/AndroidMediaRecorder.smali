.class public Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;,
        Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;
    }
.end annotation


# static fields
.field private static mWaitTimeForStartRecording:J


# instance fields
.field private final ONE_SECOND:I

.field private final RECORD_TIME_DURATION:J

.field private SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private final TAG:Ljava/lang/String;

.field private mAndroidMediaRecorder:Landroid/media/MediaRecorder;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

.field private mRecordTimeInMilliSecond:I

.field private mRecordTimeInSecond:I

.field private mRecorderAsyncTask:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;

.field private mResultFilePath:Ljava/lang/String;

.field private mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidMediaRecorder"

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mResultFilePath:Ljava/lang/String;

    const-wide/16 v1, 0x32

    iput-wide v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->RECORD_TIME_DURATION:J

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->ONE_SECOND:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecordTimeInSecond:I

    iput v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecordTimeInMilliSecond:I

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;-><init>(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecorderAsyncTask:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$1;-><init>(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$2;-><init>(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mResultFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->startImpl()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->updateTime()V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->startTimer()V

    return-void
.end method

.method public static synthetic access$600(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setWaitTimeForStartRecording(J)V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->updateTimeOnUIThread()V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private pauseTimer()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->cancelTimer()V

    return-void
.end method

.method private printLog(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidMediaRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resumeTimer()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->cancelTimer()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->runTimer()V

    return-void
.end method

.method private runTimer()V
    .locals 7

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$3;-><init>(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x32

    const-wide/16 v5, 0x32

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private static setWaitTimeForStartRecording(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    sput-wide v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mWaitTimeForStartRecording:J

    return-void
.end method

.method private startImpl()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1
.end method

.method private startTimer()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->stopTimer()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->runTimer()V

    return-void
.end method

.method private stopTimer()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->cancelTimer()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecordTimeInSecond:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecordTimeInMilliSecond:I

    return-void
.end method

.method private updateTime()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecordTimeInMilliSecond:I

    int-to-long v0, v0

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecordTimeInMilliSecond:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecordTimeInSecond:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecordTimeInSecond:I

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;->onUpdateTime(I)V

    :cond_0
    return-void
.end method

.method private updateTimeOnUIThread()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$4;-><init>(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static waitForStartRecording()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mWaitTimeForStartRecording:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->waitForStartRecording()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->stopTimer()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    return v1
.end method

.method public getMaxAmplitude()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isPauseSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStarting()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecorderAsyncTask:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->waitForStartRecording()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->isPauseSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x138b

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->toastVoiceMessage(I)V

    return v1

    :cond_1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->pauseTimer()V

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onPaused()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1
.end method

.method public prepare()V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    :cond_0
    return-void
.end method

.method public prepareRecording(Ljava/lang/String;II)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidMediaRecorder"

    const-string v2, "prepareRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    const v1, 0xac44

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setAudioSamplingRate(I)V

    const v1, 0x1f400

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setAudioEncodingBitRate(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setAudioChannels(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setAudioSource(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setOutputFormat(I)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setAudioEncoder(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setMaxDuration(I)V

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setMaxFileSize(J)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_2
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    :cond_0
    return-void
.end method

.method public resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->resumeTimer()V

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onResumed()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1
.end method

.method public setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "setAudioChannels"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :cond_0
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "setAudioEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_0
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "setAudioEncodingBitRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :cond_0
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "setAudioSamplingRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_0
    return-void
.end method

.method public setAudioSource(I)V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "setAudioSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_0
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_0
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "setOutputFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOutputFormat(I)V
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "setOutputFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mAndroidMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :cond_0
    return-void
.end method

.method public setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;II)Z
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->setWaitTimeForStartRecording(J)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mResultFilePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->mRecorderAsyncTask:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;

    iput p3, p1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    iput p4, p1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mMaxFileSize:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->run(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z

    move-result p1

    return p1
.end method

.method public stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2

    const-string v0, "AndroidMediaRecorder"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStopped()V

    const/4 p1, 0x1

    return p1
.end method
