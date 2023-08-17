.class public Lcom/samsung/android/sdk/composer/SpenComposerSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/video/VideoManager;->initialize()V

    const-string p0, "SPenComposer"

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/SpenComposerSdk;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method private static loadLibrary(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
