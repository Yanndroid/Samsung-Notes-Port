.class Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShutterSoundSemImpl"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mShutterSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->isForcedShutterSoundSupported(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    :goto_0
    const-string v1, "CAMERA"

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mShutterSoundId:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShutterSoundSemImpl: NoSuchMethodError] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AudioManagerCompatImpl"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    return-void
.end method

.method private isForcedShutterSoundSupported(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isUserOwner()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isKoreaModel()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public play()Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mShutterSoundId:I

    const-string v3, "stv_shutter"

    invoke-virtual {v0, v2, v3}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v6

    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mShutterSoundId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v5, v6

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playShutterSound: NoSuchMethodError] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioManagerCompatImpl"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mShutterSoundId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mShutterSoundId:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method
