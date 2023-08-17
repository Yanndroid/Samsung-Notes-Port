.class public Lcom/samsung/android/spen/libse/SeMediaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;,
        Lcom/samsung/android/spen/libse/SeMediaRecorder$RecorderTaskState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMediaRecorder"

.field private static final mMaxWaitTime:J = 0x3e8L

.field private static mWaitTimeForStartRecording:J


# instance fields
.field private SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

.field private mRecorderAsyncTask:Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;

.field private mResultFilePath:Ljava/lang/String;

.field public mSepMediaRecorder:Landroid/media/MediaRecorder;

.field private mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;-><init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mRecorderAsyncTask:Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mResultFilePath:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;-><init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    new-instance v1, Lcom/samsung/android/spen/libse/SeMediaRecorder$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder$2;-><init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mResultFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->startImpl()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$400(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setWaitTimeForStartRecording(J)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-object p0
.end method

.method public static isRecorderWorking()Z
    .locals 5

    const-string v0, "SemMediaRecorder"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.media.MediaRecorder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "semIsRecording"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    const-string v2, "Exception"

    goto :goto_0

    :catch_1
    const-string v2, "NoSuchMethodException"

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private printLog(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemMediaRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDurationInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    :cond_0
    return-void
.end method

.method private static setWaitTimeForStartRecording(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    sput-wide v0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mWaitTimeForStartRecording:J

    return-void
.end method

.method private startImpl()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

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

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1
.end method

.method private static waitForStartRecording()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mWaitTimeForStartRecording:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v2, v0

    :cond_0
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->waitForStartRecording()V

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    return v1
.end method

.method public getMaxAmplitude()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isPauseSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStarting()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mRecorderAsyncTask:Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;

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
    .locals 2

    invoke-static {}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->waitForStartRecording()V

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onPaused()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1
.end method

.method public prepare()V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    :cond_0
    return-void
.end method

.method public prepareRecording(Ljava/lang/String;II)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SemMediaRecorder"

    const-string v2, "prepareRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    const v1, 0xac44

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioSamplingRate(I)V

    const v1, 0x1f400

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioEncodingBitRate(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioChannels(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioSource(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setOutputFormat(I)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioEncoder(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setMaxDuration(I)V

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setMaxFileSize(J)V

    const/16 p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setDurationInterval(I)V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_2
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    :cond_0
    return-void
.end method

.method public resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onResumed()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1
.end method

.method public setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "setAudioChannels"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :cond_0
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "setAudioEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_0
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "setAudioEncodingBitRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :cond_0
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "setAudioSamplingRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_0
    return-void
.end method

.method public setAudioSource(I)V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "setAudioSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_0
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_0
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "setOutputFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOutputFormat(I)V
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "setOutputFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :cond_0
    return-void
.end method

.method public setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;II)Z
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setWaitTimeForStartRecording(J)V

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mResultFilePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mRecorderAsyncTask:Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;

    iput p3, p1, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    iput p4, p1, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mMaxFileSize:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->run(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z

    move-result p1

    return p1
.end method

.method public stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2

    const-string v0, "SemMediaRecorder"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->waitForStartRecording()V

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStopped()V

    return v1
.end method
