.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;


# instance fields
.field private mMediaSession:Landroid/media/session/MediaSession;

.field private final mPlaybackBuilder:Landroid/media/session/PlaybackState$Builder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EarphoneButtonManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v1, 0x6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mPlaybackBuilder:Landroid/media/session/PlaybackState$Builder;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isValidMediaButtonEvent()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public releaseMediaSession()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaSession"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateMediaSession(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;Landroid/media/session/MediaSession$Callback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->releaseMediaSession()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->TAG:Ljava/lang/String;

    const-string p2, "updateMediaSession fail"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateMediaSession. viewState: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->getState()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p3, Landroid/media/session/MediaSession;

    invoke-direct {p3, p1, p2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->setFlagsToMediaSession(Landroid/media/session/MediaSession;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mPlaybackBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {p3}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1, p4}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateMediaSession. "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
