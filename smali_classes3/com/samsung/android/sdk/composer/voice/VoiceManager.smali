.class public Lcom/samsung/android/sdk/composer/voice/VoiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_MIN_TIME:I = 0x3e8

.field private static final MEDIA_STATE_COMPLETED:I = 0x1

.field private static final MEDIA_STATE_PREPARED:I = 0x0

.field private static final NEXT_MEDIA_STATE_STARTED:I = 0x2

.field private static final NORMAL_PLAYBACK_SPEED:F = 1.0f

.field private static final REQUEST_STATE_NONE:I = 0x0

.field private static final REQUEST_STATE_RESUME:I = 0x2

.field private static final REQUEST_STATE_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceManager"

.field private static final TOAST_ACCEPT_CALL:I = 0x2

.field private static final TOAST_SAVED:I = 0x1

.field private static final VOICE_MAX_DURATION:I = 0x1499700

.field private static final VOICE_MAX_FILE_SIZE:I = 0x1f400000

.field private static final VOICE_PATH:Ljava/lang/String; = "/Voice"

.field private static mBluetoothScoReceiver:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver; = null

.field private static mBluetoothScoStateListener:Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mCurrentIndex:I = 0x0

.field private static mIsAddStateListener:Z = false

.field private static mIsPausedBeforeSeek:Z = false

.field private static mMediaPlayer:Landroid/media/MediaPlayer; = null

.field private static mMediaState:I = 0x0

.field private static mNextMediaPlayer:Landroid/media/MediaPlayer; = null

.field private static mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener; = null

.field private static mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener; = null

.field private static mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener; = null

.field private static mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener; = null

.field private static mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener; = null

.field private static mPath:Ljava/io/File; = null

.field private static mRecordTotalTime:I = 0x0

.field private static mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper; = null

.field private static mSeekTime:I = -0x1

.field private static mSpeed:F = 1.0f

.field private static mSpenObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

.field private static final mSync:Ljava/lang/Object;

.field private static mTempMediaPlayer:Landroid/media/MediaPlayer;

.field private static mToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

.field private static mVoiceDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;"
        }
    .end annotation
.end field

.field private static mVoiceListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

.field private static recorderListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager$3;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$3;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->recorderListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager$4;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$4;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mBluetoothScoStateListener:Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager$5;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$5;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager$6;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$6;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager$7;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$7;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager$8;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$8;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager$9;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$9;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager$10;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$10;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Native_VoiceManager_GetObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;
.end method

.method private static native Native_VoiceManager_GetStartBluetoothSCOState()I
.end method

.method private static native Native_VoiceManager_GetVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
.end method

.method private static native Native_VoiceManager_Info(I)V
.end method

.method private static native Native_VoiceManager_IsPlaying()Z
.end method

.method private static native Native_VoiceManager_IsPlayingPaused()Z
.end method

.method private static native Native_VoiceManager_IsRecording()Z
.end method

.method private static native Native_VoiceManager_IsRecordingPaused()Z
.end method

.method private static native Native_VoiceManager_Play(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z
.end method

.method private static native Native_VoiceManager_Play_onComplete()V
.end method

.method private static native Native_VoiceManager_Play_onError(I)V
.end method

.method private static native Native_VoiceManager_Play_onPaused(Z)V
.end method

.method private static native Native_VoiceManager_Play_onPrepared(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Z)V
.end method

.method private static native Native_VoiceManager_Play_onResumed()V
.end method

.method private static native Native_VoiceManager_Play_onSeekComplete(I)V
.end method

.method private static native Native_VoiceManager_Play_onStarted(Z)V
.end method

.method private static native Native_VoiceManager_Play_onStopped(Z)V
.end method

.method private static native Native_VoiceManager_Record_onCancelled()V
.end method

.method private static native Native_VoiceManager_Record_onError(I)V
.end method

.method private static native Native_VoiceManager_Record_onPaused()V
.end method

.method private static native Native_VoiceManager_Record_onResumed()V
.end method

.method private static native Native_VoiceManager_Record_onStarted()V
.end method

.method private static native Native_VoiceManager_Record_onStopped()V
.end method

.method private static native Native_VoiceManager_Record_onUpdateTime(I)V
.end method

.method private static native Native_VoiceManager_RequestMediaStartRecording()Z
.end method

.method private static native Native_VoiceManager_RequestSetRecordingViaBluetooth(Z)V
.end method

.method private static native Native_VoiceManager_SetStateListener()V
.end method

.method private static native Native_VoiceManager_SetStoragePath(Ljava/lang/String;)V
.end method

.method private static native Native_VoiceManager_StartRecording(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z
.end method

.method public static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$100(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Info(I)V

    return-void
.end method

.method public static synthetic access$1000()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_RequestMediaStartRecording()Z

    move-result v0

    return v0
.end method

.method public static synthetic access$1100(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_RequestSetRecordingViaBluetooth(Z)V

    return-void
.end method

.method public static synthetic access$1200()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static synthetic access$1300()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpenObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    return-object v0
.end method

.method public static synthetic access$1302(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpenObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    return-object p0
.end method

.method public static synthetic access$1400()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->clearVoiceList()V

    return-void
.end method

.method public static synthetic access$1500(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onPrepared(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Z)V

    return-void
.end method

.method public static synthetic access$1600(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onStarted(Z)V

    return-void
.end method

.method public static synthetic access$1700()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic access$1800()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getCurrentVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$1900()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSeekTime:I

    return v0
.end method

.method public static synthetic access$1902(I)I
    .locals 0

    sput p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSeekTime:I

    return p0
.end method

.method public static synthetic access$200(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Record_onError(I)V

    return-void
.end method

.method public static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsPausedBeforeSeek:Z

    return v0
.end method

.method public static synthetic access$2002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsPausedBeforeSeek:Z

    return p0
.end method

.method public static synthetic access$2100(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->pauseMediaPlayer(Z)V

    return-void
.end method

.method public static synthetic access$2200()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    return v0
.end method

.method public static synthetic access$2300(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getNextVoiceData(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setNextPlayer(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    return-void
.end method

.method public static synthetic access$2500()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static synthetic access$2502(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$2600()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaState:I

    return v0
.end method

.method public static synthetic access$2602(I)I
    .locals 0

    sput p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaState:I

    return p0
.end method

.method public static synthetic access$2700()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->handleOnCompleted()V

    return-void
.end method

.method public static synthetic access$2800()F
    .locals 1

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpeed:F

    return v0
.end method

.method public static synthetic access$2900(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onSeekComplete(I)V

    return-void
.end method

.method public static synthetic access$3000()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onComplete()V

    return-void
.end method

.method public static synthetic access$302(I)I
    .locals 0

    sput p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecordTotalTime:I

    return p0
.end method

.method public static synthetic access$3100()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releasePlayers()V

    return-void
.end method

.method public static synthetic access$3200(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onError(I)V

    return-void
.end method

.method public static synthetic access$3300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic access$400(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Record_onUpdateTime(I)V

    return-void
.end method

.method public static synthetic access$500()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Record_onStarted()V

    return-void
.end method

.method public static synthetic access$600()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Record_onStopped()V

    return-void
.end method

.method public static synthetic access$700()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Record_onPaused()V

    return-void
.end method

.method public static synthetic access$800()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Record_onResumed()V

    return-void
.end method

.method public static synthetic access$900()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_GetStartBluetoothSCOState()I

    move-result v0

    return v0
.end method

.method public static addInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->addInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static cancelRecording()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->cancel()Z

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Record_onCancelled()V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static changeTimeToText(I)Ljava/lang/String;
    .locals 5

    rem-int/lit8 v0, p0, 0x3c

    div-int/lit8 p0, p0, 0x3c

    rem-int/lit8 v1, p0, 0x3c

    div-int/lit8 p0, p0, 0x3c

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ge p0, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p0, 0x3a

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static clearVoiceList()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearVoiceList() voice list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private static emptyDirectory()V
    .locals 6

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mPath:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static forceCancelRecording()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->cancel()Z

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Record_onCancelled()V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getCurrentVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-string v2, "VoiceManager"

    if-nez v0, :cond_0

    const-string v0, "getCurrentVoiceData() list is null"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    sget v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    sget v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    return-object v0

    :cond_2
    :goto_1
    const-string v0, "getCurrentVoiceData() index is invalid"

    goto :goto_0
.end method

.method public static getMaxAmplitude()I
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->getMaxAmplitude()I

    move-result v1
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getNextVoiceData(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-string v2, "VoiceManager"

    if-nez v0, :cond_0

    const-string p0, "getNextVoiceData() list is null"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    if-ltz p0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    return-object p0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextVoiceData() index is invalid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_GetObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayProgress()I
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPlayTime(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    :cond_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    return v3

    :catch_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v0

    return v1

    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method private static getPlayingTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;J)I
    .locals 12

    const/4 v0, -0x1

    const-string v1, "VoiceManager"

    if-nez p0, :cond_0

    const-string p0, "getPlayingTime() voiceData is null"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getVoicePropertyList()Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getPlayingTime() property list is null"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-wide/16 v8, 0x3e8

    if-ge v0, v7, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    const/4 v11, 0x3

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    cmp-long v10, v5, v1

    if-eqz v10, :cond_4

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->getTimeStamp()J

    move-result-wide v7

    sub-long/2addr v7, v5

    sub-long/2addr v3, v7

    move-wide v5, v1

    goto :goto_2

    :cond_4
    div-long/2addr v3, v8

    long-to-int p0, v3

    return p0

    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->getTimeStamp()J

    move-result-wide v8

    cmp-long v8, p1, v8

    if-ltz v8, :cond_7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->getTimeStamp()J

    move-result-wide v5

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->getTimeStamp()J

    move-result-wide v3

    sub-long v3, p1, v3

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getRecordProgress()I
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecordTotalTime:I

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSpeed()F
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    sget v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpeed:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_GetVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v0

    return-object v0
.end method

.method private static handleOnCompleted()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnCompleted() index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onComplete()V

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releaseMediaPlayer()V

    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mTempMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnCompleted() current player: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", next player: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", temp player: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mTempMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    if-ltz v0, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method private static initMediaPlayer(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMediaPlayer() current player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->resetMediaPlayer()V

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpeed:F

    invoke-virtual {p0, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    const-string p0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMediaPlayer() new player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initMediaPlayer exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static initNextMediaPlayer(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNextMediaPlayer() current player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", temp player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mTempMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sput-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mTempMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mTempMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sput-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mTempMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->resetNextMediaPlayer()V

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    sget v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpeed:F

    invoke-virtual {p0, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    const-string p0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNextMediaPlayer() new player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initNextMediaPlayer exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static initPlayer(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsAddStateListener:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_SetStateListener()V

    sput-boolean v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsAddStateListener:Z

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->initMediaPlayer(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releasePlayers()V

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static initRecorder()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsAddStateListener:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_SetStateListener()V

    sput-boolean v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsAddStateListener:Z

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v2
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->reset()V

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->release()V

    sput-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;
    :try_end_1
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sput-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setRecorderListener()V
    :try_end_2
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    :try_start_3
    const-string v2, "VoiceManager"

    const-string v3, "Use AndroidMediaRecorder"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->create(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setRecorderListener()V
    :try_end_4
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    monitor-exit v0

    return v1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public static insertVoiceData(ILcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "VoiceManager"

    const-string p1, "insertVoiceData() voiceData is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    const-string p0, "VoiceManager"

    const-string p1, "insertVoiceData() list is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_1
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertVoiceData() index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", voiceData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p0, :cond_6

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "VoiceManager"

    const-string p1, "insertVoiceData() voice is not actived"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    const/4 v2, 0x1

    if-gt p0, v1, :cond_4

    add-int/2addr v1, v2

    sput v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    goto :goto_0

    :cond_4
    add-int/2addr v1, v2

    if-ne p0, v1, :cond_5

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setNextPlayer(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_5
    :goto_0
    monitor-exit v0

    return v2

    :cond_6
    :goto_1
    const-string p1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertVoiceData() index is invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isAddingValidated(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getPlayTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getPlayTime(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3

    return v0

    :cond_3
    div-int/2addr v1, v2

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->changeTimeToText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setPlayTime(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static isPlaying()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_IsPlaying()Z

    move-result v0

    return v0
.end method

.method public static isPlayingActivated()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_IsPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_IsPlayingPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPlayingPaused()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_IsPlayingPaused()Z

    move-result v0

    return v0
.end method

.method public static isRecorderWorking()Z
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isSoundDetectorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "voice"

    const-string v2, "isSoundDetectorEnabled false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->initRecorder()Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->isRecorderWorking()Z

    move-result v1

    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecorderWorking :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecorderWorking error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static isRecording()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_IsRecording()Z

    move-result v0

    return v0
.end method

.method public static isRecordingActivated()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_IsRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_IsRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isRecordingPaused()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_IsRecordingPaused()Z

    move-result v0

    return v0
.end method

.method private static isSoundDetectorEnabled()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sound_detector"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "doorbell_detector"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static onAudioDevicesConnected(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioDevicesConnected isWiredHeadsetDevice= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    if-eqz p0, :cond_0

    const/16 p0, 0x2712

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->toastVoiceMessage(I)V

    :cond_0
    return-void
.end method

.method public static onAudioDevicesDisconnected(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioDevicesDisconnected isWiredHeadsetDevice= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->pausePlaying()V

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_RequestSetRecordingViaBluetooth(Z)V

    :cond_2
    return-void
.end method

.method private static pauseMediaPlayer(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onPaused(Z)V

    const/4 p0, -0x1

    sput p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSeekTime:I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static pausePlaying()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->pauseMediaPlayer(Z)V

    return-void
.end method

.method public static pauseRecording()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->recorderListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static play(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopMediaPlayer(ZZZ)V

    :cond_1
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->initPlayer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init successful filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 p0, 0x138c

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onError(I)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static play(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v1, v1, v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopMediaPlayer(ZZZ)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->clearVoiceList()V

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpenObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static playVoiceList(Ljava/util/ArrayList;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "VoiceManager"

    const-string p1, "playVoiceList() list is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVoiceList() index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v0, v0, v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopMediaPlayer(ZZZ)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->clearVoiceList()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpenObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    sput p1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    const/4 p0, -0x1

    sput p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSeekTime:I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getCurrentVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static declared-synchronized registerBluetoothScoReceiver()V
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "VoiceManager"

    const-string v2, "registerBluetoothScoReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isRecordingViaBluetoothEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mBluetoothScoReceiver:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mBluetoothScoStateListener:Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;-><init>(Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mBluetoothScoReceiver:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mBluetoothScoReceiver:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static releaseMediaPlayer()V
    .locals 3

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaPlayer() current player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

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

.method private static releaseNextMediaPlayer()V
    .locals 3

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseNextMediaPlayer() next player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

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

.method private static releasePlayers()V
    .locals 2

    const-string v0, "VoiceManager"

    const-string v1, "releasePlayers() all player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releaseMediaPlayer()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releaseNextMediaPlayer()V

    return-void
.end method

.method public static removeInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->removeInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->removeStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeVoiceData(I)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "VoiceManager"

    const-string v1, "removeVoiceData() list is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    const-string v1, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeVoiceData() index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p0, :cond_a

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "VoiceManager"

    const-string v1, "removeVoiceData() voice is not actived"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_2
    sget v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    const/4 v3, 0x1

    if-ge p0, v1, :cond_3

    sub-int/2addr v1, v3

    sput v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    if-ne p0, v1, :cond_6

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p0, v1, :cond_4

    invoke-static {v2, v3, v3}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopMediaPlayer(ZZZ)V

    goto :goto_1

    :cond_4
    invoke-static {v2, v2, v3}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopMediaPlayer(ZZZ)V

    :cond_5
    :goto_1
    sget v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getNextVoiceData(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    goto :goto_2

    :cond_6
    add-int/2addr v1, v3

    if-ne p0, v1, :cond_9

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p0, v1, :cond_8

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    :cond_7
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releaseNextMediaPlayer()V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    add-int/2addr p0, v3

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getNextVoiceData(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setNextPlayer(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_9
    :goto_2
    monitor-exit v0

    return v3

    :cond_a
    :goto_3
    const-string v1, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeVoiceData() index is invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static requestSeekToByTimeStamp(J)V
    .locals 12

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSeekToByTimeStamp() timeStamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "VoiceManager"

    const-string p1, "requestSeekToByTimeStamp() timeStamp was negative"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const-string p0, "VoiceManager"

    const-string p1, "requestSeekToByTimeStamp() list is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    sget-object v5, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    sget-object v5, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getVoicePropertyList()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    move v7, v3

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    const/4 v10, 0x4

    if-eq v9, v10, :cond_5

    move-wide v8, v0

    move-wide v10, v8

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->getTimeStamp()J

    move-result-wide v8

    move-wide v10, v8

    move-wide v8, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->getTimeStamp()J

    move-result-wide v8

    move-wide v10, v0

    :goto_2
    cmp-long v8, p0, v8

    if-ltz v8, :cond_8

    cmp-long v8, p0, v10

    if-gtz v8, :cond_8

    invoke-static {v5, p0, p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getPlayingTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;J)I

    move-result p0

    if-lez p0, :cond_7

    invoke-static {v4, p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->seekTo(II)V

    :cond_7
    monitor-exit v2

    return-void

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static resetMediaPlayer()V
    .locals 3

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMediaPlayer() current player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

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

.method private static resetNextMediaPlayer()V
    .locals 3

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetNextMediaPlayer() next player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

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

.method public static resumePlaying()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isCalling()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1393

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->toastVoiceMessage(I)V

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumePlaying() current player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v2

    sget v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpeed:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onResumed()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resumeRecording()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->recorderListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static seekTo(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static seekTo(II)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo() index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const-string p0, "VoiceManager"

    const-string p1, "seekTo() list is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    if-ltz p0, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p0, v1, :cond_1

    goto :goto_3

    :cond_1
    sget v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    if-ne p0, v1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->seekTo(I)V

    goto :goto_2

    :cond_2
    :goto_0
    sput p1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSeekTime:I

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingPaused()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsPausedBeforeSeek:Z

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne p0, v1, :cond_4

    invoke-static {v2, v3, v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopMediaPlayer(ZZZ)V

    goto :goto_1

    :cond_4
    invoke-static {v2, v3, v3}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopMediaPlayer(ZZZ)V

    :cond_5
    :goto_1
    sput p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mCurrentIndex:I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getCurrentVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    goto :goto_0

    :goto_2
    monitor-exit v0

    return-void

    :cond_6
    :goto_3
    const-string p1, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo() index is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->unregisterScoBluetoothReceiver()V

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->removeInnerStateListener()V

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->removeInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    :cond_0
    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->addInnerStateListener()V

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mVoiceListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->addInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Voice"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "VoiceManager"

    const-string v2, "VoiceManager - Failed to mkdirs"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_SetStoragePath(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_SetStoragePath(Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsAddStateListener:Z

    if-nez p0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_SetStateListener()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mIsAddStateListener:Z

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setNextPlayer(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNextPlayer() next player: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voiceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getAttachedFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->initNextMediaPlayer(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releaseNextMediaPlayer()V

    :cond_1
    return-void
.end method

.method private static setRecorderListener()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    new-instance v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager$1;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    new-instance v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager$2;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V

    return-void
.end method

.method public static setSpeed(F)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpeed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpeed:F

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpeed:F

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->setStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setToastActionListener(Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    return-void
.end method

.method public static startRecording(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startRecording voiceData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_StartRecording(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static startRecording(Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->initRecorder()Z

    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecordTotalTime:I

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/high16 v2, 0x1f400000

    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->getAvailableInternalMemorySize()J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long v5, v5, v3

    if-lez v5, :cond_0

    long-to-int v2, v3

    :cond_0
    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    sget-object v4, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->recorderListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    const v5, 0x1499700

    invoke-virtual {v3, p0, v4, v5, v2}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;II)Z

    move-result p0
    :try_end_1
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static stopMediaPlayer(ZZZ)V
    .locals 4

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMediaPlayer() isReleaseCurrentPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isReleaseNextPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMediaPlayer() current player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", next player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onStopped(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releaseMediaPlayer()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->releaseNextMediaPlayer()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static stopPlaying()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopMediaPlayer(ZZZ)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->clearVoiceList()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSpenObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSeekTime:I

    return-void
.end method

.method public static stopRecording()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mRecorder:Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->recorderListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static toastVoiceMessage(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_8

    const/4 v2, 0x2

    if-eq p0, v2, :cond_7

    const/16 v2, 0x1389

    if-eq p0, v2, :cond_6

    const/16 v2, 0x138a

    if-eq p0, v2, :cond_5

    const/16 v2, 0x1392

    if-eq p0, v2, :cond_4

    const/16 v2, 0x1393

    if-eq p0, v2, :cond_3

    const/16 v2, 0x1396

    if-eq p0, v2, :cond_2

    const/16 v2, 0x2711

    if-eq p0, v2, :cond_1

    const/16 v2, 0x2712

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    move p0, v0

    goto :goto_0

    :pswitch_0
    sget p0, Lcom/samsung/android/spen/R$string;->voice_error_other_app_is_already_recording:I

    goto :goto_0

    :pswitch_1
    sget p0, Lcom/samsung/android/spen/R$string;->voice_unable_to_play_voice_recording_while_recording:I

    goto :goto_0

    :pswitch_2
    sget p0, Lcom/samsung/android/spen/R$string;->voice_unsupported_file:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/samsung/android/spen/R$string;->voice_warning_earphone_plugged_while_recording:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/samsung/android/spen/R$string;->voice_warning_earphone_plugged:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/samsung/android/spen/R$string;->voice_unsupported_file_type:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/samsung/android/spen/R$string;->voice_unable_to_play_during_call:I

    goto :goto_0

    :cond_4
    sget p0, Lcom/samsung/android/spen/R$string;->voice_warning_call_isactive:I

    goto :goto_0

    :cond_5
    sget p0, Lcom/samsung/android/spen/R$string;->voice_error_prepare_failed:I

    goto :goto_0

    :cond_6
    sget p0, Lcom/samsung/android/spen/R$string;->voice_error_not_enough_time:I

    goto :goto_0

    :cond_7
    sget p0, Lcom/samsung/android/spen/R$string;->voice_recording_will_be_saved_automatically_when_you_accept_the_call:I

    goto :goto_0

    :cond_8
    sget p0, Lcom/samsung/android/spen/R$string;->voice_record_saved:I

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_b

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;->show(Ljava/lang/CharSequence;I)V

    goto :goto_2

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v0, v2, :cond_a

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/samsung/android/spen/R$layout;->composer_toast_popup:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/samsung/android/spen/R$id;->toast_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Landroid/widget/Toast;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x138d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized unregisterScoBluetoothReceiver()V
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "VoiceManager"

    const-string/jumbo v2, "unregisterScoBluetoothReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isRecordingViaBluetoothEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mBluetoothScoReceiver:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->close()V

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mBluetoothScoReceiver:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mBluetoothScoReceiver:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static updatePlayProgress()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->Native_VoiceManager_Play_onSeekComplete(I)V

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
