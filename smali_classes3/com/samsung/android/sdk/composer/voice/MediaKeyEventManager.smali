.class public Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Voice_MediaKeyEventManager"

.field private static mInstance:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextHashCode:I

.field public mListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;-><init>(Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mInstance:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mInstance:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mInstance:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    return-object v0
.end method

.method private initMediaSession()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingPaused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    :goto_2
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method


# virtual methods
.method public addInnerStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->addInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V

    return-void
.end method

.method public createMediaSession(Landroid/content/Context;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mContextHashCode:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->releaseMediaSession()V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mContextHashCode:I

    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "Voice_MediaKeyEventManager"

    invoke-direct {v0, p1, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    new-instance p1, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;-><init>(Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;)V

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    new-instance p1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    if-eqz p2, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setFlags(I)V

    goto :goto_2

    :cond_3
    new-instance p1, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    const v4, 0xbb80

    const/16 v5, 0xc

    const/4 v6, 0x2

    const p2, 0xbb80

    const/16 v0, 0xc

    const/4 v2, 0x2

    invoke-static {p2, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    const/4 v8, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaSession exp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    throw p2

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->initMediaSession()V

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public releaseMediaSession()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mContextHashCode:I

    return-void
.end method

.method public removeInnerStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->removeInnerStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;)V

    return-void
.end method

.method public triggerMediaSessionCallback(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;-><init>(Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    return-void
.end method

.method public updateMediaSessionState(IJF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    const-string/jumbo p2, "updateMediaSessionState - state : "

    const-string p3, "Voice_MediaKeyEventManager"

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p4, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " setActive false"

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " setActive true"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$2;

    invoke-direct {p1, p0, v0, v0, v0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$2;-><init>(Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;III)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    goto :goto_2

    :cond_2
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1, p4}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {p2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_3
    return-void
.end method
