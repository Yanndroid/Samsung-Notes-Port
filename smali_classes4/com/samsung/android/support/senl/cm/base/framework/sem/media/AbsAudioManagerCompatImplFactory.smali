.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$HapticSoundPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ShutterSoundPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$AudioManagerCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioManagerCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$IAudioManagerCompatImpl;
    .locals 1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$AudioManagerCompatPureImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$AudioManagerCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/a;)V

    return-object p1
.end method

.method public createHapticSoundManagerImpl(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$HapticSoundPureImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$HapticSoundPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/b;)V

    return-object p1
.end method

.method public createShutterSoundManagerImpl(ILandroid/content/Context;I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ShutterSoundPureImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ShutterSoundPureImpl;-><init>()V

    return-object p1
.end method
