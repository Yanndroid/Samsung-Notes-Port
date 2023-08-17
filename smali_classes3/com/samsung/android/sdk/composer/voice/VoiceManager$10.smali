.class final Lcom/samsung/android/sdk/composer/voice/VoiceManager$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/voice/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 0

    return-void
.end method

.method public onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->releaseMediaSession()V

    return-void
.end method

.method public onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->releaseMediaSession()V

    return-void
.end method

.method public onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3300()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->createMediaSession(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3300()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->createMediaSession(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3300()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->createMediaSession(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3300()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->createMediaSession(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3300()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->createMediaSession(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->releaseMediaSession()V

    return-void
.end method

.method public onRecordCancelled(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->releaseMediaSession()V

    return-void
.end method

.method public onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->releaseMediaSession()V

    return-void
.end method

.method public onRecordPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3300()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->createMediaSession(Landroid/content/Context;Z)V

    return-void
.end method

.method public onRecordResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3300()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->createMediaSession(Landroid/content/Context;Z)V

    return-void
.end method

.method public onRecordStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3300()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->createMediaSession(Landroid/content/Context;Z)V

    return-void
.end method

.method public onRecordStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->getInstance()Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->releaseMediaSession()V

    return-void
.end method

.method public onRecordUpdateTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    return-void
.end method
