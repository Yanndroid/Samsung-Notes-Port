.class Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$MediaSessionCallback;-><init>(Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;)V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaButtonEvent - action : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " key code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Voice_MediaKeyEventManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x55

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "onMediaButtonEvent] KeyEvent.ACTION_DOWN start "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "onMediaButtonEvent] KeyEvent.ACTION_DOWN] isRecording "

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "onMediaButtonEvent] KeyEvent.ACTION_DOWN] isRecordingPaused "

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "onMediaButtonEvent] KeyEvent.ACTION_DOWN] isPlaying "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->pausePlaying()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingPaused()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "onMediaButtonEvent] KeyEvent.ACTION_DOWN] isPaused "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->resumePlaying()V

    :cond_7
    :goto_1
    const-string v0, "onMediaButtonEvent] KeyEvent.ACTION_DOWN end "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
