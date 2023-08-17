.class final Lcom/samsung/android/sdk/composer/voice/VoiceManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1200()Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_7

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1200()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    const-string v1, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepared() duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", object voice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1300()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopPlaying()V

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1300()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1400()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1300()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v1

    invoke-static {p1, v1, v3, v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1500(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Z)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1200()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1600(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1700()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1800()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v1

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    const-string v4, "VoiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepared() seekTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1900()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1900()I

    move-result v4

    if-ltz v4, :cond_4

    const/4 v4, 0x1

    invoke-static {p1, v3, v1, v4}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1500(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Z)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v3, v1, v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1500(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Z)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1200()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1600(Z)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1900()I

    move-result p1

    if-ltz p1, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1900()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->seekTo(I)V

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1902(I)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2000()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2100(Z)V

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2002(Z)Z

    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2200()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2300(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "VoiceManager"

    const-string v1, "onPrepared() next voice is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_6
    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2400(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2500()Landroid/media/MediaPlayer;

    move-result-object v1

    if-ne p1, v1, :cond_8

    const-string p1, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared() current: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1200()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", next: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2500()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1200()Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1200()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2500()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eq p1, v1, :cond_8

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1200()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2500()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    :cond_8
    :goto_1
    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$2602(I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
