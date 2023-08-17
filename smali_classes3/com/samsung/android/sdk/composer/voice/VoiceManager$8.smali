.class final Lcom/samsung/android/sdk/composer/voice/VoiceManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletion() position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1300()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1400()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3000()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3100()V

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1302(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1700()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCompletion() current index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2200()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mediaPlayer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "mState: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2600()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2200()I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1700()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3000()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3100()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1400()V

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1302(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2600()I

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2700()V

    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2602(I)I

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
