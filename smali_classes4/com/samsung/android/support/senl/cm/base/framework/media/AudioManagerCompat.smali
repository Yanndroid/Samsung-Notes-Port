.class public Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$HapticSoundManagerImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$ShutterSoundManagerImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioManagerCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;
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
.method public createHapticDetachSound(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$HapticSoundManagerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;->createHapticSoundManagerImpl(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$HapticSoundManagerImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;)V

    return-object v0
.end method

.method public createShutterSound(Landroid/content/Context;I)Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$ShutterSoundManagerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;->createShutterSoundManagerImpl(ILandroid/content/Context;I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$ShutterSoundManagerImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;)V

    return-object v0
.end method

.method public isRecordActive(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;->isRecordActive(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public setFlagsToMediaSession(Landroid/media/session/MediaSession;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;->setFlagsToMediaSession(Landroid/media/session/MediaSession;)V

    return-void
.end method
