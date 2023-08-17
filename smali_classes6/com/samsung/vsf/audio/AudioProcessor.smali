.class public Lcom/samsung/vsf/audio/AudioProcessor;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;
    }
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPE_OPUS:Ljava/lang/String; = "audio/x-opus-with-header-byte"

.field private static final AUDIO_MIME_TYPE_RAW:Ljava/lang/String; = "audio/raw"

.field private static final AUDIO_MIME_TYPE_SPEEX:Ljava/lang/String; = "audio/x-speex-with-header-byte"

.field private static final AUDIO_MIME_TYPE_WAV:Ljava/lang/String; = "audio/wav"

.field private static DUMP_OPUS:Z = false

.field private static DUMP_PCM:Z = false

.field private static final DUMP_ROOT:Ljava/lang/String; = "audio_dumps_svoice_sdk"

.field private static DUMP_SPEEX:Z = false

.field private static DUMP_WAVE:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioProcessor"

.field private static sCountPCM:I


# instance fields
.field private isInitDone:Z

.field private isPCMInjectionEnabled:Z

.field private mAudioDumper:Lcom/samsung/vsf/audio/AudioDumper;

.field private mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

.field private mDRC:Lcom/sec/vsg/voiceframework/DynamicRangeControl;

.field private mDumpEnable:Z

.field private mEncoder:Lcom/samsung/vsf/audio/IAudioEncoder;

.field private mEpd:Lcom/sec/vsg/voiceframework/EndPointDetector;

.field private mNs:Lcom/sec/vsg/voiceframework/NoiseReduction;

.field private mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

.field private mReleaseHandler:Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;

.field private mRun:Z

.field private volatile mSeqNumber:I

.field private mSilenceTot:I

.field private mSpeechTot:I

.field private final mWaitObject:Ljava/lang/Object;

.field private pcmDumper:Lcom/samsung/vsf/audio/PcmDump;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/vsf/audio/AudioProcessorConfig;Lcom/samsung/vsf/recognition/Recognizer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->isPCMInjectionEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEpd:Lcom/sec/vsg/voiceframework/EndPointDetector;

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mNs:Lcom/sec/vsg/voiceframework/NoiseReduction;

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mDRC:Lcom/sec/vsg/voiceframework/DynamicRangeControl;

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mReleaseHandler:Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mWaitObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    iput-object p2, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    iput-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->isInitDone:Z

    new-instance p1, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;

    invoke-direct {p1, p0, v1}, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;-><init>(Lcom/samsung/vsf/audio/AudioProcessor;Lcom/samsung/vsf/audio/AudioProcessor$1;)V

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mReleaseHandler:Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mReleaseHandler:Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config details: isrecordingAtSDK: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformRecording()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEPDAtSDK: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformSpeechDetection()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEncoding: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformEncoding()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AudioProcessor"

    invoke-static {v1, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSeqNumber:I

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformRecording()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformSpeechDetection()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformEncoding()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->isDumpRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mDumpEnable:Z

    invoke-virtual {p2}, Lcom/samsung/vsf/recognition/Recognizer;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "eng"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_PCM:Z

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getEncodingType()I

    move-result p1

    iget-boolean p2, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mDumpEnable:Z

    if-eqz p2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    sput-boolean v2, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_SPEEX:Z

    if-eqz p2, :cond_3

    if-ne p1, v3, :cond_3

    move v0, v3

    :cond_3
    sput-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_OPUS:Z

    goto :goto_2

    :cond_4
    const-string p1, "Write external storage permission is denied"

    invoke-static {v1, p1}, Lcom/samsung/vsf/util/SVoiceLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DUMP Flag : DUMP_PCM "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_PCM:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " DUMP_SPEEX "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_SPEEX:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " DUMP_OPUS "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_OPUS:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_PCM:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_SPEEX:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_WAVE:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_OPUS:Z

    if-eqz p1, :cond_6

    :cond_5
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    const-string v0, "audio_dumps_svoice_sdk"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_6
    sget-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_WAVE:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_SPEEX:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_OPUS:Z

    if-eqz p1, :cond_8

    :cond_7
    new-instance p1, Lcom/samsung/vsf/audio/AudioDumper;

    iget-object p2, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {p2}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSamplingRate()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/samsung/vsf/audio/AudioDumper;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mAudioDumper:Lcom/samsung/vsf/audio/AudioDumper;

    :cond_8
    sget-boolean p1, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_PCM:Z

    if-eqz p1, :cond_9

    new-instance p1, Lcom/samsung/vsf/audio/PcmDump;

    invoke-direct {p1}, Lcom/samsung/vsf/audio/PcmDump;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->pcmDumper:Lcom/samsung/vsf/audio/PcmDump;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "audio_dumps_svoice_sdk/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/vsf/audio/AudioProcessor;->sCountPCM:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".pcm"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/vsf/audio/PcmDump;->openFile(Ljava/lang/String;)V

    sget p1, Lcom/samsung/vsf/audio/AudioProcessor;->sCountPCM:I

    add-int/2addr p1, v3

    sput p1, Lcom/samsung/vsf/audio/AudioProcessor;->sCountPCM:I

    :cond_9
    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/vsf/audio/AudioProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRun:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/samsung/vsf/audio/AudioProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRun:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/samsung/vsf/audio/AudioProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->isInitDone:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/samsung/vsf/audio/AudioProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->isInitDone:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/IAudioEncoder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEncoder:Lcom/samsung/vsf/audio/IAudioEncoder;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/samsung/vsf/audio/AudioProcessor;Lcom/samsung/vsf/audio/IAudioEncoder;)Lcom/samsung/vsf/audio/IAudioEncoder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEncoder:Lcom/samsung/vsf/audio/IAudioEncoder;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/samsung/vsf/audio/AudioProcessor;Lcom/samsung/vsf/recognition/Recognizer;)Lcom/samsung/vsf/recognition/Recognizer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    return-object p1
.end method

.method private declared-synchronized destroySpeechDetector()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioProcessor"

    const-string v1, "destroySpeechDetector"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEpd:Lcom/sec/vsg/voiceframework/EndPointDetector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/vsg/voiceframework/EndPointDetector;->destroy()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEpd:Lcom/sec/vsg/voiceframework/EndPointDetector;

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mNs:Lcom/sec/vsg/voiceframework/NoiseReduction;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/vsg/voiceframework/NoiseReduction;->destroy()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mNs:Lcom/sec/vsg/voiceframework/NoiseReduction;

    :cond_1
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mDRC:Lcom/sec/vsg/voiceframework/DynamicRangeControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->destroy()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mDRC:Lcom/sec/vsg/voiceframework/DynamicRangeControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSpeechDetector(I)V
    .locals 3

    const-string v0, "AudioProcessor"

    const-string v1, "Initializing NoiseReduction with AudioFormat.CHANNEL_IN_MONO by default!"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mNs:Lcom/sec/vsg/voiceframework/NoiseReduction;

    const/16 v1, 0x10

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/vsg/voiceframework/NoiseReduction;

    sget-object v2, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->DEFAULT:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/vsg/voiceframework/NoiseReduction;-><init>(Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;II)V

    iput-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mNs:Lcom/sec/vsg/voiceframework/NoiseReduction;

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEpd:Lcom/sec/vsg/voiceframework/EndPointDetector;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/vsg/voiceframework/EndPointDetector;

    sget-object v2, Lcom/sec/vsg/voiceframework/EndPointDetector$Mode;->DEFAULT:Lcom/sec/vsg/voiceframework/EndPointDetector$Mode;

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/vsg/voiceframework/EndPointDetector;-><init>(Lcom/sec/vsg/voiceframework/EndPointDetector$Mode;II)V

    iput-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEpd:Lcom/sec/vsg/voiceframework/EndPointDetector;

    invoke-virtual {v0}, Lcom/sec/vsg/voiceframework/EndPointDetector;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mDRC:Lcom/sec/vsg/voiceframework/DynamicRangeControl;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;

    sget-object v2, Lcom/sec/vsg/voiceframework/DynamicRangeControl$Mode;->DEFAULT:Lcom/sec/vsg/voiceframework/DynamicRangeControl$Mode;

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/vsg/voiceframework/DynamicRangeControl;-><init>(Lcom/sec/vsg/voiceframework/DynamicRangeControl$Mode;II)V

    iput-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mDRC:Lcom/sec/vsg/voiceframework/DynamicRangeControl;

    :cond_2
    return-void
.end method

.method private sizeToDuration(I)I
    .locals 1

    mul-int/lit16 p1, p1, 0x3e8

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSamplingRate()I

    move-result v0

    div-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public exit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRun:Z

    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getEncodingType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "audio/raw"

    return-object v0

    :cond_0
    const-string v0, "audio/wav"

    return-object v0

    :cond_1
    const-string v0, "audio/x-speex-with-header-byte"

    return-object v0

    :cond_2
    const-string v0, "audio/x-opus-with-header-byte"

    return-object v0
.end method

.method public init()V
    .locals 2

    const-string v0, "AudioProcessor"

    const-string v1, "Audio Processor init()"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    iput v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    iput v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    const-string v0, "AudioProcessor"

    const-string v1, "Reset AudioProcessor : destroySpeechDetector"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/vsf/audio/AudioProcessor;->destroySpeechDetector()V

    return-void
.end method

.method public run()V
    .locals 10

    const-string v0, "AudioProcessor"

    const-string v1, "AudioProcessor thread started"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->isInitDone:Z

    if-nez v0, :cond_0

    const-string v0, "AudioProcessor"

    const-string v1, "init is not complete yet. Hence, wait.."

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mWaitObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mWaitObject:Ljava/lang/Object;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRun:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformSpeechDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSamplingRate()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/audio/AudioProcessor;->initSpeechDetector(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/Recognizer;->readAudioBuffer()Lcom/samsung/vsf/recognition/BufferObject;

    move-result-object v0

    const-string v3, "AudioProcessor"

    const-string v4, "AudioProcessor Read Buffer "

    invoke-static {v3, v4}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/BufferObject;->getByteBuffer()[B

    move-result-object v3

    if-eqz v3, :cond_19

    array-length v4, v3

    if-lez v4, :cond_19

    iget v4, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSeqNumber:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSeqNumber:I

    new-instance v4, Lcom/samsung/vsf/recognition/cmds/SendCmd;

    iget v6, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSeqNumber:I

    invoke-direct {v4, v6}, Lcom/samsung/vsf/recognition/cmds/SendCmd;-><init>(I)V

    const-string v6, "AudioProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SendCmd object created with sequenceNumber "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSeqNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v6}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformSpeechDetection()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/BufferObject;->isEPDDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH_END:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    goto :goto_4

    :cond_2
    sget-object v0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    :goto_4
    invoke-virtual {v4, v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setSpeechDetectionResult(Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;)V

    :cond_3
    array-length v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/vsf/audio/AudioProcessor;->sizeToDuration(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setDuration(I)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformNS()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformSpeechDetection()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformRMSComputation()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformEncoding()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_4
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v1, v3

    div-int/lit8 v1, v1, 0x2

    new-array v6, v1, [S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformSpeechDetection()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "AudioProcessor"

    const-string v7, "AudioProcessor Will detect speech now"

    invoke-static {v0, v7}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iget-object v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mNs:Lcom/sec/vsg/voiceframework/NoiseReduction;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v6, v1}, Lcom/sec/vsg/voiceframework/NoiseReduction;->process([SI)I

    goto :goto_5

    :cond_5
    const-string v7, "AudioProcessor"

    const-string v8, "NS library is already destroyed"

    invoke-static {v7, v8}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEpd:Lcom/sec/vsg/voiceframework/EndPointDetector;

    if-eqz v7, :cond_6

    invoke-virtual {v7, v6, v1}, Lcom/sec/vsg/voiceframework/EndPointDetector;->process([SI)I

    move-result v0

    goto :goto_6

    :cond_6
    const-string v7, "AudioProcessor"

    const-string v8, "EPD library is already destroyed"

    invoke-static {v7, v8}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const-string v7, "AudioProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioProcessor detected speech "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_b

    iget v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    invoke-direct {p0, v1}, Lcom/samsung/vsf/audio/AudioProcessor;->sizeToDuration(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    const-string v7, "AudioProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioProcessor silence detected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    iget-object v8, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v8}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSPDThresholdDuration()I

    move-result v8

    if-le v7, v8, :cond_7

    iget v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    iget-object v8, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v8}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getEPDThresholdDuration()I

    move-result v8

    if-ge v7, v8, :cond_7

    sget-object v7, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    :goto_7
    invoke-virtual {v4, v7}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setSpeechDetectionResult(Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;)V

    goto :goto_9

    :cond_7
    iget v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    if-nez v7, :cond_8

    iget v8, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    const/16 v9, 0x1388

    if-ge v8, v9, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v8}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSPDThresholdDuration()I

    move-result v8

    if-le v7, v8, :cond_a

    iget v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    iget-object v8, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v8}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getEPDThresholdDuration()I

    move-result v8

    if-lt v7, v8, :cond_a

    :cond_9
    sget-object v7, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH_END:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    invoke-virtual {v4, v7}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setSpeechDetectionResult(Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;)V

    iget-object v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {v7}, Lcom/samsung/vsf/recognition/Recognizer;->notifyEndOfSpeech()V

    iput v2, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    iput v2, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    const-string v7, "AudioProcessor"

    const-string v8, "EPD happened : destroySpeechDetector"

    invoke-static {v7, v8}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/vsf/audio/AudioProcessor;->destroySpeechDetector()V

    goto :goto_9

    :cond_a
    sget-object v7, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->NONE:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    goto :goto_7

    :cond_b
    if-ne v0, v5, :cond_d

    iget v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    iget-object v8, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v8}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSPDThresholdDuration()I

    move-result v8

    if-le v7, v8, :cond_c

    sget-object v7, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    invoke-virtual {v4, v7}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setSpeechDetectionResult(Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;)V

    goto :goto_8

    :cond_c
    sget-object v7, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH_START:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    invoke-virtual {v4, v7}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setSpeechDetectionResult(Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;)V

    iget-object v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {v7}, Lcom/samsung/vsf/recognition/Recognizer;->notifyStartOfSpeech()V

    :goto_8
    iget v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    invoke-direct {p0, v1}, Lcom/samsung/vsf/audio/AudioProcessor;->sizeToDuration(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSpeechTot:I

    iput v2, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mSilenceTot:I

    goto :goto_9

    :cond_d
    const-string v7, "AudioProcessor"

    const-string v8, "EPD is neither silence nor speech"

    invoke-static {v7, v8}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    const-string v7, "AudioProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Speech Detection Result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getSpeechDetectionResult()Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", detectionResult::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformDRC()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mDRC:Lcom/sec/vsg/voiceframework/DynamicRangeControl;

    invoke-virtual {v0, v6, v1}, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->process([SI)I

    :cond_f
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformRMSComputation()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getSamplingRate()I

    move-result v0

    const/16 v7, 0x10

    invoke-static {v6, v1, v0, v7}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->computeEnergy([SIII)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setRMSValue(I)V

    iget-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {v1, v0}, Lcom/samsung/vsf/recognition/Recognizer;->notifyRMSresult(I)V

    :cond_10
    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->isPCMInjectionEnabled:Z

    if-eqz v0, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v4}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->getSpeechDetectionResult()Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    move-result-object v0

    sget-object v1, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH_END:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    if-ne v0, v1, :cond_12

    move v2, v5

    :cond_12
    :goto_a
    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_WAVE:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mAudioDumper:Lcom/samsung/vsf/audio/AudioDumper;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v3, v2}, Lcom/samsung/vsf/audio/AudioDumper;->dumpWave([BZ)V

    :cond_13
    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_SPEEX:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mAudioDumper:Lcom/samsung/vsf/audio/AudioDumper;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v3, v2}, Lcom/samsung/vsf/audio/AudioDumper;->dumpSpeex([BZ)V

    :cond_14
    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_OPUS:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mAudioDumper:Lcom/samsung/vsf/audio/AudioDumper;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v3, v2}, Lcom/samsung/vsf/audio/AudioDumper;->dumpOpus([BZ)V

    :cond_15
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformEncoding()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mEncoder:Lcom/samsung/vsf/audio/IAudioEncoder;

    invoke-interface {v0, v6}, Lcom/samsung/vsf/audio/IAudioEncoder;->encodeAudio([S)[B

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    :cond_16
    move-object v1, v3

    :goto_b
    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_PCM:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->pcmDumper:Lcom/samsung/vsf/audio/PcmDump;

    invoke-virtual {v0, v3}, Lcom/samsung/vsf/audio/PcmDump;->writeData([B)V

    :cond_17
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformRecording()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mConfig:Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->isRecordedBufferRequired()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {v0, v6}, Lcom/samsung/vsf/recognition/Recognizer;->notifyRecordedBuffer([S)V

    :cond_18
    invoke-virtual {v4, v1}, Lcom/samsung/vsf/recognition/cmds/SendCmd;->setBuffer([B)V

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mRecognizer:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v4}, Lcom/samsung/vsf/recognition/Recognizer;->postCommand(Lcom/samsung/vsf/recognition/Cmd;)V

    :cond_19
    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->isPCMInjectionEnabled:Z

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_WAVE:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_SPEEX:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_OPUS:Z

    if-eqz v0, :cond_0

    :cond_1a
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mAudioDumper:Lcom/samsung/vsf/audio/AudioDumper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioDumper;->close()V

    goto/16 :goto_3

    :cond_1b
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mReleaseHandler:Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;

    if-eqz v0, :cond_1c

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1c
    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_PCM:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->pcmDumper:Lcom/samsung/vsf/audio/PcmDump;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/PcmDump;->closeFile()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->pcmDumper:Lcom/samsung/vsf/audio/PcmDump;

    :cond_1d
    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_WAVE:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_SPEEX:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/samsung/vsf/audio/AudioProcessor;->DUMP_OPUS:Z

    if-eqz v0, :cond_1f

    :cond_1e
    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mAudioDumper:Lcom/samsung/vsf/audio/AudioDumper;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioDumper;->close()V

    iput-object v1, p0, Lcom/samsung/vsf/audio/AudioProcessor;->mAudioDumper:Lcom/samsung/vsf/audio/AudioDumper;

    :cond_1f
    const-string v0, "AudioProcessor"

    const-string v1, "AudioProcessor thread exiting"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
