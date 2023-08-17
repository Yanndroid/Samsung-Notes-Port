.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemSOsImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$AudioManagerCompatSemImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioManagerCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$AudioManagerCompatSemImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$AudioManagerCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/d;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;

    move-result-object p1

    return-object p1
.end method

.method public createHapticSoundManagerImpl(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemSOsImpl;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemSOsImpl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$HapticSoundSemImpl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory;->createHapticSoundManagerImpl(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;

    move-result-object p1

    return-object p1
.end method

.method public createShutterSoundManagerImpl(ILandroid/content/Context;I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AudioManagerCompatImplFactory$ShutterSoundSemImpl;-><init>(Landroid/content/Context;I)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory;->createShutterSoundManagerImpl(ILandroid/content/Context;I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;

    move-result-object p1

    return-object p1
.end method
