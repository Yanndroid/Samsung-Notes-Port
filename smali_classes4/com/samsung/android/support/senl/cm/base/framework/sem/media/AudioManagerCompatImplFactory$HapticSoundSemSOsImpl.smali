.class Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemSOsImpl;
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
    name = "HapticSoundSemSOsImpl"
.end annotation


# static fields
.field private static final FLAG_SEC_SOUND_EFFECT_BASE:I = 0x63

.field private static final SEM_SOUND_DRAG_AND_DROP:I = 0x6a


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemSOsImpl;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public play()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemSOsImpl;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HapticSoundSemSOsImpl#playHapticSound: NoSuchMethodError] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManagerCompatImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemSOsImpl;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method
