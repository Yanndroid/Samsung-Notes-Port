.class final Lcom/samsung/android/sdk/composer/voice/VoiceManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;


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
.method public onScoAudioConnected()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$900()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScoAudioConnected requestState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onScoAudioConnected START recording"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1000()Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->resumeRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScoAudioConnecting()V
    .locals 0

    return-void
.end method

.method public onScoAudioDisconnected()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$900()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScoAudioDisconnected requestState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onScoAudioDisconnected START recording"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1000()Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->resumeRecording()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->pauseRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScoAudioError()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$900()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScoAudioError requestState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1000()Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->resumeRecording()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->pauseRecording()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1100(Z)V

    return-void
.end method
