.class final Lcom/samsung/android/sdk/composer/voice/VoiceManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo()what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mediaPlayer: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", next player: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2500()Landroid/media/MediaPlayer;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", state: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2600()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$000()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2500()Landroid/media/MediaPlayer;

    move-result-object v1

    if-ne p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2600()I

    move-result p2

    if-eq p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2700()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2800()F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1800()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, p2, v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1500(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Z)V

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1600(Z)V

    const-string p1, "VoiceManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo() current index: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2200()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2200()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2300(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2400(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2502(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2602(I)I

    :cond_2
    monitor-exit p3

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
