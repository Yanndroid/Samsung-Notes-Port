.class public Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutterSoundManager"


# instance fields
.field private mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    return-void
.end method

.method private setMuteShutter()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->getInstance()Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->isPluggedHeadSet()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->getInstance()Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->enableSystemSound(IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMuteShutter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShutterSoundManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public loadShutterSound()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/docscan/R$raw;->shutter:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->createShutterSound(Landroid/content/Context;I)Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    :cond_0
    return-void
.end method

.method public playShutterSound()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->setMuteShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShutterSoundManager"

    const-string v1, "playShutterSound : muted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->play()Z

    :cond_1
    return-void
.end method

.method public releaseShutterSound()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/ShutterSoundManager;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    :cond_0
    return-void
.end method
