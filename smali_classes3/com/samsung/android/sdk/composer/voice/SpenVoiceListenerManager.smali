.class public Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;,
        Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;
    }
.end annotation


# static fields
.field public static final ERROR_ALREADY_RECORDER_WORKING:I = 0x138f

.field public static final ERROR_ALREADY_RECORDING:I = 0x138e

.field private static final ERROR_CODE_BASE:I = 0x1388

.field public static final ERROR_FAILED_TO_ATTACH_FILE:I = 0x1395

.field public static final ERROR_FILE_READ_PLAY_TIME:I = 0x138d

.field public static final ERROR_INITIALIZE_PLAYER:I = 0x138c

.field public static final ERROR_IS_CALLING_PLAY:I = 0x1393

.field public static final ERROR_IS_CALLING_RECORD:I = 0x1392

.field public static final ERROR_MEDIA_PLAYER:I = 0x1397

.field public static final ERROR_NOT_ENOUGH_STORAGE:I = 0x1390

.field public static final ERROR_NOT_ENOUGH_TIME:I = 0x1389

.field public static final ERROR_NO_PLAY_FILE:I = 0x1394

.field public static final ERROR_PAUSE_FAILED:I = 0x138b

.field public static final ERROR_PREPARE_RECORDER:I = 0x138a

.field public static final ERROR_SECURITY_POLICY:I = 0x1391

.field public static final ERROR_UNSUPPORTED_FILE_TYPE:I = 0x1396

.field private static final INFO_CODE_BASE:I = 0x2710

.field public static final INFO_EARPHONE_PLUGGED:I = 0x2711

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field private static final TAG:Ljava/lang/String; = "VoiceListenerManager"

.field public static final WARNING_EARPHONE_PLUGGED_WHILE_RECORDING:I = 0x2712

.field private static mFixedListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;",
            ">;"
        }
    .end annotation
.end field

.field private static mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;",
            ">;"
        }
    .end annotation
.end field

.field private static mSync:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "VoiceListenerManager"

    const-string v0, "[addStateListener] got empty observer"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method private static onInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlayClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    goto :goto_0

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

.method private static onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    if-eqz p0, :cond_3

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayComplete(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    if-eqz p0, :cond_3

    invoke-interface {v2, p0, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    if-eqz p0, :cond_3

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    if-eqz p0, :cond_3

    invoke-interface {v2, p0, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayPrepared(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    if-eqz p0, :cond_3

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    const-string v3, "VoiceListenerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Play_onSeekComplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    invoke-interface {v2, p0, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlaySeekComplete(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    if-eqz p0, :cond_3

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    if-eqz p0, :cond_3

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onPlayStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onRecordCancelled(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onRecordCancelled(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onRecordCancelled(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onRecordPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onRecordPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onRecordPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onRecordResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onRecordResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onRecordResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onRecordStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onRecordStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onRecordStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onRecordStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onRecordStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onRecordStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onRecordUpdateTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;->onRecordUpdateTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;->onRecordUpdateTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    monitor-exit v0

    return-void

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

.method public static removeStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;->mFixedListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
