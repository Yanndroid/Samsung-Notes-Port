.class Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;
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
    name = "HapticSoundSemImpl"
.end annotation


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mSoundPool:Landroid/media/SoundPool;

.field public mSoundResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/samsung/android/support/senl/cm/base/R$raw;->detach:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundResId:I

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public play()Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v6, v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundResId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v5, v6

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HapticSoundSemImpl#playHapticSound: NoSuchMethodError] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioManagerCompatImpl"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundResId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundResId:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method
